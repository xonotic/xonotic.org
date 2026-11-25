---
author: k9er
comments: false
date: 2026-12-14 09:30:00+00:00
slug: balance-council-anniversary
title: 'Balance Council 4th Anniversary'
categories:
- Announcements
---

<!-- https://gohugo.io/content-management/summaries/ -->
Four years ago today, the [balance council][Council] was voted into existence.
To celebrate its anniversary, here's a look back at all the changes it has voted on over the past four years.
<!--more-->

Since it was [voted][Creation] into existence, the balance council has considered 23 [balance votes][Votes], of which 22 passed.

For those who aren't familiar with it, the balance council votes on proposed changes to important aspects of game balance, primarily weapons.
Before its creation, there was no formal process for approving balance changes, and decisions were largely left to the game's developers and maintainers.
The council was established to formalize this process and give the community a greater say in how the game is balanced.

Without further ado, here's a look at what we've changed!

### Crylink primary damage adjustments (rework)
https://xonotic.org/balancevotes/3

The first ever vote of the council adjusted how the Crylink primary's pellets dealt damage.

Previously, pellets dealt full damage (10) at the centre of their radius, falling off to half damage (5) at the edge.
This was changed so that pellets would deal the full 10 damage over their entire damage radius.
It also stopped the potential damage of pellets from being halved as soon as they bounced off a surface.
This fixed the strange scenario where you'd deal half damage if the pellets bounced even slightly before reaching a player, rather than hitting them directly.

To balance out these buffs, the refire time was increased from 0.7 s to 0.8 s.

### Drop powerups on death
https://xonotic.org/balancevotes/4

`g_powerups_drop_ondeath` was changed from 0 to 1, meaning that players carrying a powerup would now drop it when fragged, allowing others to pick it up.
This makes players think more tactically when carrying a powerup, since dying can now effectively gift it to the enemy.
On the other hand, it also gives more players an opportunity to use powerups, rather than having them disappear with the first player who picks them up dies.

### Disable recoil
https://xonotic.org/balancevotes/5

`g_norecoil` was changed from 0 to 1, disabling crosshair recoil when firing all weapons.
Recoil doesn't fit particularly well in fast-paced arena shooters, where maintaining precise aim is important.
Many custom servers were already disabling it when this vote was called, so the change brought the default settings more in line with how the game was commonly played and what the community wanted.

### Enable shoot-from-eye
https://xonotic.org/balancevotes/7

`g_shootfromeye` was changed from 0 to 1, making shots originate from the player's eye position rather than the position of the gun model.
In other words, shots now visually travel "through the crosshair."

There were various reasons given for approving this change.
While it does look a little strange visually, the main arguments were that gameplay feels better with it enabled and that it makes it harder for shots to clip objects on their way to the crosshair.

### Disable MachineGun reloading (buff)
https://xonotic.org/balancevotes/8

Reloading added a degree of realism to the MachineGun, but the weapon wasn't particularly popular at the time.
Having to reload after only a few seconds of firing made it more of an annoyance than an interesting gameplay mechanic.
Removing reloading made the weapon more convenient to use and gave it a small buff in the process.

### Keep Blaster settings consistent across weapons
https://xonotic.org/balancevotes/18

The Blaster is a very versatile weapon to spawn in with.
So versatile, in fact, that it also appears in several other mutators and weapons: the Offhand Blaster mutator, as well as the secondary fire of the Vaporizer and all Overkill weapons.

For consistency, the council voted to make the settings for these offhand and secondary Blasters match those of the Blaster weapon itself.
This avoids having effectively the same weapon behave differently depending on where it's used.

### Direct push force towards players' center
https://xonotic.org/balancevotes/19

`g_player_damageplayercenter` was changed from 0 to 1, making push force apply relative to the centre of a player's hitbox rather than their camera position.
This meant that damage applied above the vertical halfway point of a player would push them downwards.
Previously, damage had to be above the player's camera position (eyes) to achieve the same effect.
As a result, damage frequently pushed players upwards, making it quite difficult to knock them down.

