execute as @e[tag=GbBR,tag=GbBRrx,limit=1,sort=nearest] at @s run fill ~ ~3 ~-5 ~ ~3 ~5 spruce_fence
execute as @e[tag=GbBR,tag=GbBRry,limit=1,sort=nearest] at @s run fill ~-5 ~3 ~ ~5 ~3 ~ spruce_fence
execute as @e[tag=GbBR,limit=1,sort=nearest] at @s run scoreboard players set @e[tag=InBoat,distance=..10] Time -200
execute as @e[tag=GbBR,limit=1,sort=nearest] run scoreboard players set @s Time -200