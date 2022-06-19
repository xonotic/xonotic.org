---
author: Xonotic Team
comments: false
date: 2022-04-01 13:37:42+00:00
slug: xonotic-0-8-5-release
title: Xonotic 0.8.5 Release
categories:
- Announcements
---
By default, Hugo automatically takes the first 70 words of your content as its summary and stores it into the `.Summary` page variable for use in your templates.  
Alternatively, you may add the <code>&#60;&#33;&#45;&#45;more&#45;&#45;&#62;</code> summary divider where you want to split the article.  
https://gohugo.io/content-management/summaries/

#### [Download it here](/download)
<!--more-->

---

### Highlights

##### New build systems
- Everything is compiled on a much newer and self-hosted platform.  
  This has fixed several old problems with SDL on Linux.
- Fresh Windows DLLs are compiled automatically as part of every build, replacing ancient manually updated files.  
  Lack of HTTPS and multi channel audio on Windows are fixed.
- HTTPS is now fully supported for pk3 downloads from servers, and is used by default for all XonStat connections.  
  This will improve reliability of servers that take advantage of it.
- A redesigned Makefile is included that makes it easy to compile a build optimised for your machine.

##### Player model skin updates
- Improved visibility of all player models.
- Balanced primary ('shirt') and secondary ('glow') colors in some models (especially in Erebus and derived models).
- Fix burned glow color reducing number of available colors from 15 to 9.  
  Side effect of this change is that now glow color of the blue team is now blue-cyan instead of cyan (burned blue-cyan), other team colors are unchanged.
- Fixed primary and secondary colors being mixed up in some models.

<a href="/m/uploads/2022/01/player_models.png"><img src="/m/uploads/2022/01/player_models.png" title="Player models" class="th">

<details><summary>Click to see hidden (unavailable in the menu) player models</summary>

<a href="/m/uploads/2022/01/player_models_hidden.png"><img src="/m/uploads/2022/01/player_models_hidden.png" title="Hidden player models" class="th">
</details>

##### Bot skill and waypoints
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
- Improved waypoint editor:
  - Fixed creation of waypoints underwater.
  - New waypoints (jump, crouch, custom jumppad waypoint, support).
  - Added ability to create waypoints at crosshair.
  - Added ability to create waypoints for jumppads without automatically generated waypoints.
  - Added ability to create support waypoints to replace incoming links of a problematic teleport / jumppad.
  - Made creating hardwired links easier.
  - Automatic symmetrical waypoint creation for CTF (symmetrical) maps.
  - Waypoint files are now versioned and timestamped.
  - Added a waypoint editor menu with all the commands (can be bound to a key in the key binder).
- Improved performance.
- Other minor fixes and improvements.

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
| <a href="/m/uploads/2022/01/crylinkprototype.jpg"><img src="/m/uploads/2022/01/crylinkprototype_t.jpg" title="Prototype - Crylink by Morphed" class="th"></a> | <a href="/m/uploads/2022/01/electroprototype.jpeg"><img src="/m/uploads/2022/01/electroprototype_t.jpeg" title="Prototype - Electro by Morphed" class="th"></a> | <h5>Prototype</h5> |
| <a href="/m/uploads/2022/01/crylinkfinalresult.jpg"><img src="/m/uploads/2022/01/crylinkfinalresult_t.jpg" title="Crylink by Morphed" class="th"></a> | <a href="/m/uploads/2022/01/electrofinalresult.jpg"><img src="/m/uploads/2022/01/electrofinalresult_t.jpg" title="Electro by Morphed" class="th"></a> | <h5>Textured</h5> |

##### Campaign updates (menu, maps)
- Bromine and Opium now replace the Oilrig and Drain levels.
- Reset the match on join so that timer is cleared and a nice 3 second countdown show up.
- Add a "Restart level" button in the ESC menu to allow a quick level restart.

##### Scoreboard item stats
- Item pickup counts are now displayed in a dedicated panel under the scoreboard.

##### Scrollable chat history
- It's now possible to scroll the chat history with mouse wheel up/down.

##### Underwater oxygen meter
- There is now an indication meter on the HUD displaying the player's current oxygen amount when they are underwater.

##### Strafe HUD