This change made combat less aerial and made downward knockback much easier to achieve.

### Use team spawnpoints in Freeze Tag
https://xonotic.org/balancevotes/22

`g_freezetag_team_spawns` was changed from 0 to 1, making teams spawn together each round in Freeze Tag.

This made more sense for a team-based gametype that's often played on maps with dedicated team bases.
Spawning together also makes it easier for teammates to coordinate and work together from the beginning of each round.

### Use team spawnpoints in Clan Arena
https://xonotic.org/balancevotes/23

`g_ca_team_spawns` was changed from 0 to 1, making teams spawn together each round in Clan Arena, for the same reasons as the previous vote.

### Allow New Toys weapons to spawn
https://xonotic.org/balancevotes/24

This vote allowed New Toys weapons (Mine Layer, Port-O-Launch, Grappling Hook, Heavy Laser Assault Cannon, Rifle, Seeker, and Arc) to spawn on maps, provided that mappers had placed them there.
Some of the New Toys weapons still weren't perfectly polished, but the council's consensus was that if a mapper had intentionally placed one on their map, players should be able to use it.

### Modify Crylink primary pellet behavior (rework)
https://xonotic.org/balancevotes/25

Previously, when one of the Crylink primary's pellets damaged an enemy, all the other pellets in the group would explode together, provided doing so wouldn't damage a teammate.
This behaviour made the Crylink primary quite easy to deal damage with, so it was disabled.
The damage at the edge of the pellet radius was also restored to half the damage at its centre, going from 10 to 5.
Additionally, the previous refire time increase from 0.7 s to 0.8 s was reverted, returning to 0.7 s.

### Make the Ice nade freeze instead of frag (nerf)
https://xonotic.org/balancevotes/27

The Ice nade previously offered an almost guaranteed kill.
It would freeze players while rapidly reducing their health, meaning that stepping within its radius could effectively hand the nade owner a free frag.

The council voted to remove its damage entirely.
Instead, it now freezes players without dealing damage, leaving them vulnerable to other sources of damage for the duration of the 3-second freeze.

### Remove explosion from Napalm and Monster nade (nerf)
https://xonotic.org/balancevotes/28

Previously, the Napalm and Monster nades spawned their own unique effects while also producing the same explosion as the Normal nade.
This made them clearly more powerful than the default option, despite their unique effects already being powerful enough on their own.
It also defeated the point of having different nade types to choose from, since there was little reason to pick the Normal nade.

The explosion effect was therefore removed from these nades, and all nades were changed to explode when destroyed rather than triggering their unique effects.

### Allow only Blaster to hit projectiles, and disable Devastator rocket deflection
https://xonotic.org/balancevotes/29

Projectile interactions were often considered annoying and unpredictable, so they were restricted such that only the Blaster could directly hit other projectiles, such as Mortar grenades and Electro balls.

Additionally, explosions and splash damage could previously deflect Devastator rockets.
This was often frustrating, as rockets could be knocked off course by seemingly unrelated interactions, so the council voted to disable this behavior as well.

### Increase Blaster switch speed (buff)
https://xonotic.org/balancevotes/30

`g_balance_blaster_primary_animtime`, `g_balance_blaster_switchdelay_drop`, and `g_balance_blaster_switchdelay_raise` were all changed to 0.1, allowing players to switch to and from the Blaster more quickly.

[Blaster jumping][Blaster Jumping] is one of the most common uses of the weapon, but the longer switch delays previously made it easier to mess up the timing.
Reducing these delays made Blaster jumping more consistent and also made weapon combos involving the Blaster more viable.

### Use Gaussian spread for all random spread
https://xonotic.org/balancevotes/31

