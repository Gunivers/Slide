tag @s add FinishLine
execute as @s[scores={Laps=1,Time=100..}] at @s at @e[type=boat,limit=1,sort=nearest] run function slide:finish
execute as @s[scores={Laps=2..},tag=W1,tag=W2] at @s at @e[type=boat,limit=1,sort=nearest] run scoreboard players remove @s Laps 1
tag @s[tag=W1,tag=W2] add W1Temp
tag @s[tag=W1,tag=W2] add W2Temp
tag @s[tag=W1Temp] remove W1
tag @s[tag=W2Temp] remove W2
tag @s remove W1Temp
tag @s remove W2Temp

execute at @e[type=boat,limit=1,sort=nearest] unless block ~ ~-2 ~ blue_stained_glass run tag @s remove FinishLine
