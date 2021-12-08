execute unless entity @a[tag=Editor] run tag @s[tag=!Editor] add Temp
execute if entity @a[tag=Editor] unless entity @s[tag=Editor] run tellraw @s {"text":"Another player edit already the track.","color":"blue"}
tag @s[tag=Editor] remove Editor
tag @s[tag=Temp] add Editor
tag @a remove Temp

tag @s[tag=!Ed_Simple,tag=!Ed_Laps] add Ed_Simple

gamemode creative @s[tag=Editor]
clear @s[tag=Editor]
gamemode adventure @s[tag=!Editor]

execute if entity @a[tag=Editor] run fill 992 39 997 1000 39 997 minecraft:spruce_fence
execute if entity @a[tag=Editor] run fill 992 40 997 1000 42 997 minecraft:barrier
execute if entity @a[tag=!Editor] run fill 992 39 997 1000 42 997 air

scoreboard players set @s EditMode 0
scoreboard players enable @s EditMode