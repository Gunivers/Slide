execute if entity @a[tag=Editor] as @e[tag=Tr6,tag=!Temp] at @s positioned ~ ~3 ~ run function slide:editor/line/test_break

execute as @e[tag=Ed_StartLine] at @s run function slide:editor/action/start_line
execute as @e[tag=Ed_FinishLine] at @s run function slide:editor/action/finish_line
execute as @e[tag=Ed_LapLine] at @s run function slide:editor/action/lap_line
execute as @e[tag=Ed_W1] at @s run function slide:editor/action/waypoint_1
execute as @e[tag=Ed_W2] at @s run function slide:editor/action/waypoint_2