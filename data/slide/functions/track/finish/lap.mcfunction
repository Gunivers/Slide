tellraw @s[scores={TimeL=0..}] {"text":"Your time for this lap is: ","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@s","objective":"SecondsL"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@s[scores={Centiemes=..9}]","objective":"global"}},{"color":"aqua","bold":true,"score":{"name":"@s","objective":"CentiemesL"}},{"text":" seconds"}]}
playsound block.note_block.bit record @s ~ ~ ~ 1 0.5

execute if entity @s[tag=Lap,tag=W1,tag=W2] run function slide:track/highscore/test
execute as @s[scores={Laps=2..},tag=W1,tag=W2] run scoreboard players remove @s Laps 1

execute as @s[tag=W1,tag=W2] run scoreboard players add @s LapsIn 1
execute as @s[tag=Lap,tag=W1,tag=W2] run scoreboard players set @s TimeL 0

tag @s remove W1
tag @s remove W2