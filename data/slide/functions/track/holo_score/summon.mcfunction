#execute if entity @s[tag=Tr4] run summon area_effect_cloud 992 46 1058 {CustomName: '["",{"text":"player : "},{"score":{"name":"@s","objective":"glib.id"}}]', Tags: ["currentHoloScore"], CustomNameVisible: 1, Age: -2147483648, Duration: -1, WaitTime: -2147483648}
tag @s add currentExecutor
#kill @e[type=area_effect_cloud,tag=currentHoloScore]
setblock 987 26 1016 minecraft:acacia_sign{Text1:'{"text":"","color":"white","extra":[{"selector":"@a[tag=currentExecutor,limit=1]"},{"text":" : "},{"color":"aqua","bold":true,"score":{"name":"@a[tag=currentExecutor,limit=1]","objective":"SecondsL"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@a[tag=currentExecutor,limit=1,scores={CentiemesL=..9}]","objective":"global"}},{"color":"aqua","bold":true,"score":{"name":"@a[tag=currentExecutor,limit=1]","objective":"CentiemesL"}},{"text":"s"}]}'}

#execute if entity @s run summon area_effect_cloud 992 46 1058 {CustomName: '{"text":"hello world"}', Tags: ["holoScore", "currentHoloScore"], CustomNameVisible: 1, Age: -2147483648, Duration: -1, WaitTime: -2147483648}
summon armor_stand ~ ~ ~ {CustomName: '{"text":"hello world"}', Tags: ["holoScore", "currentHoloScore"], CustomNameVisible: 1, NoGravity: 1b, Invisible: 1b}

execute if entity @s[scores={Track=1}] run teleport @e[tag=currentHoloScore] 1016 23 989
execute if entity @s[scores={Track=2}] run teleport @e[tag=currentHoloScore] 967 37 1018
execute if entity @s[scores={Track=3}] run teleport @e[tag=currentHoloScore] 969 40 1038
execute if entity @s[scores={Track=4}] run teleport @e[tag=currentHoloScore] 992 45 1058
execute if entity @s[scores={Track=5}] run teleport @e[tag=currentHoloScore] 1044 43 1028
execute if entity @s[scores={Track=6}] run teleport @e[tag=currentHoloScore] 1001 43 994

data modify entity @e[tag=currentHoloScore,limit=1] CustomName set from block 987 26 1016 Text1
scoreboard players operation @e[tag=currentHoloScore] playerId = @s glib.id
scoreboard players operation @e[tag=currentHoloScore] Time = @s TimeL


execute if entity @s[scores={Track=1}] run tag @e[tag=currentHoloScore] add Tr1
execute if entity @s[scores={Track=2}] run tag @e[tag=currentHoloScore] add Tr2
execute if entity @s[scores={Track=3}] run tag @e[tag=currentHoloScore] add Tr3
execute if entity @s[scores={Track=4}] run tag @e[tag=currentHoloScore] add Tr4
execute if entity @s[scores={Track=5}] run tag @e[tag=currentHoloScore] add Tr5
execute if entity @s[scores={Track=6}] run tag @e[tag=currentHoloScore] add Tr6

execute if entity @s[scores={Track=1}] run tag @e[tag=holoScore,tag=Tr1,tag=!currentHoloScore] add selectedHoloScore
execute if entity @s[scores={Track=2}] run tag @e[tag=holoScore,tag=Tr2,tag=!currentHoloScore] add selectedHoloScore
execute if entity @s[scores={Track=3}] run tag @e[tag=holoScore,tag=Tr3,tag=!currentHoloScore] add selectedHoloScore
execute if entity @s[scores={Track=4}] run tag @e[tag=holoScore,tag=Tr4,tag=!currentHoloScore] add selectedHoloScore
execute if entity @s[scores={Track=5}] run tag @e[tag=holoScore,tag=Tr5,tag=!currentHoloScore] add selectedHoloScore
execute if entity @s[scores={Track=6}] run tag @e[tag=holoScore,tag=Tr6,tag=!currentHoloScore] add selectedHoloScore

execute at @e[tag=currentHoloScore] positioned ~ ~-3 ~ as @e[tag=selectedHoloScore,limit=1,sort=nearest,distance=..0.5] run function slide:clean_kill

execute as @e[tag=selectedHoloScore] run scoreboard players operation @s TimeL = @s Time
execute as @e[tag=selectedHoloScore] run scoreboard players operation @s TimeL -= @e[tag=currentHoloScore,limit=1] Time

execute as @e[tag=selectedHoloScore,scores={TimeL=0}] if score @s playerId = @e[tag=currentHoloScore,limit=1] playerId run kill @e[tag=currentHoloScore,]

execute unless entity @e[tag=currentHoloScore] run tag @e[tag=selectedHoloScore] remove selectedHoloScore

execute as @e[tag=selectedHoloScore,scores={TimeL=1..}] at @s run teleport @s ~ ~-0.3 ~

execute as @e[tag=currentHoloScore,] at @s run teleport @s @e[tag=selectedHoloScore,scores={TimeL=..0},limit=1,sort=furthest]
execute as @e[tag=currentHoloScore] at @s run teleport @s ~ ~-0.3 ~

tag @e[tag=currentHoloScore] remove currentHoloScore
tag @e[tag=selectedHoloScore] remove selectedHoloScore
setblock 987 26 1016 air
tag @s remove currentExecutor