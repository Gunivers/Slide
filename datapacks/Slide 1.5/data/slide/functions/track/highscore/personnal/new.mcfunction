scoreboard players operation @s BestTr1 = @s[scores={Track=1}] TimeL
scoreboard players operation @s BestTr2 = @s[scores={Track=2}] TimeL
scoreboard players operation @s BestTr3 = @s[scores={Track=3}] TimeL
scoreboard players operation @s BestTr4 = @s[scores={Track=4}] TimeL
scoreboard players operation @s BestTr5 = @s[scores={Track=5}] TimeL
scoreboard players operation @s BestTr6 = @s[scores={Track=6}] TimeL

#tag @s add msgAction
title @s times 0 90 0
title @s actionbar {"text":"New personnal record : ","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@s","objective":"Seconds"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@s[scores={Centiemes=..9}]","objective":"global"}},{"color":"aqua","bold":true,"score":{"name":"@s","objective":"Centiemes"}},{"text":" seconds !"}]}
