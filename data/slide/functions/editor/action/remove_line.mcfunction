execute if entity @s[tag=GbBRry] run fill ~-5 ~-1 ~ ~5 ~-1 ~ ice replace packed_ice
execute if entity @s[tag=GbBRry,tag=!StartLine,tag=!W1,tag=!W2] run fill ~-5 ~-2 ~ ~5 ~-2 ~ air replace blue_stained_glass
execute if entity @s[tag=GbBRry,tag=W1] run fill ~-5 ~-2 ~ ~5 ~-2 ~ air replace light_blue_stained_glass
execute if entity @s[tag=GbBRry,tag=W2] run fill ~-5 ~-2 ~ ~5 ~-2 ~ air replace cyan_stained_glass
execute if entity @s[tag=GbBRry] run fill ~-5 ~ ~ ~5 ~ ~ air replace spruce_fence

execute if entity @s[tag=GbBRrx] run fill ~ ~-1 ~-5 ~ ~-1 ~5 ice replace packed_ice
execute if entity @s[tag=GbBRrx,tag=!StartLine] run fill ~ ~-2 ~-5 ~ ~-2 ~5 air replace blue_stained_glass
execute if entity @s[tag=GbBRrx,tag=W1] run fill ~ ~-2 ~-5 ~ ~-2 ~5 air replace light_blue_stained_glass
execute if entity @s[tag=GbBRrx,tag=W2] run fill ~ ~-2 ~-5 ~ ~-2 ~5 air replace cyan_stained_glass
execute if entity @s[tag=GbBRrx] run fill ~ ~ ~-5 ~ ~ ~5 air replace spruce_fence

kill @s