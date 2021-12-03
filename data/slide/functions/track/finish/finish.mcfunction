tellraw @s[tag=Lap] {"text":"Your time for this lap is: ","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@s","objective":"SecondsL"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@s[scores={CentiemesL=..9}]","objective":"global"}},{"color":"aqua","bold":true,"score":{"name":"@s","objective":"CentiemesL"}},{"text":" seconds"}]}
tellraw @s[tag=!Lap] {"text":"Your Time Is: ","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@s","objective":"Seconds"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@s[scores={Centiemes=..9}]","objective":"global"}},{"color":"aqua","bold":true,"score":{"name":"@s","objective":"Centiemes"}},{"text":" seconds"}]}

title @s times 0 60 10
title @s[tag=!Lap] title {"text":"","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@s","objective":"SecondsL"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@s[scores={CentiemesL=..9}]","objective":"global"}},{"color":"aqua","bold":true,"score":{"name":"@s","objective":"CentiemesL"}},{"text":" s !"}]}
title @s[tag=Lap] title {"text":"Finish !","color":"aqua"}
title @s subtitle {"text":"good job !","color":"blue"}

playsound block.note_block.bit record @s ~ ~ ~ 1 1

function slide:track/highscore/test

scoreboard players set @s Time -200
scoreboard players set @s MoveX 0
scoreboard players set @s MoveZ 0

function slide:track/exit