#tag @s[tag=!Ed_ToutCasser] add temp
#tag @s[tag=Ed_ToutCasser] remove Ed_ToutCasser
#tag @s[tag=temp] add Ed_ToutCasser
#
#tag @s remove temp

tag @s remove Ed_IceBorder
tag @s remove Ed_IcePath
tag @s remove Ed_SpeedReducer

#say toutcasser
#execute unless block ~ ~ ~ tnt run setblock ~ ~ ~ glass
execute unless block ~ ~ ~ tnt positioned ^ ^ ^0.2 if entity @s[distance=..7] run function slide:editor/action/toutcasser
execute if block ~ ~ ~ tnt run function slide:editor/buldozer
execute positioned ^1 ^ ^ if block ~ ~ ~ tnt run function slide:editor/buldozer
execute positioned ^-1 ^ ^ if block ~ ~ ~ tnt run function slide:editor/buldozer
execute positioned ^ ^1 ^ if block ~ ~ ~ tnt run function slide:editor/buldozer
execute positioned ^ ^-1 ^ if block ~ ~ ~ tnt run function slide:editor/buldozer
scoreboard players set @s tnt 0
