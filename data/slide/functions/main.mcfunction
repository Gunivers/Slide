tag @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] add InBoat
execute as @a[tag=InBoat,nbt=!{RootVehicle:{Entity:{id:"minecraft:boat"}}}] at @s run function slide:boat_remove

effect give @a[gamemode=adventure] minecraft:weakness 1 250 true
effect give @a minecraft:resistance 1 250 true

execute as @e[tag=GbBR] at @s run tag @a[distance=..10,tag=!StartLine,scores={Time=-200..0}] add StartLine
execute as @a[tag=StartLine] at @s unless entity @e[tag=GbBR,distance=..10] run tag @s remove StartLine
tag @a[tag=StartLine,scores={Time=-100..}] remove StartLine
execute as @a[tag=StartLine,gamemode=adventure] run item replace entity @s hotbar.0 with spruce_boat
execute as @a[tag=StartLine,gamemode=adventure] run item replace entity @s hotbar.6 with egg{HideFlags:63,display:{Name:'{"text":"Reset"}'}}
execute as @a[tag=StartLine,gamemode=adventure] at @s if entity @e[tag=GbBRllm,distance=..10,limit=1] run item replace entity @s hotbar.7 with egg{HideFlags:63,display:{Name:'{"text":"Lap"}',Lore:['{"text":"Throw to Increase"}','{"text":"Drop to Reduce"}']}}
execute as @a[tag=StartLine,gamemode=adventure] at @s unless entity @e[tag=GbBRllm,distance=..10,limit=1] run item replace entity @s hotbar.7 with air
execute as @a[tag=StartLine,gamemode=adventure] run item replace entity @s hotbar.8 with egg{HideFlags:63,display:{Name:'{"text":"Start Game"}'}}

execute as @a[tag=!StartLine,gamemode=adventure] run item replace entity @s hotbar.0 with air
execute as @a[gamemode=adventure] run item replace entity @s hotbar.1 with air
execute as @a[gamemode=adventure] run item replace entity @s hotbar.2 with air
execute as @a[gamemode=adventure] run item replace entity @s hotbar.3 with air
execute as @a[gamemode=adventure] run item replace entity @s hotbar.4 with oak_door{HideFlags:63,display:{Name:'{"text":"Respawn"}',Lore:['{"text":"Drop to Use"}']},CanPlaceOn:["minecraft:sponge"]}
execute as @a[gamemode=adventure] run item replace entity @s hotbar.5 with air
execute as @a[tag=!StartLine,gamemode=adventure] run item replace entity @s hotbar.6 with air
execute as @a[tag=!StartLine,gamemode=adventure] run item replace entity @s hotbar.7 with air
execute as @a[tag=!StartLine,gamemode=adventure] run item replace entity @s hotbar.8 with air





#execute as @a[tag=InBoat] if entity @s[scores={Time=-200}] run scoreboard players set @s Time -100
scoreboard players add @e[scores={Time=-100..}] Time 1
scoreboard players set @a[tag=!InBoat] Time -200


tellraw @a[scores={Time=-99}] "Etes-vous prêt ?"
tellraw @a[scores={Time=-60}] "3"
tellraw @a[scores={Time=-40}] "2"
tellraw @a[scores={Time=-20}] "1"
tellraw @a[scores={Time=-0}] "C'est partie !"


execute as @a[scores={Time=0..}] run scoreboard players operation @s Seconds = @s Time
execute as @a[scores={Time=0..}] run scoreboard players operation @s Seconds /= #20 global

execute as @a[scores={Time=0..}] run scoreboard players operation @s Centiemes = @s Time
execute as @a[scores={Time=0..}] run scoreboard players operation @s Centiemes *= #5 global
execute as @a[scores={Time=0..}] run scoreboard players operation @s Centiemes %= #100 global


execute as @a[scores={Time=0..,Centiemes=..9}] run title @s actionbar ["",{"score":{"name":"@s","objective":"Seconds"}},{"text":":0"},{"score":{"name":"@s","objective":"Centiemes"}}]
execute as @a[scores={Time=0..,Centiemes=10..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"Seconds"}},{"text":":"},{"score":{"name":"@s","objective":"Centiemes"}}]


