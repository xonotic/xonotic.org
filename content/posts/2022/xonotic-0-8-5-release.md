---
author: Xonotic Team
comments: false
date: 2022-07-01 13:37:42+00:00
slug: xonotic-0-8-5-release
title: Xonotic 0.8.5 Release
categories:
- Announcements
---

<!-- https://gohugo.io/content-management/summaries/ -->

Xonotic 0.8.5 is here at last!  There's been thousands of commits since 0.8.2 making this quite a long read for all the right reasons: refined gameplay, new and updated maps and models, new sound effects, more dangerous bots, new HUD and menu features, more translations, better infrastructure, too many fixes to count, and much more.  
[XonStat](#xonstat) and [NetRadiant](#netradiant) made great progress too.

<!--more-->

### [Download it here](/download)

---

### Gameplay

##### Balance
Vortex's push force has been reduced from 400 to 200 so players no longer fly to the other end of the map when hit by a Vortex shot.

Electro primary bolts are now capable of detonating secondary orbs in close proximity.  
This adds support for midair combos but is currently disabled by default.  
Previously, bolts could only trigger the combo by hitting the orbs' bounding boxes or an adjacent surface.

Crylink now has a _linkexplode_ property which makes all pellets explode at once when any of them hit a player.  
This makes damage more consistent because when only 1 pellet hits, the others may still deal splash damage.  
It also reduces visual clutter compared to having all the missed pellets bouncing around.

##### Duel
Duel is now a dedicated gametype, there is no longer a need for deathmatch with max playercount of 2.  
This allows duel-specific gameplay settings and cleaner handling by XonStat.

##### Freeze Tag
<p style="margin-bottom:0px">Clever tactics are rewarded with epic comebacks and laziness is punished with these changes:</p>

- Players are immune to damage for 1 second after being revived.  This spawn shield is lost if they fire.
- Manual revival progress now contributes to automatic revival progress. To compensate for the increased ease of reviving players, an extra point is no longer awarded for a revival (time spent reviving is still rewarded).
- Auto revival progress is no longer reset when a frozen player falls into the void.
- Auto revival progress starts as soon as the player gets frozen.
- Auto revival progress is displayed as a waypoint sprite health bar rather than a normal health bar, which was barely visible for red team players.
- Auto revival progress advances when frozen players are hit by enemies (the amount depends on the hit force).  
  Optionally this behaviour can be enabled for when frozen players are hit by teammates too.
- View jitter when floating on water while frozen is fixed.
- Players now spawn with 100 armor points instead of 0.

##### Gameplay miscellaneous
- Spectators are no longer forced to join in Last Man Standing.
- New "most_available" weapon arena setting only gives the weapons available as pickups on the map.  
  This allows weapon arena mutators and gametypes to only have the weapons the mapper intended the map to have.
- Items such as Strength and Shield now initially spawn at the same time.
- Dropping powerups on death is supported, off by default.
- Powerup code has been redesigned and Speed and Invisibility are now implemented as powerups instead of buffs.
- Rockets can no longer be fired such that they're stuck in a wall.
- Weapon & ammo hitboxes are taller so you don't jump straight over them without acquiring them.

---

### Bots

##### Behaviour
- Default bot skill increased from 1 to 8.
- Fixed underwater navigation.
- Fixed all kinds of issues when bots walk on flooded floors.
- Bots no longer get stuck in bad spots (without linked waypoints) or when blocked by other bots of the same team.
- Fixed bad behaviour in Freeze Tag and Clan Arena and improved behaviour in many game modes.
- Added ability to jump and crouch thanks to new dedicated waypoints.
- Improved ability to climb ladders and use jumppads.
- Improved ability to avoid danger while running and bunny hopping.
- Improved ability to chase enemies.
- Improved item rating.
- Fixed bad jetpack usage.
- Fixed bots ignoring teleporters and warpzones.

##### Waypoint editor
- Fixed creation of waypoints underwater.
- Added new waypoint types (jump, crouch, custom jumppad waypoint, support).
- Added ability to create waypoints at crosshair.
- Added ability to create waypoints for jumppads without automatically generated waypoints.
- Added ability to create support waypoints to replace incoming links of a problematic teleporter or jumppad.
- Made creating hardwired links easier.
- Automatic symmetrical waypoint creation for symmetrical Capture The Flag maps.
- Waypoint files are now versioned and timestamped.
- Added a waypoint editor menu with all the commands (can be bound to a key in the key binder).

##### Bots miscellaneous
- Improved performance.
- Added automatic balancing of bots between teams.
- Added `minplayers_per_team` cvar (active only in team modes) and made `minplayers` cvar only affect Free For All modes.  
  These cvars add or remove (when humans join) bots as necessary to achieve the configured minimum player count.
- Added bots and nobots votes to add/remove bots added through `minplayers` and `minplayers_per_team`.

---

### Artwork

##### Player model skins
<p style="margin-bottom:0px">All player models have improved visibility by default, and there's several fixes:</p>

- Balanced primary ('shirt') and secondary ('glow') colors in some models (especially in Erebus and derived models).
- Fixed burned glow color reducing the number of available colors from 15 to 9.  
  A side effect of this is that the glow color of the blue team is blue-cyan (original color) instead of cyan.  
  Other team colors are unchanged.
- Fixed primary and secondary colors being mixed up on some models.

<a href="/m/uploads/2022/06/player_models.webp"><img src="/m/uploads/2022/06/player_models_928w.webp" title="Player models" class="th"></a>

<details><summary>Click to see hidden (unavailable in the menu) player models</summary>

<a href="/m/uploads/2022/06/player_models_hidden.webp"><img src="/m/uploads/2022/06/player_models_hidden_928w.webp" title="Hidden player models" class="th"></a>
</details>
<br>

##### Maps
<p style="margin-bottom:0px">We have two new official maps:</p>

- [Bromine] by *packer*, a rusty styled map for large games!  
  <a href="/m/uploads/2022/06/bromine.jpg"><img src="/m/uploads/2022/06/bromine_t.jpg" title="Bromine by packer" class="th"></a>
- [Opium] by *cityy*, a medium sized level with plenty of vertical action!  
  <a href="/m/uploads/2022/06/opium.jpg"><img src="/m/uploads/2022/06/opium_t.jpg" title="Opium by cityy" class="th"></a>

<p style="margin-bottom:0px">Existing maps received various fixes and/or visual updates:</p>

- [Erbium]: brushes/textures/clips/shaders cleanups, fixed projectiles entering the ground under the Mega Armor.
- [Final Rage]: added more lamps to fix very dark areas, fixed a few perching spots.
- [Implosion]: lightning bolts effect added on top of the central towers (indicates danger), tweaked the catwalks below the map, textures/clips cleanups.
- [Silent Siege]: brushes/patches/textures/clips cleanups, fixed a visible caulk, added a small light above the Mega Armor.
- [Solarium]: glass texture added to the big windows, brushes/patches/textures cleanups.
- [Space Elevator]: aligned the jump pads with the glowy pipes, updated bot waypoints.
- Warfare: recompiled the map to fix some poorly rendered terrain textures.
- and [more][maps_more].

[Drain] and [Oil Rig] are now hidden from the game menus and will be removed in the next release.

[Bromine]:https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/129
[Opium]:https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/135
[Erbium]:https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/101
[Final Rage]:https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/155
[Implosion]:https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/156
[Silent Siege]:https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/134
[Solarium]:https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/132
[Space Elevator]:https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/137
[maps_more]:https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests?milestone_title=Xonotic+0.8.5+-+Mapping&scope=all&state=merged
[Drain]:https://xonotic.org/teamvotes/371/
[Oil Rig]:https://xonotic.org/teamvotes/384/

##### Sounds
<p style="margin-bottom:0px">Refreshed weapon and item sounds are easier to distinguish in combat, and more fun.</p>

- Pickups are a little finer, when we use the powerups, we're feeling a force coming and growling from inside. 
- Players' footsteps are a bit more realistic, when they jump and land on some metal ramp, it's like they are hitting iron with their feet. 
- Spawns are more attractive and it feels like air is coming out from inside.
- Weapon shots are direct, futuristic and mixed with an audacious sensation.
- New kill sound consisting of a high-pitched version of the hit indication sound.
- Loss of armor is clearly audible.

##### Weapon models
[Morphed](https://forums.xonotic.org/member.php?action=profile&amp;uid=8) has turned up the polygon count in the splash damage department with these impressive Crylink and Electro models.  They're animated and feel like a natural match for the gameplay and art style.

<!-- override some CSS so table looks better -->
<style>
table {
	table-layout: auto;
	width: 100%;
}
</style>

| <h5>Crylink</h5> | <h5>Electro</h5> | |
| :-: | :-: | :- |
| <a href="/m/uploads/2022/06/crylinkprototype.jpg"><img src="/m/uploads/2022/06/crylinkprototype_t.webp" title="Prototype - Crylink by Morphed" class="th"></a> | <a href="/m/uploads/2022/06/electroprototype.jpeg"><img src="/m/uploads/2022/06/electroprototype_t.webp" title="Prototype - Electro by Morphed" class="th"></a> | <h5>Prototype</h5> |
| <a href="/m/uploads/2022/06/crylinkfinalresult.jpg"><img src="/m/uploads/2022/06/crylinkfinalresult_t.webp" title="Crylink by Morphed" class="th"></a> | <a href="/m/uploads/2022/06/electrofinalresult.jpg"><img src="/m/uploads/2022/06/electrofinalresult_t.webp" title="Electro by Morphed" class="th"></a> | <h5>Textured</h5> |

##### Monster models
Joining the existing Zombies are the new Wyvern, Golem, Mage and Spider.

<a href="/m/uploads/2022/06/mobs_blue.webp"><img src="/m/uploads/2022/06/mobs_blue_928w.webp" title="Monsters on Blue team" class="th"></a><br>

They feature new animations and are supported by reworked and faster code with some new abilities.  
The Invasion gametype remains a work in progress but you may encounter these monsters on certain maps or servers.  

---

### User Interface

##### HUD, Centerprints and Scoreboard
<p></p> <!-- half a <br> :) -->
&emsp; <img src="/m/uploads/2022/06/hud_centreprint_ft.webp" title="Match starting centreprint with title" class="th">
&emsp; <img src="/m/uploads/2022/06/hud_timer_modicons.webp" title="Warmup phase in Freeze Tag" class="th">
&emsp; <img src="/m/uploads/2022/06/hud_timer.webp" title="Sudden Death phase with round timelimit" class="th">
<p></p> <!-- this is not the hack you're looking for -->

- A title was added to centerprint messages and their animations and legibility improved.
- The Timer HUD panel now indicates the match phase with a subtext.  
  A secondary timer for round-based game modes displays the remaining round time.
- The player's remaining oxygen is now indicated by a meter while underwater.
- Assistance with strafe jumping and other physics tricks is provided by a new strafe HUD panel.
- Item pickup counts are now displayed in a dedicated panel under the scoreboard.
<img src="/m/uploads/2022/06/item_stats.png" title="Item stats panel showing MANY items" class="th">

##### Menu
- A small menu for quick access to the most commonly used options is now opened by the ESC key.
- A new Welcome dialog replaces the old MOTD centerprint, bringing better looks, better accessibility for new players, and support for scrolling.
- Video, Effects and Misc settings are more helpful, have less footguns, and support upcoming DarkPlaces Engine versions.
- Server list now has the option to filter out very high ping servers.
- It's now possible to scroll the chat history with mouse wheel up/down.
- The quickmenu has a better input system.
- The default Luma theme was refined for a cleaner look.

##### Translations
- Welcome message and key names are now translatable.
- 5 years worth of translation updates for multiple languages are included, thanks to all our translators!  
  Portuguese (Brazil) and Turkish are now available in the game menu.

---

### XonStat 2.0 <a name="xonstat"></a>
During the pandemic XonStat was written from the ground up, solving many of the pain points of the previous version. A full list is too lengthy for this post, but here are some highlights:

* Code is in Go (statically typed, compiled) instead of Python (duck-typed, interpreted).
* Standard library (net/http) HTTP server instead of via a WSGI web framework (Pyramid).
* [API documentation][XonStat API docs] via Swagger, with just about every endpoint having a JSON representation!
* Shared cache via Redis instead of per-process, in-memory cache via Python's Beaker.
* Foundation 6 instead of Foundation 4 for the CSS framework.
* Chart.js (HTML canvas) instead of NVD3.js (embedded SVG) for charting/visualization.
* [Weng-Lin] instead of Elo for skill, with async calculations.
* Rate limiting (none previously).
* Tracking of spectators/forfeits (none previously).
* [Badges][XonStat badges] incorporated into the codebase (previously standalone).
* [Submission Inspector][XonStat submission inspector] for much easier troubleshooting.

[XonStat API docs]: https://stats.xonotic.org/docs/index.html
[XonStat badges]: https://forums.xonotic.org/showthread.php?tid=3436&pid=48043#pid48043
[XonStat submission inspector]: https://gitlab.com/xonotic/xonstat-go#submission-inspector
[Weng-Lin]: https://jmlr.csail.mit.edu/papers/volume12/weng11a/weng11a.pdf

---

### NetRadiant level editor <a name="netradiant"></a>
Development activity got a boost and the project now has its own website ([netradiant.gitlab.io](https://netradiant.gitlab.io/)) and its own release schedule and downloads (see the [NetRadiant download page](https://netradiant.gitlab.io/page/download/)). This is still a Xonotic project maintained by the [Xonotic Team](/team) with code hosted at [Xonotic GitLab](https://gitlab.com/xonotic/netradiant).

- Mapping support package is not needed anymore with features implemented in both the NetRadiant level editor and the q3map2 map compiler: [PK3 symlink](https://netradiant.gitlab.io/post/2021-02-25-pk3-symlink/), [DDS prefix](https://netradiant.gitlab.io/post/2021-11-08-dds-prefix/). The Xonotic mapping support package may still be needed when using others editors if they did not implement such features.
- Xonotic map build menu for NetRadiant was updated ([merge request](https://gitlab.com/xonotic/netradiant-xonoticpack/-/merge_requests/5)). Following good advices by Julius they are expected to produce good looking maps on par with official maps. Map compilation is expected to be faster.
- Available for macOS and FreeBSD in addition to Linux and Windows.

More details about the [NetRadiant builds at Xonotic 0.8.5 release time](https://netradiant.gitlab.io/post/2022-06-28-updated-builds/) and more informations about changes having been done the past years can be found on the [NetRadiant website](https://netradiant.gitlab.io/) itself.

---

### Other changes in Xonotic

##### Build systems
- Xonotic is compiled on a much newer and self-hosted platform.  
  This fixed several old problems with SDL on Linux.
- Fresh Windows DLLs are compiled automatically as part of every build, replacing ancient manually updated files.  
  Lack of HTTPS and multi channel audio on Windows are fixed.
- HTTPS is now fully supported for pk3 downloads from servers, and is used by default for all XonStat connections.  
  This will improve reliability on servers that take advantage of it.
- A redesigned Makefile is included that makes it easy to [compile a build optimised for your machine](https://gitlab.com/xonotic/xonotic/-/wikis/Compiling).
- Higher quality compression gives a sharper look with less artifacts to sprites and surfaces using official textures.
- The `mappingsupport` pack no longer includes a very old version of NetRadiant, [see above](#netradiant).

##### Campaign
- Bromine and Opium have replaced the Oil Rig and Drain levels.
- The match is reset when the player joins so the timer is cleared and a nice 3 second countdown appears.
- A convenient "Restart level" button is included in the new ESC menu.

##### Terms of Service
At first start, a "Terms of Service" (ToS) dialogue will explain transparently what data is required or optional.  
Server admins can (and should) provide server-specific Terms of Service that will be displayed in the server info dialogue (right-click on the server in the multiplayer menu).

##### Resetmatch
New votable command `resetmatch` restarts the match without restarting the whole server, meaning players stay in their teams and don't have to reconnect.  Loading screens are eliminated and the process is instant.

##### Quake 3 map compatibility
- More appropriate equivalents are selected for some items.
- Layouts and item placements that vary between different mods and gametypes are (almost fully) supported.
- Many Q3 map entities including damage sources, weapon and ammo givers, doors and sounds now behave more like they do in Q3.

##### Map entity logic and documentation
- Several fixes and code cleanups were applied to existing functionality.
- Several map entities can now be (de)activated by relays: [Merge Request](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/542)
- Entity descriptions for NetRadiant were updated: [Merge Request](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/116)

##### Rulesets
Popular gameplay configurations are now organised in `ruleset-*.cfg` files.

##### QC Physics
Player physics is now implemented in QuakeC gamecode instead of using the engine physics.  
This will enable custom features that otherwise wouldn't be possible.  It also brings bug fixes for stairs and moving platforms.

##### DarkPlaces Engine
- Performance is significantly faster and smoother in bot matches and when the world origin is in the playable area.
- A very old regression that caused incorrect gloss intensity is fixed.
- A workaround was applied to fix IPv6-enabled servers having unreliable IPv4 in the server list.
- A Quake Live style mouse acceleration mode was added.
- Most glow maps (bright textures used on lights) on Quake 3 maps are now working.
- `gl_flashblend` mode no longer causes corona effects to be excessively huge and bright.

##### Visual effects and sprites
- Weapon muzzle effects always originate at the weapon model now, fixes obscured camera when using `g_shootfromeye 1`.
- Muzzle effects and bullet cases are no longer rendered when the first person weapon model is disabled.
- Simple item sprites no longer disappear behind grate textures.
- Rain and snow are faster and more reliable, especially on larger maps.
- Waypoint sprites now show icons rather than text.
- Overlapping player name tags are now always visible with lower alpha.
- An empty bar is always drawn under health and armor bars to highlight values from 0 to 100.
- Bloom is more subtle.
- Refraction effect of water and warpzones is more subtle.
- Race CTS waypoint sprite placement is now reliable for arbitrarily complex map entity chains.

##### Miscellaneous
- Idle players are automatically moved to spectators after some time (60 seconds by default).
- Optional automatic kicking of players who repeatedly teamkill was added.
- Each enemy can now be assigned a unique color in all game modes without teams (except duel).
- Clients automatically send cvars to the server when they're changed, for settings handled by the server.
- Several bugs with submission of data to XonStat are fixed.

---

### Backward compatibility notes
Several official maps have been significantly updated and old clients will have issues with these maps on current servers, or vice versa.

The "glowy" player model skins are now used by default and the behaviour of cvars `sv_defaultcharacterskin` and `sv_defaultplayerskin` is inverted.  Server admins who were setting these cvars to "1" to improve player visibility should now use the default value of "0".
