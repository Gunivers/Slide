tellraw @s[scores={Time=0..}] {"text":"Your Time Is: ","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@s","objective":"Seconds"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@s[scores={Centiemes=..9}]","objective":"global"}},{"color":"aqua","bold":true,"score":{"name":"@s","objective":"Centiemes"}}]}

playsound block.note_block.bit record @s ~ ~ ~ 1 1

function slide:track/highscore/test

scoreboard players set @s Time -200
scoreboard players set @s MoveX 0
scoreboard players set @s MoveZ 0

function slide:track/exit