##### HUD and Centerprint updates
<img src="/m/uploads/2022/01/hud_subtext.jpg" title="Timer Phase indicator">
<img src="/m/uploads/2022/01/hud_sectimer.jpg" title="Secondary timer">
<img src="/m/uploads/2022/01/hud_centerprint.jpg" title="Centerprint title">
- Added a title to centerprint messages and improved animations.
- Added a phase indicator for the timer.
- Added a secondary timer for round-based game modes which displays the remaining round time.

##### Player tags fixes and improvements
- Overlapping player tags are now always visible with lower alpha.
- An empty bar is always drawn under health and armor bars to highlight values from 0 to 100.

##### Menu updates
- A small menu for quick access to the most commonly used options is now opened by the ESC key.
- A new Welcome dialog replaces the old MOTD centerprint, bringing better looks, better accessibility for new players, and support for scrolling.
- Settings menu (Video, Effects, Misc tabs) has been refined and has better support for upcoming DarkPlaces engine versions.
- Server list now has the option to filter out very high ping servers.

##### More of the UI is translatable/translated
- Welcome message and key names are now translatable.
- 5 years worth of translation updates in different languages, thanks to all our translators! Portuguese (Brazil) and Turkish are now available in the game menu.

##### Balance
- Vortex's push force has been reduced from 400 to 200.  
  Players no longer fly to the other end of the map when hit by a Vortex shot.
- Electro primary bolts are now capable of detonating Electro secondary orbs by flying close enough to them.  
  Though this midair combo trigger radius is 0 units by default meaning that there is no real change yet. Bolts can now also be within 0 units to trigger the combo instead of only hitting the orbs' bounding boxes or a surface next to them.
- Crylink now has a linkexplode property which makes all pellets explode at once when any of them hit a player.  
  Linkexplode allows for more consistent damage output when only 1 pellet needs to hit a player for all of them to detonate dealing damage to players within their splash radiuses.  
  This also reduces visual clutter compared to having all the missing pellets fly around.
- There are also a couple other new cvars and a few of the existing cvars have been edited to allow for more in-depth weapon customization.

##### Duel gametype
- Duel is now its own gamemode, there is no longer a need for deathmatch with max playercount of 2.  
  For backend this allows for more accurate gamemode detection and case handling.

##### Maps
- New official maps:
  - [Bromine](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/129) by *packer*  
<a href="/m/uploads/2022/01/bromine.jpg"><img src="/m/uploads/2022/01/bromine_t.jpg" title="Bromine by packer" class="th"></a>
  - [Opium](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/135) by *cityy*  
