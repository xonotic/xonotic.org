---
author: Xonotic Team
comments: false
date: 2023-05-27 13:37:42+00:00
slug: xonotic-0-8-6-release
title: Xonotic 0.8.6 Release
categories:
- Announcements
---

<!-- https://gohugo.io/content-management/summaries/ -->

Xonotic 0.8.6 is here at last! Bla, bla, bla...


<!--more-->

### Download information {#}

#### New to Xonotic? {#}
[Download it here](/download)

#### Already have Xonotic on your machine? {#}
There's no need to download the game again to get into the action. Use the following steps to upgrade your client to the 0.8.6 release:

  1. Navigate to your Xonotic installation folder
  2. Navigate to the misc/tools/rsync-updater folder
  3. Execute the update-to-release.sh (for Linux or Mac) or update-to-release.bat (for Windows) and wait for it to complete
  4. Profit. You're done!


---

### Gameplay

#### Some gameplay section

---

### Features

#### Bla, bla, bla...

---

### Artwork

#### New art stuff?

##### Maps?

##### Sounds?

##### New models?


---

### User Interface?

##### HUD?

- Improve duel centerprint title (Hey, terencehill! Add this in the description, please:
https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1039)


##### Menu?

##### Translations?

---

### XonStat? {#xonstat}
---

