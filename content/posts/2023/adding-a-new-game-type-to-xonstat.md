---
author: Antibody
comments: false
date: 2023-04-09 12:00:00+00:00
title: Adding a New Game Type to XonStat
---

<!-- https://gohugo.io/content-management/summaries/ -->
After much discussion, testing, and bugfixing the [mayhem and team mayhem][Mayhem MR] modes authored by [Dr. Jaska][Dr Jaska] are now merged into Xonotic's master branch. These new modes are billed as being like clan arena but without rounds. You spawn with all weapons and there is no self-damage, but both the frags you make and the damage you deal contribute to your final score. When you die, you respawn with a fixed delay rather than one dependent on the state of your team (when in team mode).
<!--more-->

XonStat was built with safeguards in place to ensure correct parsing and storage of most (but not all) default game modes. What changes are needed to modify the code to accept these new mayhem variants? Let's find out!

First, let's examine a sample stats payload of each type. To do that we'll start by running a local server, telling it to record a stats payload to a file on the filesystem. We'll need a somewhat-recent copy of the game that contains the enhancements. A current autobuild or an updated build from git will do.

Start up the game and open up the "create server" panel. We should see team mayhem and mayhem present in the list on the left.

<a href="/m/uploads/2023/create_server_mayhem_selection.webp">
  <img src="/m/uploads/2023/create_server_mayhem_selection.webp" title="Creating a Mayhem game locally" class="th m10">
</a>

Via the console, set the game report URI CVAR to the name of the text file into which you'd like the match results stored:

```
g_playerstats_gamereport_uri mayhem.txt
```

Play a game, fire a few weapons, and score a frag or two before ending the match with `endmatch` in the console. The goal here isn't necessarily to get representative game play, but rather a representative *stats payload* to look at. We want to ensure that all the proper field handling is present before opening up the flood gate to accepting submissions on the production application servers.

The payload will be in the file we named above, located where you've configured Xonotic to store its save data. Opening up that file we'll see the POST body of what would have been sent to the stats server. It's line oriented and starts with something like this:

```
V 9
R xonotic-v0.8.5-574-g98d732b4a
G mayhem
O Xonotic
M silentsiege
I 0.1679233841.888174
S a's Xonotic Server
C 0
U 26000
D 61.366707
```

The game type codes appear as `mayhem` and `tmayhem` in the payload, which is the first thing we'll need to change in the stats codebase. At the very beginning of the submission parsing process there's an allow-list of supported game modes. This is designed to be done simply and as early in the process as possible, to avoid consuming resources (CPU, queries to the DB) for payloads that we know won't be used in the end. Let's adjust the function that does that to allow for these two new modes:

```
// IsSupportedGameType determines if XonStat supports the given game type
func IsSupportedGameType(gameTypeCd string) bool {
	switch gameTypeCd {
	case "as", "ca", "ctf", "cts", "dm", "dom", "duel", "ft", "freezetag", "ka":
		return true
	case "keepaway", "kh", "nb", "nexball", "rune", "tdm", "mayhem", "tmayhem":
		return true
	default:
		return false
	}
}
```

Note that there's some old game mode aliases in here too! Backwards compatibility is important, so stats needs to accept payloads even if the servers are running old versions with different values.

Now that we've allowed the new game types through the front door, the next sanity check is to send sample submissions through a running server to see if they make it into the database with all attributes intact. For that we'll need a running instance of [XonStatDB][XonStatDB] and of course [XonStat][XonStat] itself, the setup of which we'll leave out of the scope of this post. Since we're just messing around locally, we need to disable some other safeguards in the configuration:

```
# In ~/.xonstat.toml
VerifyRequests = false
MinimumRequiredPlayers = 1
```

With these settings in place and the application listening, we can then use the `submit` subcommand of XonStat to submit the contents of the text files we collected earlier as if they were normal POST payloads:

```
$ xonstat submit -v -u http://localhost:6543/stats/submit -f ./mayhem.txt  
Using config file: /home/ant/.xonstat.toml
./mayhem.txt: 200 OK

$ xonstat submit -v -u http://localhost:6543/stats/submit -f ./teammayhem.txt  
Using config file: /home/ant/.xonstat.toml
./teammayhem.txt: 200 OK
```

Success! We can now examine them in the database to see if all the bits and pieces landed in the right tables. The `games`, `player_game_stats`, `team_game_stats`, and `player_weapon_stats` entries are of particular importance. These constitute the core data structures used by much of the views in the application. Fortunately all the new data from the sample submissions have landed correctly into them.

Moving on, let's check that the two submissions show up on the main page. Somewhat surprisingly, they aren't there! What could be the reason?

