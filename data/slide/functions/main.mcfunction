scoreboard players enable @a Respawn
scoreboard players enable @a Training

execute as @a[scores={drop_door=1..}] run scoreboard players set @s Respawn 1
execute as @a[scores={drop_door=1..}] run scoreboard players set @s drop_door 0
execute as @a[scores={Respawn=1..}] at @s run function slide:respawn
execute as @a[scores={Training=1..}] at @s run function slide:training

execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}},tag=!InBoat] at @s run tag @e[type=boat,limit=1,sort=nearest] remove Persistent
tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] add InBoat
execute as @a[tag=InBoat,nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}}] at @s run function slide:boat_remove
execute as @e[type=boat,tag=!Persistent] at @s unless entity @p[distance=..20] run kill @s


effect give @a[gamemode=adventure] minecraft:weakness 1 250 true
effect give @a minecraft:resistance 1 250 true
execute as @a at @s if block ~ ~ ~ water run teleport @s 999.5 39.5 1024.5 90 0

function slide:track/main

#training room
execute positioned 1006 52 880 if entity @p[distance=..20,tag=!InBoat] unless entity @e[type=boat,distance=..5] run summon boat ~ ~ ~ {Type:"spruce",Tags:[Persistent,Training],Rotation:[180.0f,0.0f]}

execute as @e[tag=tp] at @s run particle minecraft:glow ^ ^ ^0.4 0 0 0 0 1 force
execute as @e[tag=tp] at @s run teleport @s ~ ~ ~ ~20 ~
execute as @e[tag=tp] at @s positioned ~-0.5 ~-3 ~-0.5 as @a[dx=0,dy=2,dz=0] at @s run teleport @s ~ ~-0.2 ~
execute as @e[tag=tp] at @s positioned ~ ~ ~ as @a[distance=..0.3] at @s run teleport @s ~ ~-0.5 ~
#execute as @e[tag=tp] at @s positioned ~ ~-2 ~ run effect give @a[distance=..1] minecraft:levitation 1 2 true
execute as @e[tag=tp,tag=Tr1] at @s positioned ~ ~-2 ~ run teleport @a[distance=..0.5] 995 33 1010 180 18
execute as @e[tag=tp,tag=Tr2] at @s positioned ~ ~-2 ~ run teleport @a[distance=..0.5] 977 32 1012 90 0
execute as @e[tag=tp,tag=Tr3] at @s positioned ~ ~-2 ~ run teleport @a[distance=..0.5] 981 37 1044 90 0
execute as @e[tag=tp,tag=Tr4] at @s positioned ~ ~-2 ~ run teleport @a[distance=..0.5] 998 38 1048 0 0
#execute as @e[tag=tp,tag=Tr6] at @s positioned ~ ~-2 ~ run teleport @a[distance=..1] 998 35 1048 0 0
execute as @e[tag=tp,tag=Training] at @s positioned ~ ~-2 ~ run teleport @a[distance=..0.5] 999 39.5 1024 180 0
execute positioned 995 33 1010 as @a[dx=0,dy=2,dz=0] at @s run teleport @s ~ ~0.5 ~
execute positioned 977 31 1012 as @a[dx=0,dy=2,dz=0] at @s run teleport @s ~ ~0.5 ~
execute positioned 981 36 1044 as @a[dx=0,dy=2,dz=0] at @s run teleport @s ~ ~0.5 ~
execute positioned 998 37 1048 as @a[dx=0,dy=2,dz=0] at @s run teleport @s ~ ~0.5 ~

#data merge block 1003 41 1059 {Text1:'{"text":"==========="}',Text2:'{"score":{"name":"@e[tag=GbBR,tag=Tr4]","objective":"Time"}}'}