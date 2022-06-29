---
author: Xonotic Team
comments: false
date: 2022-04-01 13:37:42+00:00
slug: xonotic-0-8-5-release
title: Xonotic 0.8.5 Release
categories:
- Announcements
---

<!-- https://gohugo.io/content-management/summaries/ -->

Xonotic 0.8.5 is here at last!  There's been thousands of commits since 0.8.2 making this quite a long read for all the right reasons.  Refined gameplay, new and updated maps and models, new sound effects, more dangerous bots, new HUD and menu features, more translations, better infrastructure, too many fixes to count, and much more.  
[XonStat](#xonstat) and [NetRadiant](#netradiant) made great progress.

<!--more-->

### [Download it here](/download)

---

### Gameplay

##### Duel
Duel is now a dedicated gametype, there is no longer a need for deathmatch with max playercount of 2.  
This allows duel-specific gameplay settings and cleaner handling by XonStat.

##### Freeze Tag
- Apply spawnshield for 1 second after you've been revived (spawnshield is lost if you fire).
- Reduce auto-revival time based on manual revival progress. To compensate for the increased ease of revival, don't award an extra point for revival (just for the time spent reviving).
- Don't reset autorevive progress when a frozen player falls into the void.
- Start the automatic reviving progress as soon as the player gets frozen.
- Show autorevival progress of frozen players as waypoint sprite health bar rather than normal health bar, which was barely visible for red players.
- Reduce auto-revival time when frozen players are hit by enemies (time reduction depends on hit force). Optionally this behaviour can be enabled when frozen players are hit by teammates too.
- Fix view jitter while floating on the water when frozen.

##### Balance
- Vortex's push force has been reduced from 400 to 200.  
  Players no longer fly to the other end of the map when hit by a Vortex shot.
- Electro primary bolts are now capable of detonating Electro secondary orbs by flying close enough to them.  
  Though this midair combo trigger radius is 0 units by default meaning that there is no real change yet. Bolts can now also be within 0 units to trigger the combo instead of only hitting the orbs' bounding boxes or a surface next to them.
- Crylink now has a linkexplode property which makes all pellets explode at once when any of them hit a player.  
  Linkexplode allows for more consistent damage output when only 1 pellet needs to hit a player for all of them to detonate dealing damage to players within their splash radiuses.  
  This also reduces visual clutter compared to having all the missing pellets fly around.
- There are also a couple other new cvars and a few of the existing cvars have been edited to allow for more in-depth weapon customization.

##### Gameplay miscellaneous
- LMS: avoid forcing players to join on connection.
- LMS, CA, FT: minor fixes and improvements.
- New "most_available" weaponarena only gives the weapons available as pickups on the map.  
  This allows for g_weaponarena mutator and/or CA/FT/LMS gamemodes to only have weapons which the mapper intended the map to have.
- Items such as Strength and Shield now initially spawn at the same time.
- Allow dropping powerups on death, off by default.
- Powerup code has been redesigned and Speed and Invisibility are now implemented as powerups instead of buffs.
- Rockets can no longer be fired such that they're stuck in a wall.
- Taller weapon & ammo hitboxes so you don't jump straight over them without acquiring them.

---

### Bots

##### Behaviour
- Set default bot skill to 8 (from 1).
- Fixed underwater navigation.
- Fixed all kinds of issues when bots walk on flooded floors.
- Bots no longer get stuck in bad spots (without linked waypoints) or when other bots of the same team block all their ways.
- Fixed bad behaviour in FT and CA and improved behaviour in many game modes.
- Added ability to jump and crouch thanks to new dedicated waypoints.
- Improved ability of climbing ladders and using jumppads.
- Improved ability of running avoiding dangers and bunny hoping.
- Improved ability of chasing enemies.
- Improved item rating.
- Fixed bad jetpack usage.
- Fixed bots ignoring teleports and warpzones.

##### Waypoint editor
- Fixed creation of waypoints underwater.
- New waypoints (jump, crouch, custom jumppad waypoint, support).
- Added ability to create waypoints at crosshair.
- Added ability to create waypoints for jumppads without automatically generated waypoints.
- Added ability to create support waypoints to replace incoming links of a problematic teleport / jumppad.
- Made creating hardwired links easier.
- Automatic symmetrical waypoint creation for CTF (symmetrical) maps.
- Waypoint files are now versioned and timestamped.
- Added a waypoint editor menu with all the commands (can be bound to a key in the key binder).

##### Bots miscellaneous
- Improved performance.
- Other minor fixes and improvements.
- Automatically keep bots balanced between teams.
- Add minplayers_per_team cvar (active in team modes) and make minplayers cvar only affect FFA modes.  
  These fill server with bots to reach this number of players. When human players join these bots disconnect unlike bots from bot_number cvar.
- Add bots and nobots votes to add/remove bots added through minplayers and minplayers_per_team.

---

### Artwork

##### Player model skins
- Improved visibility of all player models.
- Balanced primary ('shirt') and secondary ('glow') colors in some models (especially in Erebus and derived models).
- Fix burned glow color reducing number of available colors from 15 to 9.  
  Side effect of this change is that now glow color of the blue team is blue-cyan (original color) instead of cyan, other team colors are unchanged.
- Fixed primary and secondary colors being mixed up in some models.

<a href="/m/uploads/2022/06/player_models.webp"><img src="/m/uploads/2022/06/player_models_928w.webp" title="Player models" class="th"></a>

<details><summary>Click to see hidden (unavailable in the menu) player models</summary>

<a href="/m/uploads/2022/06/player_models_hidden.webp"><img src="/m/uploads/2022/06/player_models_hidden_928w.webp" title="Hidden player models" class="th"></a>
</details>
<br>

##### Maps
- New official maps:
  - [Bromine] by *packer*, a rusty styled map for large games!  
<a href="/m/uploads/2022/06/bromine.jpg"><img src="/m/uploads/2022/06/bromine_t.jpg" title="Bromine by packer" class="th"></a>
  - [Opium] by *cityy*, a medium sized level with plenty of vertical action!  
<a href="/m/uploads/2022/06/opium.jpg"><img src="/m/uploads/2022/06/opium_t.jpg" title="Opium by cityy" class="th"></a>
- Various fixes and/or visual updates to existing maps:
  - [Erbium]: brushes/textures/clips/shaders cleanups, fixed projectiles entering the ground under the Mega Armor.
  - [Final Rage]: added more lamps to fix very dark areas, fixed a few perching spots.
  - [Implosion]: lightning bolts effect on top of the central towers (to indicate danger), tweaked the catwalks below the map, textures/clips cleanups.
  - [Silent Siege]: brushes/patches/textures/clips cleanups, fixed a visible caulk, added a small light above the Mega Armor.
  - [Solarium]: glass texture on the big windows, brushes/patches/textures cleanups.
  - [Space Elevator]: aligned the jump pads with the glowy pipes, updated bot waypoints.
  - and [more][maps_more].
- [Drain] and [Oil Rig] are now hidden from the game menus and will be removed in the next release.

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

##### New sounds
Now the sounds are more refined and smoother. 
- Pickups are a little finer, when we use the powerups, we're feeling a force coming and growling from inside. 
- Players' footsteps are a bit more realistic, when they jump and land on some metal ramp, it's like they are hitting iron with their feet. 
- Spawns are more attractive and it feels like air is coming out from inside.
- Weapon shots are direct, futuristic and mixed with an audacious sensation.
- New kill sound consisting of a high-pitched version of the hit indication sound.

##### New weapon models
The arduous effort on the valuable contributions of [Morphed](https://forums.xonotic.org/member.php?action=profile&amp;uid=8) did an amazing work making Crylink and Electro models. We were shocked to see his modeling progress.

| <h5>Crylink</h5> | <h5>Electro</h5> | |
| :-: | :-: | :- |
| <a href="/m/uploads/2022/06/crylinkprototype.jpg"><img src="/m/uploads/2022/06/crylinkprototype_t.jpg" title="Prototype - Crylink by Morphed" class="th"></a> | <a href="/m/uploads/2022/06/electroprototype.jpeg"><img src="/m/uploads/2022/06/electroprototype_t.jpeg" title="Prototype - Electro by Morphed" class="th"></a> | <h5>Prototype</h5> |
| <a href="/m/uploads/2022/06/crylinkfinalresult.jpg"><img src="/m/uploads/2022/06/crylinkfinalresult_t.jpg" title="Crylink by Morphed" class="th"></a> | <a href="/m/uploads/2022/06/electrofinalresult.jpg"><img src="/m/uploads/2022/06/electrofinalresult_t.jpg" title="Electro by Morphed" class="th"></a> | <h5>Textured</h5> |

##### New monster models and animations

Joining the existing Zombies are the Wyvern, Golem, Mage and Spider.

<a href="/m/uploads/2022/06/mobs_blue.webp"><img src="/m/uploads/2022/06/mobs_blue_928w.webp" title="Monsters on Blue team" class="th"></a><br>

They're supported by reworked and faster code with some new abilities.  
The Invasion gametype remains a work in progress but you may encounter these monsters on certain maps or servers.  

---

### User Interface

##### HUD, Centerprints and Scoreboard

<p></p> <!-- half a <br> :) -->

&emsp; <img src="/m/uploads/2022/06/hud_centreprint_ft.webp" title="Match starting centreprint with title" class="th">
&emsp; <img src="/m/uploads/2022/06/hud_timer_modicons.webp" title="Warmup phase in Freeze Tag" class="th">
&emsp; <img src="/m/uploads/2022/06/hud_timer.webp" title="Sudden Death phase with round timelimit" class="th">

- Added a title to centerprint messages and improved their animations and legibility.
- Added a match phase subtext to the timer.
- Added a secondary timer for round-based game modes which displays the remaining round time.
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
- Improve quickmenu input system.
- The default Luma theme is refined for a cleaner look.

##### Translations
- Welcome message and key names are now translatable.
- 5 years worth of translation updates in different languages, thanks to all our translators! Portuguese (Brazil) and Turkish are now available in the game menu.

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

Development activity got a boost and the project now has its own website ([netradiant.gitlab.io](https://netradiant.gitlab.io/)) and its own release schedule and downloads (see the [NetRadiant download page](https://netradiant.gitlab.io/page/download/)). This is still a Xonotic project maintained by the Xonotic team with code hosted at [Xonotic GitLab forge](https://gitlab.com/xonotic/netradiant).

- Mapping support package is not needed anymore with features implemented in both the NetRadiant level editor and the q3map2 map compiler: [PK3 symlink](https://netradiant.gitlab.io/post/2021-02-25-pk3-symlink/), [DDS prefix](https://netradiant.gitlab.io/post/2021-11-08-dds-prefix/). The Xonotic mapping support package may still be needed when using others editors if they did not implement such features.
- Xonotic map build menu for NetRadiant was updated ([merge request](https://gitlab.com/xonotic/netradiant-xonoticpack/-/merge_requests/5)). Following good advices by Julius they are expected to produce good looking maps on par with official maps. Map compilation is expected to be faster.
- Available for macOS and FreeBSD in addition to Linux and Windows.

More details about the [NetRadiant builds at Xonotic 0.8.5 release time](https://netradiant.gitlab.io/post/2022-06-28-updated-builds/) and more informations about changes having been done the past years can be found on the [NetRadiant website](https://netradiant.gitlab.io/) itself.

---

### Other changes in Xonotic

##### Build systems
- Xonotic is now compiled on a much newer and self-hosted platform.  
  This fixed several old problems with SDL on Linux.
- Fresh Windows DLLs are compiled automatically as part of every build, replacing ancient manually updated files.  
  Lack of HTTPS and multi channel audio on Windows are fixed.
- HTTPS is now fully supported for pk3 downloads from servers, and is used by default for all XonStat connections.  
  This will improve reliability on servers that take advantage of it.
- A redesigned Makefile is included that makes it easy to [compile a build optimised for your machine](https://gitlab.com/xonotic/xonotic/-/wikis/Compiling).
- Higher quality compression gives a sharper look with less artifacts to sprites and surfaces using official textures.
- The `mappingsupport` pack no longer includes a very old version of NetRadiant, [see above](#netradiant).

##### Campaign
- Bromine and Opium now replace the Oil Rig and Drain levels.
- Reset the match on join so that timer is cleared and a nice 3 second countdown show up.
- Add a "Restart level" button in the new ESC menu to allow a quick level restart.

##### Terms of Service
- At first start, a "Terms of Service" (ToS) dialogue will explain transparently what data is required or optional.
- Server admins can (and should) specify server specific Terms of Service that will be displayed in the server info dialogue (right-click on the server in the serverlist).

##### Resetmatch
New votable command `resetmatch` restarts the match without restarting the whole server, meaning players stay in their teams and don't have to reconnect.  Loading screens are eliminated and the process is instant.

##### Quake 3 map compatibility
- More appropriate selections of equivalent items.
- Layouts and item placements that vary between different mods and gametypes are (almost fully) supported.
- Many Q3 map entities including damage sources, weapon and ammo givers, doors and sounds now behave more like they do in Q3.

##### Map entity logic and documentation
- Several fixes and code cleanup for existing functionality.
- Several map entities can now be (de)activated by relays: [Merge Request](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/542)
- Updated entity description for NetRadiant: [Merge Request](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/116)

##### Rulesets
Popular gameplay configurations are now organised in `ruleset-*.cfg` files.

##### QC Physics
Player physics is now implemented in QuakeC gamecode instead of using the engine physics.  
This will enable custom features that otherwise wouldn't be possible.  It also brings bug fixes for stairs and moving platforms.

##### DarkPlaces Engine
- Significantly faster and smoother performance in bot matches and when the world origin is inside the playable area.
- A very old regression that caused incorrect gloss intensity is fixed.
- A workaround is applied to fix IPv6-enabled servers having unreliable IPv4 in the server list.
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
- CTS waypoint sprite placement is now reliable for arbitrarily complex map entity chains.

##### Miscellaneous
- Automatically move idle players to spectators after some time.
- Optionally autokick players who repeatedly teamkill, as they are likely intentionally teamkilling.
- Allow assigning each enemy unique colors in all game modes without teams except duel.
- Clients automatically send cvars to the server when they're changed, for settings handled by the server.
- Several bugs with submission of data to XonStat are fixed.

---

### Backward compatibility issues
- Several official maps have been significantly updated and current clients will have issues with these maps on old servers, or vice versa.
- Behaviour of `sv_defaultcharacterskin 1; sv_defaultplayerskin 1` is inverted: the "glowy" skins are now the default skins.  Server admins who were setting these cvars to `1` to improve player visibility should now set them to `0` (the default).
