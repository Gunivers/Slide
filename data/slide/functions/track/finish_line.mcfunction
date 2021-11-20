tag @s add FinishLine
tellraw @s[tag=Lap,tag=W1,tag=W2,scores={TimeL=0..,CentiemesL=10..}] {"text":"Your time for this lap is: ","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@s","objective":"SecondsL"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@s","objective":"CentiemesL"}},{"text":" seconds"}]}
tellraw @s[tag=Lap,tag=W1,tag=W2,scores={TimeL=0..,CentiemesL=..9}] {"text":"Your time for this lap is: ","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@s","objective":"SecondsL"}},{"text":"."},{"text":"0","color":"aqua","bold":true},{"color":"aqua","bold":true,"score":{"name":"@s","objective":"CentiemesL"}},{"text":" seconds"}]}

execute if entity @s[tag=Lap,tag=W1,tag=W2] run function slide:track/highscore/test

execute as @s[scores={Laps=1,Time=100..}] at @s run function slide:track/finish
execute as @s[scores={Laps=2..},tag=W1,tag=W2] run scoreboard players remove @s Laps 1
execute as @s[tag=W1,tag=W2] run scoreboard players add @s LapsIn 1
execute as @s[tag=Lap,tag=W1,tag=W2] run scoreboard players set @s TimeL 0


tag @s[tag=W1,tag=W2] add W1Temp
tag @s[tag=W1,tag=W2] add W2Temp
tag @s[tag=W1Temp] remove W1
tag @s[tag=W2Temp] remove W2
tag @s remove W1Temp
tag @s remove W2Temp

execute at @e[type=boat,limit=1,sort=nearest] unless block ~ ~-2 ~ blue_stained_glass run tag @s remove FinishLine