Digging into [the query](https://gitlab.com/xonotic/xonstat-go/-/blob/master/pkg/models/recentgames.go#L11) used on the front page to display recent games, we see a join to the `cd_game_type` table that we haven't yet modified:

```
select g.game_id, g.game_type_cd, g.winner,
	g.create_dt, cdg.descr, s.server_id, s.name, m.map_id, m.name,
	pgs.player_id, pgs.nick
	from games g, servers s, maps m, player_game_stats pgs, cd_game_type cdg
	where g.server_id = s.server_id
	and g.map_id = m.map_id
	and g.game_type_cd = cdg.game_type_cd
	and g.game_id = pgs.game_id
	and pgs.scoreboardpos = (select min(scoreboardpos) from player_game_stats where game_id = g.game_id)
```

In this query there's a join to the `cd_game_type` table to look up the "user friendly" description of the given game types. This is how we can go from `ca` to `Clan Arena` without having to store the full text everywhere. This is where we're falling short: given that we've just added two new game types but haven't yet registered metadata about them here, there is nothing to match and thus the rows don't show up in the result. Let's go ahead and add them:

```
xonstatdb=# insert into cd_game_type values('mayhem', 'Mayhem', true);
INSERT 0 1
xonstatdb=# insert into cd_game_type values('tmayhem', 'Team Mayhem', true);
INSERT 0 1
```

Success! They now show up on the recent games list after a simple refresh (the only thing that changed is the database, so no recompilation needed). Unfortunately they don't have any icons. We'll have to deal with that next.

<a href="/m/uploads/2023/recent_games_missing_icon.webp">
  <img src="/m/uploads/2023/recent_games_missing_icon.webp" title="Mayhem icons missing!" class="th m10">
</a>

The icons for XonStat are delivered in the form of a web font generated via the [IcoMoon] App. The CSS classes that reference this font are of the form `sprite-<gametype>`, where each class indexes into a particular code point in the font. Since there's no class definition or SVG icon yet for these modes, we can't expect `sprite-mayhem` or `sprite-tmayhem` to resolve to anything. To fix that, we have a somewhat convoluted process:

1. Define the needed SVGs in the [mediasource](https://gitlab.com/xonotic/mediasource/-/tree/master/gfx/luma/gfx/menu/luma) repo suitable for ingestion to the IcoMoon application. Create these from the source TARGA files (rasterized) in Inkscape by loading the TARGA as a "background" of sorts and pixel-pushing around the other bits and pieces from the parts for which we have SVG sources.
2. Include the two new SVGs into the Luma font using IcoMoon, taking care to follow the existing naming conventions.
3. Add two new CSS classes for each codepoint. Since these are game types and not weapon icons, no color is needed.
4. Combine the CSS using the `css` Makefile target in the root of the XonStat repo.
5. Rename the CSS file with a hash suffix for cache-busting, changing the template reference for the same.
6. Hope for the best!

With these changes in place and the app restarted (template changes are compiled once on application startup, not hot-loaded) we can now see the icons. Nice!

<a href="/m/uploads/2023/recent_games_icon_present.webp">
  <img src="/m/uploads/2023/recent_games_icon_present.webp" title="Mayhem icons show up!" class="th m10">
</a>

How about the scoreboard or "game info" page view? This is the page that is shown when you click on the big blue "view" button next to recent game rows. These are hilariously lacking for the new mayhem modes because the scoreboard layout isn't known for the game types. This is handled in a big IF/THEN/ELSE part of the rendering code:

```
        {{if eq $.GameTypeCd "as"}}
            {{template "scoreboard-as.partial.html" (index $.PlayerGameStatsByTeam $teamID)}}
        {{else if eq $.GameTypeCd "ca"}}
            {{template "scoreboard-ca.partial.html"  (index $.PlayerGameStatsByTeam $teamID)}}
        {{else if eq $.GameTypeCd "ctf"}}
            {{template "scoreboard-ctf.partial.html" (index $.PlayerGameStatsByTeam $teamID)}}
        {{else if eq $.GameTypeCd "tdm"}}
            {{template "scoreboard-tdm.partial.html" (index $.PlayerGameStatsByTeam $teamID)}}
        {{end}}
```

Fortunately this is a quick and easy fix. The scoreboard templates for CA and DM work well enough as a suitable starting place for Team Mayhem and Mayhem, respectively. We maintain separate templates because even though they are the same now, they may diverge at some point in the future.

With these changes in place our support for the new mayhem modes is complete. We may now go out into the wide world of servers and play games of that mode, then later come back to stats to view how we did after the action has died down.



[Dr Jaska]: https://gitlab.com/drjaska
[IcoMoon]: https://icomoon.io
[Mayhem MR]: https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/884
[XonStat]: https://gitlab.com/xonotic/xonstat
[XonStatDB]: https://gitlab.com/xonotic/xonstatdb
