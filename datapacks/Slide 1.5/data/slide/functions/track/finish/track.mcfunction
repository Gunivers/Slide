scoreboard players set @s Time -200
scoreboard players set @s TimeL -200

execute as @s[type=player] run function slide:track/exit

function slide:track/reset

execute as @s[tag=GbBR,scores={Time=-200}] at @s run function slide:track/reset