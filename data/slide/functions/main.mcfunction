execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}},tag=!InBoat] at @s run tag @e[type=boat,limit=1,sort=nearest] remove Persistent
tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] add InBoat
execute as @a[tag=InBoat,nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}}] at @s run function slide:boat_remove
execute as @e[type=boat,tag=!Persistent] at @s unless entity @p[distance=..20] run kill @s

scoreboard players enable @a Respawn
scoreboard players enable @a Training

execute as @a[scores={drop_door=1..}] run scoreboard players set @s Respawn 1
execute as @a[scores={drop_door=1..}] run scoreboard players set @s drop_door 0
execute as @a[scores={Respawn=1..}] run function slide:respawn
execute as @a[scores={Training=1..}] run function slide:training

effect give @a[gamemode=adventure] minecraft:weakness 1 250 true
effect give @a minecraft:resistance 1 250 true
execute as @a at @s if block ~ ~ ~ water run teleport @s 999.5 39.5 1024.5 90 0

function slide:track/main

#training room
execute positioned 1006 52 880 if entity @p[distance=..20] unless entity @e[type=boat,distance=..5] run summon boat ~ ~ ~ {Type:"spruce",Tags:[Persistent,Training]}

data merge block 1003 41 1059 {Text1:'{"text":"==========="}',Text2:'{"score":{"name":"@e[tag=GbBR,tag=Tr4]","objective":"Time"}}'}