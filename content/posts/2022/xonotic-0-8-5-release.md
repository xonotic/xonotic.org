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

##### Scoreboard item stats
stuff

##### New build systems
- Everything is compiled on a much newer and self-hosted platform.  
  This has fixed several old problems with SDL on Linux.
- Fresh Windows DLLs are compiled automatically as part of every build, replacing ancient manually updated files.  
  Lack of HTTPS and multi channel audio on Windows are fixed.
- HTTPS is now fully supported for pk3 downloads from servers, and is used by default for all xonstat connections.  
  This will improve reliability of servers that take advantage of it.
- A redesigned Makefile is included that makes it easy to compile a build optimised for your machine.

##### Player model skin updates
things

##### Bot skill and waypoints
foo

##### Scrollable chat history
is a thing

##### Underwater oxygen meter
also a thing

##### New sounds
kaboom

##### New weapon models

The arduous effort on the valuable contributions of <a href="http://forums.xonotic.org/member.php?action=profile&amp;uid=8">Morphed</a> did an amazing work making Crylink and Electro models. We were shocked to see his modeling progress.
- Crylink
  - Prototype
  <br/><a href="/m/uploads/2022/01/crylinkprototype.jpg"><img src="/m/uploads/2022/01/crylinkprototype_t.jpg" title="Prototype - Crylink by Morphed" class="left th m10" /></a><br/>
  - Final result
  <br/><a href="/m/uploads/2022/01/crylinkfinalresult.jpg"><img src="/m/uploads/2022/01/crylinkfinalresult_t.jpg" title="Crylink by Morphed" class="right th m10" /></a><br/>

- Electro
  - Prototype
  <br/><a href="/m/uploads/2022/01/electroprototype.jpeg"><img src="/m/uploads/2022/01/electroprototype_t.jpeg" title="Prototype - Electro by Morphed" class="left th m10" /></a><br/>
  - Final result
  <br/><a href="/m/uploads/2022/01/electrofinalresult.jpg"><img src="/m/uploads/2022/01/electrofinalresult_t.jpg" title="Electro by Morphed" class="right th m10" /></a><br/>

##### Freezetag gameplay updates
gg

##### Campaign updates (menu, maps)
- Bromine and Opium now replace the Oilrig and Drain levels.

##### Strafe hud

##### menu updates, especially MOTD and ESC menu

##### More of the UI is translatable

##### Centreprint updates

##### Balance
- vortex push force
- electro midair combos ??
- crylink linkexplode ?

##### Duel gametype

##### Maps
- New official maps: [Bromine](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/129) by *packer* and [Opium](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/135) by *cityy* !
- [Drain](https://xonotic.org/teamvotes/371/) and [Oilrig](https://xonotic.org/teamvotes/384/) are now hidden and will be removed in a future release
- Various fixes and/or visual updates to some maps: [Erbium](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/101), [Finalrage](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/155), [Implosion](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/156), [Silent Siege](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/134), [Solarium](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/132), [Space Elevator](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests/137), and [more](https://gitlab.com/xonotic/xonotic-maps.pk3dir/-/merge_requests?milestone_title=Xonotic+0.8.5+-+Mapping&scope=all&state=merged)

##### afk/idle auto move to spec
- Optionally autokick players who intentionally teamkill - should this be added here?

##### ToS
- At first start, a "Terms of Service" dialogue will explain transparently what data is required or optional.
- Server admins can (and should) specify server specific Terms of Service that will be displayed in the server info dialogue (right-click on the server in the serverlist).

##### warmup & resetmatch

##### Q3 map compatibility
- More appropriate selections of equivalent weapons, ammo, powerups.
- Layouts and item placements that vary between different mods and modes are (almost fully) supported.
- Various map entities including damage sources, weapon and ammo sources, doors and sounds now behave as they do in Q3.

##### Improved map entity functionality
- Several fixes and code cleanup for existing functionality
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
- Several xonstat related bugs fixed
- Wall rockets are no longer a thing
- Taller weapon & ammo hitboxes so you don't jump straight over them without acquiring them
- CTS waypoint placement fixed for even the most complicated map

##### DarkPlaces Engine
- graphics (gloss, q3 glow maps, CL_MeshEntities)
- Significant performance improvements in bot matches and when world origin is inside playable area
- ipv6 dpmasters
- QL-style mouse accel mode

##### NetRadiant
a whole bunch of MRs (mostly by illwieckz) were merged for netradiant
