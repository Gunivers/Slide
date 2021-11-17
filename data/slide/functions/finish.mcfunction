

tellraw @s[scores={Time=0..,Centiemes=10..}] {"text":"Your Time Is: ","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@s","objective":"Seconds"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@s","objective":"Centiemes"}},{"text":" seconds"}]}
tellraw @s[scores={Time=0..,Centiemes=..9}] {"text":"Your Time Is: ","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@s","objective":"Seconds"}},{"text":"."},{"text":"0","color":"aqua","bold":true},{"color":"aqua","bold":true,"score":{"name":"@s","objective":"Centiemes"}},{"text":" seconds"}]}

scoreboard players set @s Time -200
scoreboard players set @s MoveX 0
scoreboard players set @s MoveZ 0

tag @s remove InTrack

tag @s remove Tr1
tag @s remove Tr2
tag @s remove Tr3
tag @s remove Tr4
tag @s remove Tr5
tag @s remove Tr6
tag @s remove Tr7