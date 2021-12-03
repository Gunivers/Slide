scoreboard players set @a global 0

execute as @e[tag=GbBR,limit=1,sort=nearest] at @s if score @s Time matches -100.. run say En cours
execute as @e[tag=GbBR,limit=1,sort=nearest] at @s if score @s Time matches -200 run function slide:track/countdown