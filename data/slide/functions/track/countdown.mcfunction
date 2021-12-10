function slide:track/reset

execute as @s[tag=GbBRrx+] at @s positioned ~-5.1 ~1 ~-5 run tag @a[dz=9,dy=5,dx=3,tag=!InTrack,tag=InBoat] add InTrackTemp
execute as @s[tag=GbBRrx-] at @s positioned ~1.1 ~1 ~-5 run tag @a[dz=9,dy=5,dx=3,tag=!InTrack,tag=InBoat] add InTrackTemp
execute as @s[tag=GbBRry+] at @s positioned ~-5 ~1 ~-5.1 run tag @a[dx=9,dy=5,dz=3,tag=!InTrack,tag=InBoat] add InTrackTemp
execute as @s[tag=GbBRry-] at @s positioned ~-5 ~1 ~1.1 run tag @a[dx=9,dy=5,dz=3,tag=!InTrack,tag=InBoat] add InTrackTemp

scoreboard players set @a[tag=InTrackTemp] Time -100
scoreboard players set @a[tag=InTrackTemp] TimeL -100
scoreboard players set @s Time -100
scoreboard players set @s TimeL -100

execute if entity @s[tag=Tr1] run scoreboard players set @a[tag=InTrackTemp] Track 1
execute if entity @s[tag=Tr2] run scoreboard players set @a[tag=InTrackTemp] Track 2
execute if entity @s[tag=Tr3] run scoreboard players set @a[tag=InTrackTemp] Track 3
execute if entity @s[tag=Tr4] run scoreboard players set @a[tag=InTrackTemp] Track 4
execute if entity @s[tag=Tr5] run scoreboard players set @a[tag=InTrackTemp] Track 5
execute if entity @s[tag=Tr6] run scoreboard players set @a[tag=InTrackTemp] Track 6

execute unless entity @s[scores={Laps=1..}] run scoreboard players set @s Laps 1
scoreboard players operation @a[tag=InTrackTemp] Laps = @s Laps
scoreboard players operation @a[tag=InTrackTemp] MaxLaps = @s Laps
scoreboard players set @a[tag=InTrackTemp] LapsIn 1
#scoreboard players add @a[tag=InTrackTemp,distance=..10,scores={Laps=2..}] Laps 1 
scoreboard players operation @a[tag=InTrackTemp] BestTrackTime = @s Highscore
scoreboard players operation @a[tag=InTrackTemp] BestPersoTime = @s[scores={Track=1}] BestTr1
scoreboard players operation @a[tag=InTrackTemp] BestPersoTime = @s[scores={Track=2}] BestTr2
scoreboard players operation @a[tag=InTrackTemp] BestPersoTime = @s[scores={Track=3}] BestTr3
scoreboard players operation @a[tag=InTrackTemp] BestPersoTime = @s[scores={Track=4}] BestTr4
scoreboard players operation @a[tag=InTrackTemp] BestPersoTime = @s[scores={Track=5}] BestTr5
scoreboard players operation @a[tag=InTrackTemp] BestPersoTime = @s[scores={Track=6}] BestTr6
scoreboard players set @s global 0

tag @a[tag=InTrackTemp,scores={Laps=2..}] add Lap
execute if entity @s[tag=GbBRllm] run tag @a[tag=InTrackTemp] add WCheck

#Personnal Best
execute as @a[tag=InTrackTemp] run scoreboard players operation @s Seconds = @s BestPersoTime
execute as @a[tag=InTrackTemp] run scoreboard players operation @s Seconds /= #20 global

execute as @a[tag=InTrackTemp] run scoreboard players operation @s Centiemes = @s BestPersoTime
execute as @a[tag=InTrackTemp] run scoreboard players operation @s Centiemes *= #5 global
execute as @a[tag=InTrackTemp] run scoreboard players operation @s Centiemes %= #100 global

execute as @a[tag=InTrackTemp,scores={BestPersoTime=1..}] run tellraw @s {"text":"Your Personnal Best Is: ","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@s","objective":"Seconds"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@s[scores={Centiemes=..9}]","objective":"global"}},{"color":"aqua","bold":true,"score":{"name":"@s","objective":"Centiemes"}},{"text":" seconds"}]}

execute as @e[type=boat,distance=..10] at @s unless entity @p[distance=..0.5,tag=InBoat] run kill @s

tag @a[tag=InTrackTemp] add InTrack
tag @a remove InTrackTemp
