execute positioned ~-2 ~-3 ~-2 as @e[tag=Tr6,dx=5,dy=4,dz=5] at @s positioned ~ ~3 ~ run function slide:editor/action/remove_line

setblock ~ ~ ~ air
fill ~2 ~1 ~2 ~-2 ~-3 ~-2 air
playsound entity.generic.explode ambient @s ~ ~ ~ 0.2
particle explosion ~ ~ ~ 0 0 0 0 1
