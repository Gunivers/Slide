function slide:track/reset

execute as @e[tag=GbBRrx+] at @s positioned ~-5.1 ~1 ~-5 run tag @a[dz=9,dy=5,dx=3,tag=!InTrack,tag=InBoat] add InTrackTemp
execute as @e[tag=GbBRrx-] at @s positioned ~1.1 ~1 ~-5 run tag @a[dz=9,dy=5,dx=3,tag=!InTrack,tag=InBoat] add InTrackTemp
execute as @e[tag=GbBRry+] at @s positioned ~-5 ~1 ~-5.1 run tag @a[dx=9,dy=5,dz=3,tag=!InTrack,tag=InBoat] add InTrackTemp
execute as @e[tag=GbBRry-] at @s positioned ~-5 ~1 ~1.1 run tag @a[dx=9,dy=5,dz=3,tag=!InTrack,tag=InBoat] add InTrackTemp

scoreboard players set @a[tag=InTrackTemp] Time -100
scoreboard players set @s Time -100
scoreboard players set @a[tag=InTrackTemp] TimeL -100

execute if entity @s[tag=Tr1] run scoreboard players set @a[tag=InTrackTemp] Track 1
execute if entity @s[tag=Tr2] run scoreboard players set @a[tag=InTrackTemp] Track 2
execute if entity @s[tag=Tr3] run scoreboard players set @a[tag=InTrackTemp] Track 3
execute if entity @s[tag=Tr4] run scoreboard players set @a[tag=InTrackTemp] Track 4
execute if entity @s[tag=Tr5] run scoreboard players set @a[tag=InTrackTemp] Track 5
execute if entity @s[tag=Tr6] run scoreboard players set @a[tag=InTrackTemp] Track 6

scoreboard players operation @a[tag=InTrackTemp] Laps = @s GbBRlam
scoreboard players operation @a[tag=InTrackTemp] MaxLaps = @s GbBRlam
scoreboard players set @a[tag=InTrackTemp] LapsIn 1
#scoreboard players add @a[tag=InTrackTemp,distance=..10,scores={Laps=2..}] Laps 1 
scoreboard players operation @a[tag=InTrackTemp] BestTrackTime = @s Highscore
scoreboard players set @s global 0

tag @a[tag=InTrackTemp,scores={Laps=2..}] add Lap

tag @a[tag=InTrackTemp] add InTrack
tag @a remove InTrackTemp
