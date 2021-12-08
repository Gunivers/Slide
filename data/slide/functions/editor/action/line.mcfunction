#setblock ~ ~-1 ~ packed_ice
#setblock ~ ~-2 ~ blue_stained_glass
#setblock ~ ~ ~ spruce_fence

#execute positioned ~-1 ~ ~ if block ~ ~-1 ~ ice if block ~ ~ ~ air run function slide:editor/action/finish_line
#execute positioned ~1 ~ ~ if block ~ ~-1 ~ ice if block ~ ~ ~ air run function slide:editor/action/finish_line

execute if entity @a[tag=Editor,y_rotation=45..135] run tag @s add GbBRrx-
execute if entity @a[tag=Editor,y_rotation=45..135] run tag @s add GbBRrx

execute if entity @a[tag=Editor,y_rotation=135..180] run tag @s add GbBRry-
execute if entity @a[tag=Editor,y_rotation=-180..-135] run tag @s add GbBRry-
execute if entity @a[tag=Editor,y_rotation=135..180] run tag @s add GbBRry
execute if entity @a[tag=Editor,y_rotation=-180..-135] run tag @s add GbBRry

execute if entity @a[tag=Editor,y_rotation=-135..-45] run tag @s add GbBRrx+
execute if entity @a[tag=Editor,y_rotation=-135..-45] run tag @s add GbBRrx

execute if entity @a[tag=Editor,y_rotation=-45..45] run tag @s add GbBRry+
execute if entity @a[tag=Editor,y_rotation=-45..45] run tag @s add GbBRry

execute if entity @s[tag=GbBRry] run fill ~-5 ~-1 ~ ~5 ~-1 ~ packed_ice
execute if entity @s[tag=GbBRry,tag=!StartLine,tag=!W1,tag=!W2] run fill ~-5 ~-2 ~ ~5 ~-2 ~ blue_stained_glass
execute if entity @s[tag=GbBRry,tag=W1] run fill ~-5 ~-2 ~ ~5 ~-2 ~ light_blue_stained_glass
execute if entity @s[tag=GbBRry,tag=W2] run fill ~-5 ~-2 ~ ~5 ~-2 ~ cyan_stained_glass
execute if entity @s[tag=GbBRry,tag=!FinishLine,tag=!W1,tag=!W2] run fill ~-5 ~ ~ ~5 ~ ~ spruce_fence

execute if entity @s[tag=GbBRrx] run fill ~ ~-1 ~-5 ~ ~-1 ~5 packed_ice
execute if entity @s[tag=GbBRrx,tag=!StartLine,tag=!W1,tag=!W2] run fill ~ ~-2 ~-5 ~ ~-2 ~5 blue_stained_glass
execute if entity @s[tag=GbBRrx,tag=W1] run fill ~ ~-2 ~-5 ~ ~-2 ~5 light_blue_stained_glass
execute if entity @s[tag=GbBRrx,tag=W2] run fill ~ ~-2 ~-5 ~ ~-2 ~5 cyan_stained_glass
execute if entity @s[tag=GbBRrx,tag=!FinishLine,tag=!W1,tag=!W2] run fill ~ ~ ~-5 ~ ~ ~5 spruce_fence

summon armor_stand ~ ~-3 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["Temp"]}

execute if entity @s[tag=GbBRrx-] run tag @e[tag=Temp] add GbBRrx-
execute if entity @s[tag=GbBRrx+] run tag @e[tag=Temp] add GbBRrx+
execute if entity @s[tag=GbBRry-] run tag @e[tag=Temp] add GbBRry-
execute if entity @s[tag=GbBRry+] run tag @e[tag=Temp] add GbBRry+
execute if entity @s[tag=GbBRrx] run tag @e[tag=Temp] add GbBRrx
execute if entity @s[tag=GbBRry] run tag @e[tag=Temp] add GbBRry