### NetRadiant level editor? {#netradiant}
- Fix build with GCC 13. (Author: Freddy) [198](https://gitlab.com/xonotic/netradiant/-/merge_requests/198)
- q3map2: add -externalnames option to write explicit external lightmap names... (Author: Thomas Debesse) [196](https://gitlab.com/xonotic/netradiant/-/merge_requests/196)
- Make it build on M1 Mac. (Author: slipher) [195](https://gitlab.com/xonotic/netradiant/-/merge_requests/195)
- Do not crash in Winding_Clip when using -D_GLIBCXX_ASSERTIONS. (Author: Walter Doekes) [194](https://gitlab.com/xonotic/netradiant/-/merge_requests/194)
<!-- does netradiant's current builds include this NRC MR? -->
- First bunch of merge from NetRadiantCustom. (Author: Thomas Debesse) [193](https://gitlab.com/xonotic/netradiant/-/merge_requests/193)

---

### Other changes in Xonotic?

Add new moderation tools for the game, one of the main objectives for 0.8.6. Apart of that, what about other new features?





<!-- output of prepare_releasenotes.py follows -->




Generated Release Notes
===

Feature(s)
---
### Other: Campaign
- Campaign update. (Author: Dr. Jaska) [178](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/178)
- The campaign has received an overhaul! Many new levels and improvements!  
  Improvements:  
  Level 09: Changed Erbium instagib to Darkzone.  
  Level 12: Changed Warfare Freeze Tag to Erbium.  
  Level 16: Changed Runningman Keepaway into Team Keepaway.  
  Level 18: Changed Bromine Deathmatch into Clan Arena.  
  Level 27: Added forced respawn and 5min timelimit to Fuse Duel.  
  Level 30: Changed from DM into Mayhem to avoid kill stealing.  
  New levels:  
  Level 03: A new easy Mayhem level early in the campaign.  
  Level 15: CTF in Go.  
  Level 21: Team Mayhem in Trident.  
  Level 23: Onslaught in Running Man.  
  Level 28: Vampire Mutator CA in Warfare.  
  Level 31: A brutal END GAME level of Free For All Mayhem with superbots for true veterans on Trident.

### Gameplay: Physics
- Added Quake 3 jump pad compatibility. (Author: Juhu) [1134](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1134)

### Other: VFX
- Changed HLAC's secondary attack to only play a single sound and muzzle flash effect when firing. (Author: Mario) [1040](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1040)
- Vortex charging now uses the player's color instead of predefined colors. (Author: Mario) [1098](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1098)
- Tweaked gibs' settings to reduce exaggerated throw velocity. (Author: terencehill) [1114](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1114)

### UNKNOWN SECTION
- Added Team Keepaway, a teamplay variant of Keepaway where points are awarded for each frag to the team in possession of the ball. (Author: Mario) [1045](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1045)
- Added Survival, a gamemode where randomly selected hunters must frag all the survivors without being caught. (Author: Mario) [1072](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1072)
- Implemented announcer queue to prevent overlapping announcements. (Author: z411) [1075](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1075)
- Automatic per-map min & max player limits, many warmup and player count and Welcome message things. (Author: bones_was_here) [1022](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1022)
- Added a server-side option to disable freecam in Clan Arena for dead players (enabled by default in XPM). (Author: z411) [1081](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1081)
- Implemented g_warmup > 1 and related fixes and refactoring. (Author: bones_was_here) [1082](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1082)
- Autopause for dedicated servers, better autopause for singleplayer/listen. (Author: bones_was_here) [1144](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1144)

- Created `misc/tools/fov-calc.py`, a utility python script for Field of View (FoV) calculating. (Author: Dr. Jaska) [98](https://gitlab.com/xonotic/xonotic/-/merge_requests/98)  
  Did you know that due to its legacy the DarkPlaces engine calculates actual FoV based on what your FoV would look like were you to have a 4:3 monitor?  
  This means that for example with a 16:9 your `fov 90` setting will not show 90 degrees horizontally but around 106.25 degrees.  
  There is now an utility tool for calculating your actual FoV on any resolution, with or without zoom scaling (e.g. Vortex scoping).  
  Fun fact: This FoV calculation behavior also exists in many other games like Counter Strikes games and Half-Life games due to their shared roots of Quake 1 game engine!

### Gameplay: Map entities
- Fixes for teamed items and Quake 3 compatibility. (Author: bones_was_here) [1079](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1079)

### Artwork: Maps
- Added the map Go by dublpaws and Debugger. A space CTF map with a futuristic theme! (Author: Mirio) [43](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/43)
- Removed Drain and Oil Rig. (Author: SpiKe) [161](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/161)
- Stormkeep: Fixed an invisible crouching spot near the Mega Health. (Author: SpiKe) [162](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/162)
- Implosion: Added flare lights on top of the radio pylons + clipped the walls in the corridors + brush and texture cleanups. (Author: SpiKe) [163](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/163)
- Added copies of LOD models for a crate and jumppad that work with automatic LOD loading. (Author: Mario) [165](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/165)
- Atelier: fixed players sometimes getting stuck by placing the teleporter exits slightly above the ground and making the decals underneath non-solid. (Author: SpiKe) [166](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/166)
- Replaced map screenshots by removing old Nexuiz assets and not displaying items. (Author: LegendaryGuard) [168](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/168)
- Added the map Trident by proraide. Fight in an abandoned building! (Author: Amadeusz Sławiński) [169](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/169)
- Fixed wrong minimap scales on Dance, Implosion, Space-Elevator and Xoylent. (Author: SpiKe) [170](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/170)
- Added the Arc entity definition for mappers. (Author: SpiKe) [173](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/173)
- Updated entity definition bboxes to match 0.8.6 (for mappers). (Author: bones_was_here) [175](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/175)
- Fixed minor visual issues on Opium and Solarium. (Author: SpiKe)
- Package xoncompat repo containing assets from removed maps. (Author: bones_was_here) [102](https://gitlab.com/xonotic/xonotic/-/merge_requests/102)

### Artwork: Monsters
- Added LOD models for the monsters to boost performance with lots of monsters in the map and fix some LOD related bugs. (Author: Mario) [1069](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1069)

### Gameplay: Mutators
- Allowed dropping powerups with the use key & fix powerup dropping outside of the map. (Author: z411) [1074](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1074)

### Bots: Behaviour
- Fixed bots prematurely detonating guided Devastator rockets + more improvements! (Author: terencehill) [1063](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1063)
- Fixed bots being unable to fire fireball alt fire. (Author: Dr. Jaska) [1104](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1104)
- New extremely tough bots, superbots! (Author: Dr. Jaska) [1053](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1053)  
  These bots have no aim limitations, actively dodge projectiles, strafe randomly while in combat  
  and they prioritise low health targets instead of always targeting the closest opponent!  
  To opt in to these bots set `skill` to any number above 100 and to have as tough normal bots without personality deviation set `skill` to 100 or below.  
  Be warned that these bots are a real challenge to even the best veteran players.  
  It is recommended to not give these bots hitscan weapons like the Vortex.

### UI: HUD etc
- Map vote screen: The chosen map's levelshot is expanded to the center of the screen for a second before loading it. (Author: terencehill) [1060](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1060)

### Gameplay: LMS
- Implemented 4 new features for LMS. (Author: terencehill) [808](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/808)
- Players are now allowed to get back into the game if they moved to spectator. (Author: terencehill) [1051](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1051)

Fix(es)
---
### UNKNOWN SECTION
- Fixed mismatching player sorting between server and client. (Author: terencehill) [1026](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1026)
- Fixed Arc not having a suicide death message. (Author: terencehill) [1032](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1032)
- Fixed `weapon_shotgun` and `weapon_vortex` aliases missing. (Author: Mario) [1052](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1052)
- Fixed dedicated servers panicking when gotomap vote passes during an intermission. (Author: terencehill) [1055](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1055)
- Fixed several minor issues. (Author: Mario) [1095](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1095)
- Fixed error spam which occurred when standing in the way of rotating doors. (Author: Mario) [1105](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1105)
- Allowed mappers to define item skins. (Author: Mario) [1107](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1107)
- Fixed pokenades causing a crash when monsters are disabled. (Author: Mario) [1041](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1041)
- Fixed some shotgun bugs related to bots or the weapon being reloadable. (Author: terencehill) [1061](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1061)
- Clear item waypoints when deleting items to fix issues with dropped powerups. (Author: Mario) [1070](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1070)
- Fixed a few cases where particles and/or decals did not appear for some weapons at times. (Author: terencehill) [1112](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1112)
- Fixed 2 more decal issues. (Author: terencehill) [1127](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1127)
- Added checks to make sure neither entity has been deleted when calling touch functions. (Author: Mario) [1139](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1139)
- Fixes for WarpZoneLib_BoxTouchesBrush function. (Author: bones_was_here) [1142](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1142)
- Fixed inverted damage and edgedamage for splash damage having completely wrong force calculations. (Author: Dr. Jaska) [1145](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1145)
- Fixed Crylink and Vaporizer being able to fire with empty magazines. (Author: Dr. Jaska) [1147](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1147)
- Fixed demo camera's (`camera_enable 1` when replaying demos) jerky mouse movement. (Author: terencehill) [1151](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1151)
- Fixed g_maplist_remove completely breaking and always removing the 2nd option. (Author: Dr. Jaska) [1156](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1156)
- Fixed a few issues with instagib and LMS items and in particular extralife. (Author: terencehill) [1164](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1164)
- Fixed Extralife pickup sound + Improved instagib powerup replacement algorithm. (Author: terencehill) [1174](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1174)
- Fixed several Keepaway issues. (Author: bones_was_here) [1175](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1175)
- Fixed not notifying about the vote in progress being canceled when the match ends. (Author: terencehill) [1181](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1181)
- Fixed URLs and syntax errors in AppData. (Author: AsciiWolf) [96](https://gitlab.com/xonotic/xonotic/-/merge_requests/96)
- Fixed make scripts failing with preset MAKEFLAGS which did not start with a dash. (Author: kiwixz) [97](https://gitlab.com/xonotic/xonotic/-/merge_requests/97)

### Gameplay: FT
- Armor, ammo and weapons are no longer reset when player is gibbed, for example for players falling into the void. (Author: terencehill) [1179](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1179)

### Gameplay: Mayhem and Team Mayhem
- Created Mayhem and Team Mayhem gamemodes. (Author: Dr. Jaska) [884](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/884)
- Mayhem is a mode full of chaos and deathmatching where everyone respawns with all weapons and full health/armor stack!  
  In these gamemodes score is given 75% based on damage dealt and 25% based on frags.  
  In Free For All Mayhem the player (and in Team Mayhem the team) with the most damage dealt and frags earned at the end of a match wins!

### UI: HUD etc
- Make the speed unit a global, consistent setting. (Author: z411) [1130](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1130)
- Added an option in HUD editor to show a line for centering panels. (Author: terencehill) [1157](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1157)

### Artwork: Weapons

### Gameplay: Map entities
- Fixed blocking of moving map entities with a BSP model being broken. (Author: terencehill) [1092](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1092)

### Gameplay: CTF
- Fixed not getting notifications in CTF if another team gets another team's flag in 3-4 team CTF. (Author: z411) [1087](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1087)

Refactoring
---
### UNKNOWN SECTION
- Moved handling of the nade orb overlay to client side, resolved the need to network orb states via STAT macroes. (Author: Mario) [1035](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1035)
- Some minor tweaks to the QC physics logic. (Author: Mario) [1077](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1077)
- Use gender-neutral pronouns when referring to the player. (Author: squidink7) [1111](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1111)
- Added a registry field for renamed weapons to define their previous name to maintain compatibility. (Author: Mario) [1119](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1119)
- Clean up ammo_pickupevalfunc to not reference items directly. (Author: Mario) [1120](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1120)
- Added a new function to copy fields from items to replacements. (Author: Mario) [1124](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1124)
- Switched to QuakeC-based setcolor function implementation. (Author: Mario) [1126](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1126)
- Removed override of engine +showscores command. (Author: bones_was_here) [1128](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1128)
- Improved xonotic-linux-sdl.sh script slightly. (Author: Dr. Jaska) [99](https://gitlab.com/xonotic/xonotic/-/merge_requests/99)
- Updated rsync scripts and their README. (Author: Dr. Jaska) [100](https://gitlab.com/xonotic/xonotic/-/merge_requests/100)

### Artwork: Weapons
- Added Overkill weaponry decompiled sources (Blender 2.79b source files) and organize weapon directory structure to be similar to xonotic-data.pk3dir/models/weapons/. (Author: LegendaryGuard) [24](https://gitlab.com/xonotic/mediasource/-/merge_requests/24)
- Optimized h_ok_grenade, h_ok_hmg, h_ok_mg, h_ok_rl and h_ok_sniper models to reduce file size. (Author: LegendaryGuard) [1106](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1106)
- Updated and optimized Akordeon, Devastator, Fireball, Tuba and Vortex v_* files, scaled by -15%. Fixed Fireball Gloss material, scaled Tuba UVs by -20% and scaled v_kleinbottle by -35%. (Author: LegendaryGuard) [1113](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1113)
- Optimized g_fireball and fixed g_fireball and v_fireball UVs and enhanced slight details in the fireball textures. (Author: LegendaryGuard) [1123](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1123)

### Gameplay: Physics
- Made all remaining entities use physics logic handled by QuakeC gamecode rather than the engine, allowing for future advancements in movement and gameplay. (Author: Mario) [1044](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1044)

NO_TYPE_GIVEN
---
### UNKNOWN SECTION
- Implemented compatibility for Quake 3 (and its mods) mapinfo file formats (e.g. .defi and .arena) to a degree. (Author: Mario) [856](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/856)
- Made `r_ambient` default to `0` instead of `4`. (Author: bones_was_here) [993](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/993)
- Custom server's quickmenu. (Author: terencehill) [1018](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1018)
- Made CTF flags to be colored by gamecode instead of assets being colored. (Author: Mario) [1038](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1038)
- Removed view projecting function cs_project. (Author: Mario) [1043](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1043)
- Changed default font hinting to 2 and grouped font cvars better. (Author: bones_was_here) [1048](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1048)
- Created a new electricity effect. (Author: LegendaryGuard) [1062](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1062)
- Cleaned up obsolete warmup info messages. (Author: z411) [1088](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1088)
- Add menu_gamemenu client cvar to enable/disable the in-game menu. (Author: z411) [1101](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1101)
- Localization: update translation names for zh series. (Author: William Goodspeed) [1115](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1115)
- Added proper names to the Indonesian and Latin translations. (Author: SpiKe) [1143](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1143)
- Delete 4 unused model files. (Author: Dr. Jaska) [1149](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1149)
- Removed flag respawn printing backtrace if called twice within half a second. (Author: Dr. Jaska) [1155](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1155)
- Added an off-switch for monster loot (`g_monsters_drop`). (Author: Dr. Jaska) [1162](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1162)
- Removed map entity whitelist checks. (Author: LegendaryGuard) [1180](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1180)
- Implement safe removal of elements of an intrusive list while looping over them. (Author: terencehill) [1148](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1148)

### Gameplay: Physics
- q3df teleporter flags. (Author: Juhu) [1135](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1135)
- Compensate for Q3 frametime-dependent gravity in configs and jump pad code. (Author: bones_was_here) [1138](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1138)

### Artwork: Weapons

### UI: HUD etc
- Made scoreboard pings colored! (Author: z411) [968](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/968)
- Made showing the average scores per round in the scoreboard possible. (Author: terencehill) [975](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/975)
- Removed legacy MOTD. (Author: bones_was_here) [1012](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1012)
- Disabled CTS recording damage taken and dealt. (Author: Dr. Jaska) [1025](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1025)
- Scoreboard UI and team selection. (Author: terencehill) [1027](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1027)
- Removed useless damage dealt, damage taken and ELO scoreboard columns from CTS. (Author: Dr. Jaska) [1030](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1030)
- Improve duel centerprint title. (Author: terencehill) [1039](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1039)
- Improved StrafeHUD. (Author: Juhu) [1066](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1066)
- Allowed players to make the server's custom quickmenu default. (Author: terencehill) [1090](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1090)
- Item Pickup panel. (Author: z411) [1094](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1094)
- Implement cl_gunoffset and casings-related fixes and refactoring. (Author: bones_was_here) [1100](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1100)
- Clean up ammo sorting in the HUD to not reference items directly. (Author: Mario) [1121](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1121)
- Added `%o` and `%O` to chat formatting so that players can easily check and/or tell their coordinates, e.g. check step height. (Author: Dr. Jaska) [1166](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1166)
- Made 100% abstain votes in map voting choose a random map. (Author: Dr. Jaska) [1172](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1172)

### Gameplay: Balance
- [Created the Xonotic Balance Council responsible for future balance changes.](https://xonotic.org/balance_council/)

- New opt-in feature for less stalemates in CA when round timer runs out. (Author: Dr. Jaska) [1068](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1068)
- whitelist g_*_weaponarena "most" and "most_available". (Author: Dr. Jaska) [1103](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1103)
- Made Crylink full-auto instead of semi-automatic when it has only 1 spike (pellet). (Author: Dr. Jaska) [1153](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1153)
- Added overkill blaster keepforce and keepdamage cvars. (Author: bones_was_here) [1158](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1158)

### Other: Moderation
- New banning systems (ignore, muteban, voteban and playban) and new features for moderation purposes. (Author: LegendaryGuard) [945](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/945)