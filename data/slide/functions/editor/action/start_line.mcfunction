tag @s add StartLine

execute as @e[tag=Tr6,tag=StartLine] at @s positioned ~ ~3 ~ run function slide:editor/action/remove_line
execute as @e[tag=Tr6,tag=LapLine] at @s positioned ~ ~3 ~ run function slide:editor/action/remove_line
execute as @e[tag=Tr6,tag=W1] at @s positioned ~ ~3 ~ run function slide:editor/action/remove_line
execute as @e[tag=Tr6,tag=W2] at @s positioned ~ ~3 ~ run function slide:editor/action/remove_line

function slide:editor/action/line

tag @e[tag=Temp,limit=1,sort=nearest] add GbBR
tag @e[tag=Temp,limit=1,sort=nearest] add Tr6
tag @e[tag=Temp,limit=1,sort=nearest] add StartLine
scoreboard players set @e[tag=Temp] Time -200

tag @e[tag=Temp] remove Temp

function slide:clean_kill
