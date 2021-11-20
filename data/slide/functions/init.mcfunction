say Slide 1.5
scoreboard objectives add global dummy
scoreboard players set #20 global 20
scoreboard players set #5 global 5
scoreboard players set #100 global 100
scoreboard players set #0 global 0

scoreboard objectives add Time dummy
scoreboard objectives add Seconds dummy
scoreboard objectives add Centiemes dummy

scoreboard objectives add TimeL dummy
scoreboard objectives add SecondsL dummy
scoreboard objectives add CentiemesL dummy

scoreboard objectives add MoveX dummy
scoreboard players set @a MoveX 0
scoreboard objectives add MoveX2 dummy
scoreboard objectives add MoveZ dummy
scoreboard players set @a MoveZ 0
scoreboard objectives add MoveZ2 dummy

scoreboard objectives add Laps dummy
execute as @e[tag=GbBRlam] run scoreboard players operation @s Laps = @s GbBRlam
scoreboard objectives add MaxLaps dummy
scoreboard objectives add LapsIn dummy
scoreboard objectives add BestTrackTime dummy

scoreboard objectives add egg minecraft.used:minecraft.egg
scoreboard objectives add respawn minecraft.dropped:minecraft.oak_door
scoreboard objectives add egg_drop minecraft.dropped:minecraft.egg
scoreboard players set @e[tag=GbBR] Time -200

tag @e[tag=Tr1] add GbBRrx-
tag @e[tag=Tr2] add GbBRrx-
tag @e[tag=Tr3] add GbBRrx-
tag @e[tag=Tr4] add GbBRry+
tag @e[tag=Tr5] add GbBRrx+

fill 20 99 -20 -20 98 20 stone
fill 14 100 13 13 106 20 stone