#execute as @a[tag=InBoat,tag=Lap,scores={Time=500..}] at @s at @e[type=boat,limit=1,sort=nearest] unless block ~ ~-2 ~ blue_stained_glass run tag @s remove Lap
execute as @a[tag=!FinishLine,tag=InBoat,tag=InTrack] at @s at @e[type=boat,limit=1,sort=nearest] if block ~ ~-2 ~ blue_stained_glass run function slide:track/finish_line
execute as @a[tag=FinishLine] at @s at @e[type=boat,limit=1,sort=nearest] unless block ~ ~-2 ~ blue_stained_glass run tag @s remove FinishLine

execute as @a[tag=!W1,tag=InBoat,tag=InTrack] at @s at @e[type=boat,limit=1,sort=nearest] if block ~ ~-2 ~ light_blue_stained_glass run tag @s add W1
execute as @a[tag=W2,tag=InBoat,tag=InTrack] at @s at @e[type=boat,limit=1,sort=nearest] if block ~ ~-2 ~ light_blue_stained_glass run tag @s remove W2
execute as @a[tag=!W2,tag=InBoat,tag=InTrack] at @s at @e[type=boat,limit=1,sort=nearest] if block ~ ~-2 ~ cyan_stained_glass run tag @s add W2


#execute as @a[tag=InBoat,tag=InTrack,scores={Laps=1}] at @s at @e[type=boat,limit=1,sort=nearest] if block ~ ~-2 ~ blue_stained_glass run function slide:finish

execute as @a[scores={egg=1..}] at @s run kill @e[type=egg,limit=1,sort=nearest]
execute as @a[scores={egg=1..}] at @s if entity @s[nbt={SelectedItemSlot:6}] run function slide:track/reset
execute as @a[nbt={SelectedItemSlot:7},tag=StartLine] at @s if entity @e[tag=GbBRllm,distance=..10] run title @s actionbar ["",{"score":{"name":"@e[tag=GbBRllm,limit=1,sort=nearest]","objective":"GbBRlam"}},{"text": " tour(s)"}]
execute as @a[scores={egg=1..}] at @s if entity @s[nbt={SelectedItemSlot:7}] run function slide:track/lap/add
execute as @a[scores={egg=1..}] at @s if entity @s[nbt={SelectedItemSlot:8}] run function slide:track/start
execute as @a[scores={egg=1..}] run scoreboard players set @s egg 0

execute as @a[scores={egg_drop=1..}] at @s run function slide:track/lap/remove
execute as @a[scores={egg_drop=1..}] at @s run kill @e[type=item,limit=1,sort=nearest]
execute as @a[scores={egg_drop=1..}] run scoreboard players set @s egg_drop 0

execute as @e[tag=GbBR,scores={Time=-100..-1}] at @s unless entity @a[tag=InBoat,scores={Time=-100..-1}] run function slide:track/reset
execute as @e[tag=GbBRrx,scores={Time=0}] at @s run fill ~ ~3 ~-5 ~ ~3 ~5 air
execute as @e[tag=GbBRry,scores={Time=0}] at @s run fill ~-5 ~3 ~ ~5 ~3 ~ air

execute as @a[scores={respawn=1..}] run function slide:respawn

execute unless entity @a[tag=Tr1,tag=InTrack] as @e[tag=GbBR,tag=Tr1,scores={Time=-100..}] at @s run function slide:track/finish_track
execute unless entity @a[tag=Tr2,tag=InTrack] as @e[tag=GbBR,tag=Tr2,scores={Time=-100..}] at @s run function slide:track/finish_track
execute unless entity @a[tag=Tr3,tag=InTrack] as @e[tag=GbBR,tag=Tr3,scores={Time=-100..}] at @s run function slide:track/finish_track
execute unless entity @a[tag=Tr4,tag=InTrack] as @e[tag=GbBR,tag=Tr4,scores={Time=-100..}] at @s run function slide:track/finish_track
execute unless entity @a[tag=Tr5,tag=InTrack] as @e[tag=GbBR,tag=Tr5,scores={Time=-100..}] at @s run function slide:track/finish_track
execute unless entity @a[tag=Tr6,tag=InTrack] as @e[tag=GbBR,tag=Tr6,scores={Time=-100..}] at @s run function slide:track/finish_track
execute unless entity @a[tag=Tr7,tag=InTrack] as @e[tag=GbBR,tag=Tr7,scores={Time=-100..}] at @s run function slide:track/finish_track

data merge block 1003 41 1059 {Text1:'{"text":"==========="}',Text2:'{"score":{"name":"@e[tag=GbBR,tag=Tr4]","objective":"Time"}}'}