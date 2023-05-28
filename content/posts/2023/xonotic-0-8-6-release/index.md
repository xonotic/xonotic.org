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

### Download information:

#### New to Xonotic?
[Download it here](/download)

#### Already have Xonotic on your machine?
There's no need to download the game again to get into the action. Use the following steps to upgrade your client to the 0.8.6 release:

  1. Navigate to your Xonotic installation folder
  2. Navigate to the misc/tools/rsync-updater folder
  3. Execute the update-to-release.sh (for Linux or Mac) or update-to-release.bat (for Windows) and wait for it to complete
  4. Profit. You're done!

---

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

<!-- override some CSS so table looks better -->
<style>
table {
	table-layout: auto;
	width: 100%;
}
</style>

---

### User Interface?

##### HUD?

- Improve duel centerprint title (Hey, terencehill! Add this in the description, please:
https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1039)


##### Menu?

##### Translations?

---

### XonStat? <a name="xonstat"></a>
---

### NetRadiant level editor? <a name="netradiant"></a>

---

### Other changes in Xonotic?

Add new moderation tools for the game, one of the main objectives for 0.8.6. Apart of that, what about other new features?





<!-- output of prepare_releasenotes.py follows -->




Generated Release Notes
===

Feature(s)
---
### Gameplay: Physics
- Jump pad trajectory origin and q3compat (Author: Juhu, Reviewer(s): bones_was_here, Dr. Jaska) [1134](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1134)

### Other: VFX
- Use the player's color for Vortex charging instead of predefined colors (Author: Mario) [1098](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1098)

### UNKNOWN SECTION
- Add Survival, a gamemode where randomly selected hunters must frag all the survivors without being caught (Author: Mario) [1072](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1072)
- Add Team Keepaway, a teamplay variant of Keepaway where points are awarded for each frag to the team in possession of the ball (Author: Mario) [1045](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1045)
- Implemented announcer queue (Author: z411) [1075](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1075)
- Automatic per-map min & max player limits, many warmup and player count and Welcome message things (Author: bones_was_here) [1022](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1022)
- Add option to disable freecam (observer) in Clan Arena (enabled by default in XPM) (Author: z411) [1081](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1081)
- Implement g_warmup > 1 and related fixes and refactoring (Author: bones_was_here, Reviewer(s): z411) [1082](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1082)

### Gameplay: Map ents
- Teamed items fixes and Q3 compatibility (Author: bones_was_here) [1079](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1079)

### Gameplay: Mutators
- Allow manual powerup dropping (with use key) & fix powerup dropping outside of the map (Author: z411) [1074](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1074)

### Artwork: Monsters
- Add LOD models for the monsters to boost performance with lots of monsters in the map and fix some LOD related bugs (Author: Mario) [1069](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1069)

### Bots: Behaviour
- Bot aim improvements (Author: terencehill) [1063](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1063)

### UI: HUD etc
- Map vote screen: expand winner map image to the center of the screen for a second before loading the winner map (Author: terencehill) [1060](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1060)

### Gameplay: LMS
- LMS: allow players to get back into the game if they spectated (Author: terencehill) [1051](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1051)

