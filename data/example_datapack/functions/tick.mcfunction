# This is a function that will run every tick.  I'd use this for scoreboard timers or checking if someone has died, etc.
scoreboard players add TempObject TempObject 1
execute as @a unless entity @s[advancements={example_datapack:entry=true}] run advancement grant @s only example_datapack:entry
