function slide:boat_remove
teleport @s 999 40 1024 90 0
kill @e[type=item,nbt={Item:{id: "minecraft:oak_door"}}]

scoreboard players set @s Respawn 0
scoreboard players enable @s Respawn