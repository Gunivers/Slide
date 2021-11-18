tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] add InBoat
tag @a[nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}}] remove InBoat
scoreboard players set @a[nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}}] MoveX 0
scoreboard players set @a[nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}}] MoveZ 0

execute as @e[type=armor_stand,tag=GbBR] at @s if entity @p[distance=..5,nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}}] unless entity @e[type=boat,distance=..5] run summon boat ~ ~3 ~0.45
#execute as @a[tag=InBoat] unless entity @s[scores={Time=-200..}] run scoreboard players remove @s Time 300
execute as @a[tag=InBoat] if entity @s[scores={Time=-200}] run tellraw @s "Le chrono démarre quand vous bougez"
execute as @a[tag=InBoat,tag=!Lap] if entity @s[scores={Time=-200}] at @s at @e[type=boat,limit=1,sort=nearest] if block ~ ~-2 ~ blue_stained_glass run tag @s add Lap
execute as @a[tag=InBoat] if entity @s[scores={Time=-200}] run scoreboard players set @s Time -100
scoreboard players add @a[scores={Time=0..}] Time 1
scoreboard players set @a[tag=!InBoat] Time -200

#execute as @a[scores={Time=-90..0}] at @s run teleport @s ~ ~ ~

tellraw @a[scores={Time=-99}] "Etes-vous prêt ?"
tellraw @a[scores={Time=-60}] "3"
tellraw @a[scores={Time=-40}] "2"
tellraw @a[scores={Time=-20}] "1"
tellraw @a[scores={Time=-0}] "C'est partie !"

#execute as @a at @s at @e[type=armor_stand,tag=GbBR,limit=1,sort=nearest] positioned ~ ~2.5 ~ run teleport @e[type=boat,limit=1,sort=nearest] ~ ~ ~
#execute as @a[scores={Time=-100..-1}] at @s run data modify entity @e[type=boat,limit=1,sort=nearest] Motion set value [0.0d,0.0d,0.0d]
#execute as @a[scores={Time=-100..-1}] at @s run data modify entity @e[type=boat,limit=1,sort=nearest] Pos set value [998.5d,41.0d,1060.0d]
#execute as @a[scores={Time=-100..-1}] at @s run data modify entity @s Pos set value [998.5d,40.55d,1060.0d]
#execute as @a[scores={Time=-100..-1}] at @s at @e[type=armor_stand,tag=GbBR,limit=1,sort=nearest] run teleport @s ~ ~2.55 ~

#execute as @a[tag=InBoat,scores={Time=-100}] at @s at @e[type=boat,limit=1,sort=nearest] if block ~ ~-2 ~ green_stained_glass run scoreboard players set @s Time 0

title @a[tag=InBoat,scores={Time=-100}] actionbar "Le chrono démarre quand vous bougez"

execute as @a[tag=InBoat,scores={Time=-100}] at @s store result score @s MoveX2 run data get entity @e[type=boat,limit=1,sort=nearest] Pos[0] 1000
execute as @a[tag=InBoat,scores={Time=-100,MoveX=0}] run scoreboard players operation @s MoveX = @s MoveX2
execute as @a[tag=InBoat,scores={Time=-100}] at @s unless score @s MoveX = @s MoveX2 run scoreboard players set @s Time 0
#execute as @a[tag=InBoat,scores={Time=-100}] run scoreboard players operation @s MoveX = @s MoveX2

execute as @a[tag=InBoat,scores={Time=-100}] at @s store result score @s MoveZ2 run data get entity @e[type=boat,limit=1,sort=nearest] Pos[2] 1000
execute as @a[tag=InBoat,scores={Time=-100,MoveZ=0}] run scoreboard players operation @s MoveZ = @s MoveZ2
execute as @a[tag=InBoat,scores={Time=-100}] at @s unless score @s MoveZ = @s MoveZ2 run scoreboard players set @s Time 0
#execute as @a[tag=InBoat,scores={Time=-100}] run scoreboard players operation @s MoveZ = @s MoveZ2


execute as @a[scores={Time=0..}] run scoreboard players operation @s Seconds = @s Time
execute as @a[scores={Time=0..}] run scoreboard players operation @s Seconds /= #20 global

execute as @a[scores={Time=0..}] run scoreboard players operation @s Centiemes = @s Time
execute as @a[scores={Time=0..}] run scoreboard players operation @s Centiemes *= #5 global
execute as @a[scores={Time=0..}] run scoreboard players operation @s Centiemes %= #100 global


execute as @a[scores={Time=0..,Centiemes=..9}] run title @s actionbar ["",{"score":{"name":"@s","objective":"Seconds"}},{"text":":0"},{"score":{"name":"@s","objective":"Centiemes"}}]
execute as @a[scores={Time=0..,Centiemes=10..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"Seconds"}},{"text":":"},{"score":{"name":"@s","objective":"Centiemes"}}]


execute as @a[tag=InBoat,tag=Lap,scores={Time=500..}] at @s at @e[type=boat,limit=1,sort=nearest] unless block ~ ~-2 ~ blue_stained_glass run tag @s remove Lap
execute as @a[tag=InBoat,tag=!Lap] at @s at @e[type=boat,limit=1,sort=nearest] if block ~ ~-2 ~ blue_stained_glass run function slide:track/finish