Fix(es)
---
### UNKNOWN SECTION
- Instagib and LMS: fix a few issues with instagib items and in particular extralife (Author: terencehill) [1164](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1164)
- Fix 2 decal issues (Author: terencehill) [1127](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1127)
- Fix #2777 and a related issue (about decals) (Author: terencehill) [1112](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1112)
- Several fixes for minor issues (Author: Mario) [1095](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1095)
- Fix some shotgun bugs (Author: terencehill) [1061](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1061)
- Improve instagib powerup replacement algorithm + Extralife pickup sound fix (Author: terencehill) [1174](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1174)
- Fix some bmodels not being linked/unlinked correctly with sv_areagrid_link_SOLID_NOT 0 (Author: Juhu, Reviewer(s): bones_was_here) [1168](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1168)
- Fix compilation on macOS (Author: kiwixz) [140](https://gitlab.com/xonotic/darkplaces/-/merge_requests/140)
- Demo camera: fix jerky mouse movement in all directions (Author: terencehill) [1151](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1151)
- Check to make sure neither entity has been freed when calling touch functions (Author: Mario) [1139](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1139)
- Release the mouse during loading screen (Author: kiwixz) [138](https://gitlab.com/xonotic/darkplaces/-/merge_requests/138)
- Allow mappers to define item skins (Author: Mario) [1107](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1107)
- Fix error spam that occurs when standing in the way of rotating doors (Author: Mario) [1105](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1105)
- Disable sv_gameplayfix_unstickplayers as it introduces glitchy visuals while riding elevators (Author: Mario) [1071](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1071)
- Clear item waypoints when deleting items to fix issues with dropped powerups (Author: Mario) [1070](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1070)
- Merge branch Mario/pokenade_crash_fix (XS merge request) (Author: Mario) [1041](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1041)
- When the match is over notify that the vote in progress is canceled (Author: terencehill) [1181](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1181)
- Keep sockets opened after first disconnect (Author: kiwixz) [137](https://gitlab.com/xonotic/darkplaces/-/merge_requests/137)
- Reinstate the ability to override engine commands with QC commands (Author: bones_was_here, Reviewer(s): terencehill) [136](https://gitlab.com/xonotic/darkplaces/-/merge_requests/136)
- Refactor loading screen and fix it (Author: kiwixz) [135](https://gitlab.com/xonotic/darkplaces/-/merge_requests/135)
- flip bot_primary_fireballmooth boolean so bots are able to fire fireball alt fire randomly (Author: Dr. Jaska) [1104](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1104)
- Fix team selection for 0.8.5 clients on current servers that use g_balance_teams 0 (Author: bones_was_here) [1059](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1059)
- Fix #2718 "Online dedicated servers panic when gotomap is called during an intermission" (Author: terencehill) [1055](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1055)

### Gameplay: FT
- Freezetag: don't reset armor/ammo/weapons of players falling into space (Author: terencehill, Reviewer(s): bones_was_here) [1179](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1179)

### Other: Misc
- Fix build with GCC 13 (Author: Freddy) [198](https://gitlab.com/xonotic/netradiant/-/merge_requests/198)

### UI: HUD etc
- Make the speed unit a global, consistent setting (Author: z411) [1130](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1130)

### Artwork: Weapons
- Optimize g_fireball and fix g_fireball and v_fireball UVs and enhance sight details in the fireball textures (Author: LegendaryGuard, Reviewer(s): terencehill) [1123](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1123)

### Gameplay: Map ents
- Fix #2744 "Blocking of bmodel movers is broken" (Author: terencehill) [1092](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1092)

### Gameplay: CTF
- Fixed notification bug in 3-4 team CTF (Author: z411) [1087](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1087)

### Gameplay: Physics
- Work around float precision problems with scaled model bboxes (Author: bones_was_here) [1078](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1078)

Refactoring
---
### UNKNOWN SECTION
- Add a registry field for renamed weapons to define their previous name to maintain compatibility (Author: Mario) [1119](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1119)
- Some minor tweaks to the QC physics logic (Author: Mario) [1077](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1077)
- Remove override of engine +showscores command (Author: bones_was_here, Reviewer(s): terencehill) [1128](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1128)

### Artwork: Weapons
- Optimize h_ok_grenade, h_ok_hmg, h_ok_mg, h_ok_rl and h_ok_sniper models (Author: LegendaryGuard) [1106](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1106)

### Gameplay: Physics
- Make all entities (such as monsters and turrets) use physics logic handled by Xonotic rather than the engine, allowing for future advancements in movement and gameplay (Author: Mario) [1044](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1044)

NO_TYPE_GIVEN
---
### Other: Campaign
- Campaign update (Author: Dr. Jaska) [178](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/178)

### UNKNOWN SECTION
- New electricity effect (Author: LegendaryGuard, Reviewer(s): Mario) [1062](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1062)
- Remove map entity whitelist checks (Author: LegendaryGuard, Reviewer(s): bones_was_here) [1180](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1180)
- Hud editor center line (Author: terencehill) [1157](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1157)
- Fix #2724 "Pressing escape opens wrong menu when watching demos". (Author: terencehill) [1058](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1058)
- Merge branch Mario/hlac_sound_fix (S merge request) (Author: Mario) [1040](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1040)
- Merge branch Mario/ctf_colormaps (S merge request) (Author: Mario) [1038](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1038)
- Merge branch Mario/nade_orb_overlay  (S merge request) (Author: Mario) [1035](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1035)
- Remove legacy MOTD (Author: bones_was_here, Reviewer(s): terencehill) [1012](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1012)
- Remove GLX client support in developer builds (./all compile) (Author: bones_was_here) [95](https://gitlab.com/xonotic/xonotic/-/merge_requests/95)
- Make best pings green, good pings yellow, medium pings orange and worst pings red in scoreboard (Author: z411) [968](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/968)
- Update the list of translators in the credits (Author: SpiKe) [1176](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1176)
- 100% abstain votes in map voting now chooses a random map (Author: Dr. Jaska) [1172](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1172)
- add %o and %O to chat formatting for own origin (Author: Dr. Jaska) [1166](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1166)
- Add SPAWNFUNC_CHECK_FIELDS macro to enable/disable map entity whitelist checks (Author: LegendaryGuard) [1163](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1163)
- Monster loot off-switch (Author: Dr. Jaska) [1162](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1162)
- Crylink: require 2 or more pellets for waitrelease (Author: Dr. Jaska) [1153](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1153)
- Fix crylink and vaporizer being able to fire with empty magazines (Author: Dr. Jaska) [1147](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1147)
- Add proper names to the Indonesian and Latin translations (Author: SpiKe) [1143](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1143)
- Switch to QC-based setcolor implementation, don't fall back to engine player values (Author: Mario) [1126](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1126)
- Add a new function to copy fields from items to replacements (Author: Mario) [1124](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1124)
- Clean up ammo sorting in the HUD to not reference items directly (Author: Mario) [1121](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1121)
- Gibs: tweak settings to reduce exaggerated throw velocity (Author: terencehill) [1114](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1114)
- Add forgotten cell and explosives ammo pack item models change log for release 0.8.5 (Author: LegendaryGuard, Reviewer(s): Ant Zucaro, bones_was_here) [73](https://gitlab.com/xonotic/xonotic.org/-/merge_requests/73)
- Cleanup obsolete warmup info messages (Author: z411) [1088](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1088)
- Make sv_gameplayfix_droptofloorstartsolid_nudgetocorrect functional again (Author: Mario) [1084](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1084)
- Use Mario's RemoveItem function to remove powerup when expired (Author: z411) [1080](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1080)
- Merge branch Mario/no_csproject_test (XS merge request) (Author: Mario) [1043](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1043)
- Merge branch Mario/qc_droptofloor (XS merge request) (Author: Mario) [1042](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1042)
- r_ambient: default to 0 (Author: bones_was_here) [993](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/993)
- Team page: improve wording of header paragraph (Author: bones_was_here) [59](https://gitlab.com/xonotic/xonotic.org/-/merge_requests/59)
- Breaking changes for 0.8.6 (Author: bones_was_here) [1178](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1178)
- Package xoncompat repo containing assets from removed maps (Author: bones_was_here) [102](https://gitlab.com/xonotic/xonotic/-/merge_requests/102)
- Keepaway fixes (Author: bones_was_here) [1175](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1175)
- Update entity definition bboxes to match 0.8.5 and/or xonotic-data.pk3dir!1131 (Author: bones_was_here) [175](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/175)
- Update rsync scripts and README (Author: Dr. Jaska, Reviewer(s): bones_was_here) [100](https://gitlab.com/xonotic/xonotic/-/merge_requests/100)
- slightly improved xonotic-linux-sdl.sh (Author: Dr. Jaska, Reviewer(s): bones_was_here) [99](https://gitlab.com/xonotic/xonotic/-/merge_requests/99)
- Add overkill blaster keepforce and keepdamage cvars (Author: bones_was_here) [1158](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1158)
- fix g_maplist_remove completely breaking due to argv override (Author: Dr. Jaska) [1156](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1156)
- Resolve "Flag respawn called twice quickly" (Author: Dr. Jaska) [1155](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1155)
- Don't link pure and SOLID_NOT entities to the area grid in DP master (Author: bones_was_here) [1154](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1154)
- Delete 4 unused model files (Author: Dr. Jaska) [1149](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1149)
- Implement safe removal of elements of an intrusive list while looping over them (Author: terencehill, Reviewer(s): bones_was_here) [1148](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1148)
- Resolve "Setting a weapon's primary damage to 1 causes extremely overpowered push" (Author: Dr. Jaska, Reviewer(s): terencehill, bones_was_here) [1145](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1145)
- Autopause for dedicated servers, better autopause for singleplayer/listen (Author: bones_was_here) [1144](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1144)
- WarpZoneLib_BoxTouchesBrush() fixes (Author: bones_was_here) [1142](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1142)
- Update entities.ent with weapon_arc (Author: SpiKe) [173](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/173)
- Remove legacy Quake bbox expansion, give QC full control of bboxes (Author: bones_was_here) [1131](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1131)
- Fix qcsrc genmod.sh including files twice (Author: kiwixz) [1129](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1129)
- Merge pending-release into master (Author: SpiKe) [171](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/171)
- fov calculating python script (Author: Dr. Jaska) [98](https://gitlab.com/xonotic/xonotic/-/merge_requests/98)
- tools: remove daemonmap (Author: Thomas Debesse) [197](https://gitlab.com/xonotic/netradiant/-/merge_requests/197)
- Unload dlcache packs when changing map or disconnecting (Author: bones_was_here) [134](https://gitlab.com/xonotic/darkplaces/-/merge_requests/134)
- Implement DP_QC_FINDBOX builtin (Author: bones_was_here) [132](https://gitlab.com/xonotic/darkplaces/-/merge_requests/132)
- Add cvars that disable linking of SOLID_NOT entities: [cl|sv]_areagrid_link_SOLID_NOT (Author: bones_was_here) [131](https://gitlab.com/xonotic/darkplaces/-/merge_requests/131)
- Clean up ammo_pickupevalfunc to not reference items directly (Author: Mario) [1120](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1120)
- Fix wrong minimap scales on Dance, Implosion, Space-Elevator and Xoylent (Author: SpiKe) [170](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/170)
- Localization: update translation names for zh series (Author: William Goodspeed) [1115](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1115)
- Use gender-neutral pronouns when referring to the player (Author: squidink7) [1111](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1111)
- Add trident map (Author: Amadeusz Sławiński) [169](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/169)
- whitelist g_*_weaponarena "most" and "most_available" (Author: Dr. Jaska) [1103](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1103)
- Add menu_gamemenu client cvar to enable/disable the in-game menu (Author: z411) [1101](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1101)
- Quickmenu: allow players to make server's custom quickmenu default (Author: terencehill) [1090](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1090)
- Atelier: place the teleporter exits slightly above the ground + use nodrawnonsolid instead of caulk for the decals (Author: SpiKe) [166](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/166)
- Add copies of LOD models for a crate and jumppad that work with automatic LOD loading (Author: Mario) [165](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/165)
- Add AGPLv3 Xonotic website LICENSE.txt and licenses for self-hosted components (Author: bones_was_here, Reviewer(s): Ant Zucaro) [70](https://gitlab.com/xonotic/xonotic.org/-/merge_requests/70)
- New opt-in feature for less stalemates in CA when round timer runs out (Author: Dr. Jaska) [1068](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1068)
- Remove modernizr.js (Author: bones_was_here) [69](https://gitlab.com/xonotic/xonotic.org/-/merge_requests/69)
- Implement and document asset processing for markdown images (Author: bones_was_here) [68](https://gitlab.com/xonotic/xonotic.org/-/merge_requests/68)
- Features and fixes for nav bar and footer (Author: bones_was_here) [67](https://gitlab.com/xonotic/xonotic.org/-/merge_requests/67)
- Improved StrafeHUD (Author: Juhu) [1066](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1066)
- q3map2: add -externalnames option to write explicit external lightmap names... (Author: Thomas Debesse) [196](https://gitlab.com/xonotic/netradiant/-/merge_requests/196)
- Make it build on M1 Mac (Author: slipher) [195](https://gitlab.com/xonotic/netradiant/-/merge_requests/195)
- Implosion: Flare lights + clip some walls + brush and texture cleanups (Author: SpiKe) [163](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/163)
- Do not crash in Winding_Clip when using -D_GLIBCXX_ASSERTIONS (Author: Walter Doekes) [194](https://gitlab.com/xonotic/netradiant/-/merge_requests/194)
- Add NSFW to Rules (Author: bones_was_here) [66](https://gitlab.com/xonotic/xonotic.org/-/merge_requests/66)
- Stormkeep: Fix a wallwalk to the MH (Author: SpiKe, Reviewer(s): Mirio, bones_was_here) [162](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/162)
- Add torrent and github mirror links (Author: Gary Moon) [65](https://gitlab.com/xonotic/xonotic.org/-/merge_requests/65)
- Add a new bot skill level for extremely tough bots (Author: Dr. Jaska) [1053](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1053)
- Remove Drain and Oil Rig (Author: SpiKe) [161](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/161)
- Merge branch Mario/weapon_alias_fix (XS merge request) (Author: Mario) [1052](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1052)
- Change default font hinting to 2, group font cvars better (Author: bones_was_here) [1048](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1048)
- Fix URLs and syntax errors in AppData (Author: AsciiWolf) [96](https://gitlab.com/xonotic/xonotic/-/merge_requests/96)
- Add more elaborate information for download/upgrade to 0.8.5 notes. (Author: Morosophos) [63](https://gitlab.com/xonotic/xonotic.org/-/merge_requests/63)
- 0.8.5 release post: do not mention faster map build (Author: Thomas Debesse) [62](https://gitlab.com/xonotic/xonotic.org/-/merge_requests/62)
- Enable dl.unvanquished.net download mirror (Author: Thomas Debesse) [61](https://gitlab.com/xonotic/xonotic.org/-/merge_requests/61)
- delete an old leftover gtkradiant build menu (Author: Thomas Debesse) [160](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/160)
- Improve duel centerprint title (Author: terencehill) [1039](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1039)
- First bunch of merge from NetRadiantCustom (Author: Thomas Debesse) [193](https://gitlab.com/xonotic/netradiant/-/merge_requests/193)
- Fix #2698 "arc is missing a suicide death message" (Author: terencehill) [1032](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1032)
- Remove damage dealt, damage taken and ELO scoreinfo labels and therefore scoreboard panels from modes with independent players (CTS) (Author: Dr. Jaska) [1030](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1030)
- Scoreboard UI and team selection (Author: terencehill) [1027](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1027)
- Fix mismatching player sorting between server and client (Author: terencehill) [1026](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1026)
- Disable CTS recording damage taken(/dealt) to scores (Author: Dr. Jaska) [1025](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1025)
- Custom server's quickmenu (Author: terencehill, Reviewer(s): z411) [1018](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1018)
- Release 0.8.5 (Author: bones_was_here) [60](https://gitlab.com/xonotic/xonotic.org/-/merge_requests/60)
- Scoreboard: allow showing average scores per round (Author: terencehill) [975](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/975)
- Upgrade to self-hosted Font Awesome 6 (Author: bones_was_here, Reviewer(s): Ant Zucaro) [57](https://gitlab.com/xonotic/xonotic.org/-/merge_requests/57)
- Adding the natural curve mouse acceleration (Author: Francisco Parra Pérez) [122](https://gitlab.com/xonotic/darkplaces/-/merge_requests/122)
- Mayhem and Team Mayhem gamemodes (Author: Dr. Jaska) [884](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/884)
- gitignore more map compilation output (Author: Thomas Debesse) [150](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/150)
- Merge branch Mario/q3compat_sanity (M merge request) (Author: Mario, Reviewer(s): bones_was_here) [856](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/856)
- LMS updates (Author: terencehill) [808](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/808)
- Debugger/go (Author: Mirio) [43](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/43)

### Gameplay: Physics
- Compensate for Q3 frametime-dependent gravity in configs and jump pad code (Author: bones_was_here, Reviewer(s): Juhu) [1138](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1138)
- q3df teleporter flags (Author: Juhu, Reviewer(s): bones_was_here) [1135](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1135)

### Artwork: Weapons
- Add Overkill weaponry decompiled sources (Blender 2.79b source files) and organize weapon directory structure to be similar to xonotic-data.pk3dir/models/weapons/ (Author: LegendaryGuard) [24](https://gitlab.com/xonotic/mediasource/-/merge_requests/24)
- Update and optimize Akordeon, Devastator, Fireball, Tuba and Vortex v_* files, scaled by -15%. Fix Fireball Gloss material, fix Tuba UVs scaled by -20% and scale v_kleinbottle by -35% (Author: LegendaryGuard, Reviewer(s): terencehill) [1113](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1113)

### Artwork: Monsters
- Add sources for the new monster models (Author: Mario) [28](https://gitlab.com/xonotic/mediasource/-/merge_requests/28)

### UI: HUD etc
- Item Pickup panel (Author: z411) [1094](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1094)
- Implement cl_gunoffset and casings-related fixes and refactoring (Author: bones_was_here) [1100](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/1100)

### Gameplay: Balance
- Create the Xonotic Balance Council (Author: bones_was_here) [72](https://gitlab.com/xonotic/xonotic.org/-/merge_requests/72)

### Artwork: Maps
- Replace map screenshots removing old Nexuiz assets, no items display (Author: LegendaryGuard) [168](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/168)

### Other: Moderation
- New banning systems (ignore, muteban, voteban and playban) and new features for moderation purposes (Author: LegendaryGuard) [945](https://gitlab.com/xonotic/xonotic-data.pk3dir/-/merge_requests/945)
