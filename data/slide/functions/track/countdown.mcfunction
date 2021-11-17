tag @a[tag=InBoat,distance=..10] add InTrack
scoreboard players set @a[tag=InTrack,distance=..10] Time -100
scoreboard players set @s Time -100
execute if entity @s[tag=Tr1] run tag @a[tag=InTrack,distance=..10] add Tr1
execute if entity @s[tag=Tr2] run tag @a[tag=InTrack,distance=..10] add Tr2
execute if entity @s[tag=Tr3] run tag @a[tag=InTrack,distance=..10] add Tr3
execute if entity @s[tag=Tr4] run tag @a[tag=InTrack,distance=..10] add Tr4
execute if entity @s[tag=Tr5] run tag @a[tag=InTrack,distance=..10] add Tr5
execute if entity @s[tag=Tr6] run tag @a[tag=InTrack,distance=..10] add Tr6
execute if entity @s[tag=Tr7] run tag @a[tag=InTrack,distance=..10] add Tr7

scoreboard players operation @a[tag=InTrack,distance=..10] Laps = @s GbBRlam
#scoreboard players add @a[tag=InTrack,distance=..10,scores={Laps=2..}] Laps 1 