Gaussian 2D spread was introduced for all weapons that use random spread.
This makes the randomness more naturally distributed, clustering shots closer to the centre on average and slightly rewarding good aim.
The overall average spread was minimally affected by the change, so the main difference is in how shots are distributed rather than how far they spread.

### Make Heal nade work slower and last longer (rework)
https://xonotic.org/balancevotes/32

The Heal nade was capable of restoring 150 health in just 5 seconds, which was considered excessive.
The council voted to halve its healing rate while doubling its duration.
This kept the total potential healing the same, but made it less immediate so players had to take on a greater risk by standing still for longer to receive the full benefit.
The damage per second dealt to enemies inside the nade was left unchanged.

### Increase Veil nade orb radius (buff)
https://xonotic.org/balancevotes/33

The Veil nade's orb radius was increased from 200 to 250, a 25% increase.
This gives players more room to maneuver within the orb, making it a little easier to take advantage of its effects.

### Modify Heavy Laser Assault Cannon damage and refire (rework)
https://xonotic.org/balancevotes/34

The fire rate of the Heavy Laser Assault Cannon (HLAC) was almost doubled, while its damage was almost halved.
The aim was to make the weapon more viable by allowing it to fire more frequently, making it less likely that every shot would miss.
Its spread was also significantly reduced, addressing one of the weapon's biggest problems.
Push force was reduced considerably to minimize annoyance, and the damage radius was slightly reduced.

To account for the faster fire rate, the HLAC now gives 60 ammo when picked up instead of 30.
As for the secondary, the ammo count was reduced and the force and damage radius were adjusted accordingly.

Overall, these changes made the HLAC considerably more viable, and it has seen more use since the rework.

### Various buffs to the Mine Layer (buff)
https://xonotic.org/balancevotes/35

The lifetime of Mine Layer mines was tripled, the mine limit was increased from 3 to 4, and the refire time was reduced from 1.5 s to 1 s.
The Mine Layer was a neat concept as one of the New Toys weapons, but it wasn't seeing much use.
It took too long to place mines, and they didn't stick around for very long afterwards.

A unique feature was also added to proximity detonation: the closer an enemy gets, the sooner the mine detonates.
This increases the potential damage of mines and makes avoiding them by simply running over them much more difficult.

To somewhat counterbalance these buffs, the mid-air travel speed of mines was reduced.
They were also made susceptible to splash damage from other weapons, allowing players to nudge them away from important map objectives such as powerups or flags in Capture The Flag.
Finally, the damage dealt by remotely detonating mines was reduced to match the damage of proximity detonation.

### Reduce Magnet buff radius (nerf)
https://xonotic.org/balancevotes/36

The Magnet buff previously had a huge pickup range and could even attract items through walls, often leaving players with it excessively stacked with items.
The council voted to reduce its pickup radius, change its attraction volume from a cube to a sphere, and require line of sight to an item's origin before it could be picked up.

### Increase MachineGun fire rate (rework)
https://xonotic.org/balancevotes/37

The MachineGun's fire rate was increased from 10 to 16 shots per second, while its damage was reduced from 10 to 6 per bullet as part of a rework.
Its spread was also reduced to make the weapon more viable at medium to long ranges, which is where this type of weapon is intended to shine.

The secondary fire was adjusted accordingly, now firing bursts of 5 bullets instead of 3, with proportionately less damage per bullet.

---

And that's all 22 successful votes so far!

Looking back, the council has covered quite a range of changes over these four years, from relatively small quality of life adjustments to substantial weapon reworks.

Of course, balance is an ongoing process, and there's still plenty left to discuss, tweak, and improve.
If you have any balance changes you think are worthwhile, you can suggest them to someone on the [balance council][Council] or Xonotic Team.

Happy Xonning!

[Council]: https://xonotic.org/balance_council/
[Votes]: https://xonotic.org/balancevotes/
[Creation]: https://xonotic.org/teamvotes/431/
[Blaster Jumping]: https://xonotic.org/guide#blaster-jumping