<a href="/m/uploads/2022/01/opium.jpg"><img src="/m/uploads/2022/01/opium_t.jpg" title="Opium by cityy" class="th"></a>
- Various fixes and/or visual updates to existing maps: [Erbium](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/101), [Final Rage](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/155), [Implosion](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/156), [Silent Siege](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/134), [Solarium](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/132), [Space Elevator](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/137), and [more](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests?milestone_title=Xonotic+0.8.5+-+Mapping&scope=all&state=merged).
- [Drain](https://xonotic.org/teamvotes/371/) and [Oil Rig](https://xonotic.org/teamvotes/384/) are now hidden from the game menus and will be removed in the next release.

##### Misc changes
- Automatically move idle players to spectators after some time.
- Optionally autokick players who repeatedly teamkill, as they are likely intentionally teamkilling.
- Automatically keep bots balanced.
- Add minplayers_per_team cvar (active in team modes) and make minplayers cvar only affect FFA modes.  
  These fill server with bots to reach this number of players. When human players join these bots disconnect unlike bots from bot_number cvar.
- Allow assigning each enemy unique colors in all game modes without teams except duel.
- Improve quickmenu input system.
- Waypoints now show icons rather than text.
- Refactored rain/snow to be much faster and more reliable, especially on larger maps.
- Allow dropping powerups on death, off by default.
- Items such as Strength and Shield now initially spawn at the same time.
- Add bots and nobots votes to add/remove bots added through minplayers and minplayers_per_team.

##### Freeze Tag updates
- Apply spawnshield for 1 second after you've been revived (spawnshield is lost if you fire).
- Reduce auto-revival time based on manual revival progress. To compensate for the increased ease of revival, don't award an extra point for revival (just for the time spent reviving).
- Don't reset autorevive progress when a frozen player falls into the void.
- Start the automatic reviving progress as soon as the player gets frozen.
- Show autorevival progress of frozen players as waypoint health bar rather than normal health bar, which is barely visible for red players.
- Reduce auto-revival time when frozen players are hit by enemies (time reduction depends on hit force). Optionally this behaviour can be enabled when frozen players are hit by teammates too.
- Fix view jitter while floating on the water when frozen.

##### Misc game mode changes
- LMS: avoid forcing players to join on connection.
- LMS, CA, FT: minor fixes and improvements.
- New "most_available" weaponarena only gives the weapons available as pickups on the map.  
  This allows for g_weaponarena mutator and/or CA/FT/LMS gamemodes to only have weapons which the mapper intended the map to have.

##### Automatic sendcvar
- Client automatically sends cvars to the server whenever they are changed, for setting that are handled by the server.

##### Terms of Service
- At first start, a "Terms of Service" (ToS) dialogue will explain transparently what data is required or optional.
- Server admins can (and should) specify server specific Terms of Service that will be displayed in the server info dialogue (right-click on the server in the serverlist).

##### Resetmatch
- New votable command `resetmatch` to restart the game without restarting the whole server, meaning players stay in their teams and clients don't have to reconnect, making the whole process instant.

##### Q3 map compatibility
- More appropriate selections of equivalent weapons, ammo, powerups.
- Layouts and item placements that vary between different mods and modes are (almost fully) supported.
- Various map entities including damage sources, weapon and ammo sources, doors and sounds now behave as they do in Q3.

##### Improved map entity functionality
- Several fixes and code cleanup for existing functionality.
- Several map entities can now be (de)activated by relays: [Merge Request](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/542)
- Updated entity description for NetRadiant: [Merge Request](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/116)

##### rulesets

##### QC physics
- goes brrrr
- is used by default which allowed some issues with stairs and moving platforms to be fixed

##### All the fixing and refactoring
- csqc_muzzleflash: muzzle effects now originate at the weapon model (instead of obscuring the camera when using g_shootfromeye), muzzle effects and bullet cases are not rendered when first person weapon model is disabled.
- Simple item sprites no longer disappear behind grate textures.
- Powerup code has been redesigned and Speed and Invisibility are now implemented as powerups instead of buffs.
- Several XonStat related bugs fixed.
- Wall rockets are no longer a thing.
- Taller weapon & ammo hitboxes so you don't jump straight over them without acquiring them.
- CTS waypoint placement fixed for even the most complicated map.
- And many, many more fixes we already forgot about.

##### DarkPlaces Engine
- graphics (gloss, q3 glow maps, CL_MeshEntities).
- Significant performance improvements in bot matches and when world origin is inside playable area.
- ipv6 dpmasters.
- QL-style mouse accel mode.

##### NetRadiant
- a whole bunch of MRs (mostly by illwieckz) were merged for NetRadiant.

### Breaking Changes
- Several official maps have been significantly updated and old clients will have issues playing these maps on current servers.
- Behaviour of `sv_defaultcharacterskin 1; sv_defaultplayerskin 1` is inverted: the "glowy skins" are now the default skins.  If you were setting these cvars to `1`, you should now set them to `0` (the default) to continue using the glowy skins.

### XonStat 2.0
During the pandemic XonStat was written from the ground up, solving many of the pain points of the previous version. A full list is too lengthy for this post, but here are some highlights:

* Code is in Go (statically typed, compiled) instead of Python (duck-typed, interpreted).
* Standard library (net/http) HTTP server instead of via a WSGI web framework (Pyramid).
* [API documentation][XonStat API docs] via Swagger, with just about every endpoint having a JSON representation!
* Shared cache via Redis instead of per-process, in-memory cache via Python's Beaker.
* Foundation 6 instead of Foundation 4 for the CSS framework.
* Chart.js (HTML canvas) instead of NVD3.js (embedded SVG) for charting/visualization.
* [Weng-Lin][Weng-Lin] instead of Elo for skill, with async calculations.
* Rate limiting (none previously).
* Tracking of spectators/forfeits (none previously).
* [Badges][XonStat badges] incorporated into the codebase (previously standalone).
* [Submission Inspector][XonStat submission inspector] for much easier troubleshooting.

[XonStat API docs]: https://stats.xonotic.org/docs/index.html
[XonStat badges]: https://forums.xonotic.org/showthread.php?tid=3436&pid=48043#pid48043
[XonStat submission inspector]: https://gitlab.com/xonotic/xonstat-go#submission-inspector
[Weng-Lin]: https://jmlr.csail.mit.edu/papers/volume12/weng11a/weng11a.pdf
