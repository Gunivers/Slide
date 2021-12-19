execute if entity @s[tag=GbBRry] store result score @s global run fill ~-5 ~-1 ~ ~5 ~-1 ~ packed_ice replace air
execute if entity @s[tag=GbBRry] if score @s global matches 1.. run tag @s add Remove

execute if entity @s[tag=GbBRry,tag=!StartLine,tag=!W1,tag=!W2] store result score @s global run fill ~-5 ~-2 ~ ~5 ~-2 ~ blue_stained_glass replace air
execute if entity @s[tag=GbBRry,tag=!StartLine,tag=!W1,tag=!W2] if score @s global matches 1.. run tag @s add Remove
execute if entity @s[tag=GbBRry,tag=W1] store result score @s global run fill ~-5 ~-2 ~ ~5 ~-2 ~ light_blue_stained_glass replace air
execute if entity @s[tag=GbBRry,tag=W1] if score @s global matches 1.. run tag @s add Remove
execute if entity @s[tag=GbBRry,tag=W2] store result score @s global run fill ~-5 ~-2 ~ ~5 ~-2 ~ cyan_stained_glass replace air
execute if entity @s[tag=GbBRry,tag=W2] if score @s global matches 1.. run tag @s add Remove

execute if entity @s[tag=GbBRry,tag=!FinishLine,tag=!W1,tag=!W2] store result score @s global run fill ~-5 ~ ~ ~5 ~ ~ spruce_fence replace air
execute if entity @s[tag=GbBRry,tag=!FinishLine,tag=!W1,tag=!W2] if score @s global matches 1.. run tag @s add Remove

execute if entity @s[tag=GbBRrx] store result score @s global run fill ~ ~-1 ~-5 ~ ~-1 ~5 packed_ice replace air
execute if entity @s[tag=GbBRrx] if score @s global matches 1.. run tag @s add Remove

execute if entity @s[tag=GbBRrx,tag=!StartLine,tag=!W1,tag=!W2] store result score @s global run fill ~ ~-2 ~-5 ~ ~-2 ~5 blue_stained_glass replace air
execute if entity @s[tag=GbBRrx,tag=!StartLine,tag=!W1,tag=!W2] if score @s global matches 1.. run tag @s add Remove
execute if entity @s[tag=GbBRrx,tag=W1] store result score @s global run fill ~ ~-2 ~-5 ~ ~-2 ~5 light_blue_stained_glass replace air
execute if entity @s[tag=GbBRrx,tag=W1] if score @s global matches 1.. run tag @s add Remove
execute if entity @s[tag=GbBRrx,tag=W2] store result score @s global run fill ~ ~-2 ~-5 ~ ~-2 ~5 cyan_stained_glass replace air
execute if entity @s[tag=GbBRrx,tag=W2] if score @s global matches 1.. run tag @s add Remove

execute if entity @s[tag=GbBRrx,tag=!FinishLine,tag=!W1,tag=!W2] store result score @s global run fill ~ ~ ~-5 ~ ~ ~5 spruce_fence replace air
execute if entity @s[tag=GbBRrx,tag=!FinishLine,tag=!W1,tag=!W2] if score @s global matches 1.. run tag @s add Remove

execute if entity @s[tag=Remove] run function slide:editor/action/remove_line