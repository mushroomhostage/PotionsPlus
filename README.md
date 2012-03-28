PotionsPlus - unlock unused potion and potion effects!

Tired of the standard vanilla potions? With PotionsPlus, you can mix
and match any of the 17 available potion effects (including 7 effects otherwise inaccessible), 
customizing their amplification, duration, and assigning them to any potion bottle of your choosing
(including the 17+ items recognized by the game but otherwise unused).

Features:

* No client mods required
* Potion names show up in tooltips on the client as you would expect
* Unlock 7 effects built into the game but otherwise unused; use any of the 17 effects
* Assign any amplifier and duration amounts
* Assign multiple effects to one potion
* Both drinkable and splash potions receive the assigned effects
* Highly configurable

## Usage

Acquire one of the unused potions, by any means of your chosing. You can use an inventory
editor, another plugin to create items with arbitrary damage values, or something else
to provide access to the unused potions (acquiring the potion items is out of the scope
of this plugin). As an example, here is a 
[Cookbook](http://dev.bukkit.org/server-mods/cookbook/) recipe to allow crafting rotten flesh
with empty glass bottles into Gross Potion, which by default causes the Nausea effect in PotionsPlus:

    @Shapeless
    rotten_flesh, glass_bottle
    -> 1 potion/61

Drink or throw the potion.

Experience its effects.

Repeat.

## Configuration

**verbose** (true): Shows defined potions in console log.

**damageValues**: A map of human-readable potion names to their corresponding damage values, for convenience.
Comes with the [unused potions](http://www.minecraftwiki.net/wiki/Potions#Unused_Potions) by default since they are
amenable to redefinition:

    damageValues:
        Clear: [6,7]
        Diffuse: [11]
        Artless: [13]
        Thin: [14,15]
        Bungling: [22,23]
        Smooth: [27]
        Suave: [29]
        Debonair: [30,31]
        Charming: [38,39]
        Refined: [43]
        Cordial: [45]
        Sparkling: [46,47]
        Potent: [48]
        Rank: [54,55]
        Acrid: [59]
        Gross: [61]
        Stinky: [62,63]

but you can add any value here you want, even redefine existing potions or invent your own numbering scheme.

**potions**: A list of potions to define. This is a list of maps, with the following keys:

**potions potion**: Either the name of a potion, from damageValues, or an integer damage value itself.

**potions effects**: A list of potion effects to assign. This is a 3-element array, of the 
potion mob effect name (beginning with "potion."), amplifier, and duration in ticks, in that order. 
Only effects in vanilla are currently supported, but several are inaccessible normally, and are fully supported in PotionsPlus, including:

* potion.digSpeed (Haste): Arm swings faster, blocks break faster
* potion.digSlowDown (Mining Fatigue): Arm swings slower, blocks break slower
* potion.jump (Jump Boost): Allows the player to jump higher
* potion.confusion (Nausea): Causes the view to wobble 
* potion.resistance (Resistance): Reduces all incoming damage
* potion.waterBreathing (Water Breathing): Causes air meter to be constantly full while underwater
* potion.blindness (Blindness): Creates thick black fog around the player and prevents sprinting and critical hits

Additionally, the normal effects can also be used:

* potion.moveSpeed (Speed): Expands FOV and increases walking speed
* potion.moveSlowdown (Slowness): Contracts FOV and decreases walking speed
* potion.damageBoost (Strength): Increases damage dealt with melee attacks
* potion.heal (Instant Health): Instant health gain
* potion.harm (Instant Damage): Instant health loss
* potion.regeneration (Regeneration): Causes health to regenerate over time
* potion.fireResistance (Fire Resistance): Makes the player resistant to fire and lava
* potion.hunger (Hunger): Causes food meter to deplete faster
* potion.weakness (Weakness): Lowers attack power
* potion.poison (Poison): Deals damage over time

For more information on potion effects, see [Minecraft Wiki](http://www.minecraftwiki.net/wiki/Potion_effects#Parameters).

You can combine multiple effects to make any kind of potion you want.

The default potions configuration below is an example of what is possible.
Please note, the defaults are only meant as a starting point, the idea behind PotionsPlus is you can configure your own
custom potions to your liking. Feel free to share your favorite potions in the discussion thread below.

    - potion: Clear
      effects:
      - [potion.digSpeed, 1, 9600]
      - [potion.weakness, 0, 1800]
    
    - potion: Diffuse
      effects:
      - [potion.moveSpeed, 10, 900]
      - [potion.blindness, 1, 450]
    
    - potion: Artless
      effects:
      - [potion.digSpeed, 100, 200]
    
    - potion: Thin
      effects:
      - [potion.hunger, 0, 1500]
    
    - potion: Bungling
      effects:
      - [potion.jump, 10, 200]
    
    - potion: Smooth
      effects:
      - [potion.resistance, 0, 600]
    
    - potion: Suave
      effects:
      - [potion.moveSpeed, 0, 3600]
      - [potion.damageBoost, 0, 3600]
    
    - potion: Debonair
      effects:
      - [potion.damageBoost, 0, 9600]
      - [potion.hunger, 0, 4800]
    
    - potion: Charming
      effects:
      - [potion.moveSpeed, 3, 1800]
    
    - potion: Refined
      effects:
      - [potion.moveSpeed, 2, 3000]
      - [potion.regeneration, 0, 3000]
      - [potion.harm, 2, 0]
    
    - potion: Cordial
      effects:
      - [potion.digSlowDown, 0, 300]
    
    - potion: Sparkling
      effects:
      - [potion.waterBreathing, 0, 1500]
    
    - potion: Potent
      effects:
      - [potion.moveSpeed, 0, 1200]
      - [potion.digSpeed, 1, 1200]
      - [potion.damageBoost, 0, 1200]
      - [potion.heal, 2, 0]
      - [potion.jump, 1, 1200]
      - [potion.resistance, 1, 1200]
      - [potion.fireResistance, 1, 1200]
      - [potion.waterBreathing, 1, 1200]
      - [potion.hunger, 0, 1200]
    
    - potion: Rank
      effects:
      - [potion.blindness, 0, 300]
    
    - potion: Acrid
      effects:
      - [potion.confusion, 0, 300]
      - [potion.blindness, 0, 150]
      - [potion.poison, 0, 50]
    
    - potion: Gross
      effects:
      - [potion.confusion, 0, 300]
    
    - potion: Stinky
      effects:

## Limitations

Although the items show the expected name in the client inventory, they all show "No Effect"
and are the same color.

## See Also

Also interested in new enchantment effects? Check out [EnchantMore](http://dev.bukkit.org/server-mods/enchantmore/).

