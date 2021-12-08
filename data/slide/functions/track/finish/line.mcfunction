tag @s add FinishLine

execute as @s[tag=!WCheck,scores={Laps=1,Time=10..}] at @s run function slide:track/finish/finish
execute as @s[tag=WCheck,tag=W1,tag=W2,scores={Laps=1}] at @s run function slide:track/finish/finish
execute as @s[tag=Lap,tag=W1,tag=W2] at @s run function slide:track/finish/lap

execute at @e[type=boat,limit=1,sort=nearest] unless block ~ ~-2 ~ blue_stained_glass run tag @s remove FinishLine