tag @a remove StartLine
execute as @e[tag=GbBR,tag=GbBRrx+,scores={Time=-200}] at @s positioned ~-4.5 ~1 ~-5 run tag @a[tag=!InTrack,dz=9,dy=5,dx=3,gamemode=adventure] add StartLine
execute as @e[tag=GbBR,tag=GbBRrx-,scores={Time=-200}] at @s positioned ~0.5 ~1 ~-5 run tag @a[tag=!InTrack,dz=9,dy=5,dx=3,gamemode=adventure] add StartLine
execute as @e[tag=GbBR,tag=GbBRry+,scores={Time=-200}] at @s positioned ~-5 ~1 ~-4.5 run tag @a[tag=!InTrack,dx=9,dy=5,dz=3,gamemode=adventure] add StartLine
execute as @e[tag=GbBR,tag=GbBRry-,scores={Time=-200}] at @s positioned ~-5 ~1 ~-0.5 run tag @a[tag=!InTrack,dx=9,dy=5,dz=3,gamemode=adventure] add StartLine

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

scoreboard players add @e[scores={Time=-100..},tag=GbBR] Time 1
scoreboard players add @e[scores={Time=-100..},tag=GbBR] TimeL 1
scoreboard players add @a[scores={Time=-100..}] Time 1
scoreboard players add @a[scores={Time=-100..}] TimeL 1

scoreboard players set @a[tag=!InBoat] Time -200
tag @e[tag=msgAction,scores={TimeL=80}] remove msgAction


title @a[scores={Time=-99..0}] times 0 20 10
title @a[scores={Time=-99..-41}] subtitle {"text":"\u2589\u2589\u2589","color":"gray"}
title @a[scores={Time=-40..-21}] subtitle ["",{"text":"\u2589","color":"blue"},{"text":"\u2589\u2589","color":"gray"}]
title @a[scores={Time=-21..-1}] subtitle ["",{"text":"\u2589\u2589","color":"blue"},{"text":"\u2589","color":"gray"}]

title @a[scores={Time=0}] times 0 20 5
title @a[scores={Time=0}] title {"text":""}
title @a[scores={Time=0}] subtitle ["",{"text":"\u2589\u2589\u2589","color":"blue"}]

title @a[scores={Time=-99}] title {"text":"Are you ready ?","color":"aqua"}
title @a[scores={Time=-60}] title {"text":"3","color":"aqua"}
title @a[scores={Time=-40}] title {"text":"2","color":"aqua"}
title @a[scores={Time=-20}] title {"text":"1","color":"aqua"}

execute as @e[tag=GbBR,scores={Time=-60}] at @s run playsound block.note_block.bit record @a[scores={Time=-60}] ~ ~ ~ 1 0
execute as @e[tag=GbBR,scores={Time=-40}] at @s run playsound block.note_block.bit record @a[scores={Time=-40}] ~ ~ ~ 1 0
execute as @e[tag=GbBR,scores={Time=-20}] at @s run playsound block.note_block.bit record @a[scores={Time=-20}] ~ ~ ~ 1 0
execute as @e[tag=GbBR,scores={Time=0}] at @s run playsound block.note_block.bit record @a[scores={Time=0}] ~ ~ ~ 1 1


execute as @a[scores={Time=0..}] run scoreboard players operation @s Seconds = @s Time
execute as @a[scores={Time=0..}] run scoreboard players operation @s Seconds /= #20 global

execute as @a[scores={Time=0..}] run scoreboard players operation @s Centiemes = @s Time
execute as @a[scores={Time=0..}] run scoreboard players operation @s Centiemes *= #5 global
execute as @a[scores={Time=0..}] run scoreboard players operation @s Centiemes %= #100 global

execute as @a[scores={TimeL=0..}] run scoreboard players operation @s SecondsL = @s TimeL
execute as @a[scores={TimeL=0..}] run scoreboard players operation @s SecondsL /= #20 global

execute as @a[scores={TimeL=0..}] run scoreboard players operation @s CentiemesL = @s TimeL
execute as @a[scores={TimeL=0..}] run scoreboard players operation @s CentiemesL *= #5 global
execute as @a[scores={TimeL=0..}] run scoreboard players operation @s CentiemesL %= #100 global

function slide:track/timer

#execute as @a[tag=InBoat,tag=Lap,scores={Time=500..}] at @s at @e[type=boat,limit=1,sort=nearest] unless block ~ ~-2 ~ blue_stained_glass run tag @s remove Lap
execute as @a[tag=!FinishLine,tag=InBoat,tag=InTrack] at @s at @e[type=boat,limit=1,sort=nearest] if block ~ ~-2 ~ blue_stained_glass run function slide:track/finish/line
execute as @a[tag=FinishLine] at @s at @e[type=boat,limit=1,sort=nearest] unless block ~ ~-2 ~ blue_stained_glass run tag @s remove FinishLine

execute as @a[tag=!W1,tag=InBoat,tag=InTrack] at @s at @e[type=boat,limit=1,sort=nearest] if block ~ ~-2 ~ light_blue_stained_glass run tag @s add W1
execute as @a[tag=W2,tag=InBoat,tag=InTrack] at @s at @e[type=boat,limit=1,sort=nearest] if block ~ ~-2 ~ light_blue_stained_glass run tag @s remove W2
execute as @a[tag=!W2,tag=InBoat,tag=InTrack] at @s at @e[type=boat,limit=1,sort=nearest] if block ~ ~-2 ~ cyan_stained_glass run tag @s add W2
execute as @a[tag=!W2,tag=InBoat,tag=InTrack] at @s at @e[type=boat,limit=1,sort=nearest] run particle glow ~ ~ ~ 0 0 0 0 1

tag @a remove BestLapTime
execute as @a[tag=InTrack,scores={BestTrackTime=1..}] if score @s TimeL <= @s BestTrackTime run tag @s add BestLapTime
execute as @a[tag=InTrack] unless score @s BestTrackTime matches 1.. run tag @s add BestLapTime

#execute as @a[tag=InBoat,tag=InTrack,scores={Laps=1}] at @s at @e[type=boat,limit=1,sort=nearest] if block ~ ~-2 ~ blue_stained_glass run function slide:track/finish/finish

execute as @a[tag=StartLine,scores={egg=1..}] at @s run kill @e[type=egg,limit=1,sort=nearest]
execute as @a[tag=StartLine,scores={egg=1..}] at @s if entity @s[nbt={SelectedItemSlot:6}] run function slide:track/reset
execute as @a[nbt={SelectedItemSlot:7},tag=StartLine] at @s if entity @e[tag=GbBRllm,distance=..10] run title @s actionbar ["",{"score":{"name":"@e[tag=GbBRllm,limit=1,sort=nearest]","objective":"Laps"}},{"text": " Lap•s"}]
execute as @a[tag=StartLine,scores={egg=1..}] at @s if entity @s[nbt={SelectedItemSlot:7}] run function slide:track/lap/add
execute as @a[tag=StartLine,scores={egg=1..}] at @s if entity @s[nbt={SelectedItemSlot:8}] run function slide:track/start
execute as @a[tag=StartLine,scores={egg=1..}] run scoreboard players set @s egg 0

execute as @a[tag=StartLine,scores={egg_drop=1..}] at @s run function slide:track/lap/remove
execute as @a[tag=StartLine,scores={egg_drop=1..}] at @s run kill @e[type=item,limit=1,sort=nearest]
execute as @a[scores={egg_drop=1..}] run scoreboard players set @s egg_drop 0

execute as @e[tag=GbBR,scores={Time=-100..-1}] at @s unless entity @a[tag=InBoat,scores={Time=-100..-1}] run function slide:track/reset
execute as @e[tag=GbBRrx,scores={Time=0}] at @s run fill ~ ~3 ~-5 ~ ~3 ~5 air
execute as @e[tag=GbBRry,scores={Time=0}] at @s run fill ~-5 ~3 ~ ~5 ~3 ~ air

execute unless entity @a[scores={Track=1},tag=InTrack] as @e[tag=GbBR,scores={Time=-100..},tag=Tr1] at @s run function slide:track/finish/track
execute unless entity @a[scores={Track=2},tag=InTrack] as @e[tag=GbBR,scores={Time=-100..},tag=Tr2] at @s run function slide:track/finish/track
execute unless entity @a[scores={Track=3},tag=InTrack] as @e[tag=GbBR,scores={Time=-100..},tag=Tr3] at @s run function slide:track/finish/track
execute unless entity @a[scores={Track=4},tag=InTrack] as @e[tag=GbBR,scores={Time=-100..},tag=Tr4] at @s run function slide:track/finish/track
execute unless entity @a[scores={Track=5},tag=InTrack] as @e[tag=GbBR,scores={Time=-100..},tag=Tr5] at @s run function slide:track/finish/track
execute unless entity @a[scores={Track=6},tag=InTrack] as @e[tag=GbBR,scores={Time=-100..},tag=Tr6] at @s run function slide:track/finish/track

execute as @a[scores={Track=1},tag=InTrack,tag=InBoat] unless score @s Time = @e[tag=GbBR,scores={Time=-100..},tag=Tr1,limit=1] Time at @s run function slide:boat_remove
execute as @a[scores={Track=2},tag=InTrack,tag=InBoat] unless score @s Time = @e[tag=GbBR,scores={Time=-100..},tag=Tr2,limit=1] Time at @s run function slide:boat_remove
execute as @a[scores={Track=3},tag=InTrack,tag=InBoat] unless score @s Time = @e[tag=GbBR,scores={Time=-100..},tag=Tr3,limit=1] Time at @s run function slide:boat_remove
execute as @a[scores={Track=4},tag=InTrack,tag=InBoat] unless score @s Time = @e[tag=GbBR,scores={Time=-100..},tag=Tr4,limit=1] Time at @s run function slide:boat_remove
execute as @a[scores={Track=5},tag=InTrack,tag=InBoat] unless score @s Time = @e[tag=GbBR,scores={Time=-100..},tag=Tr5,limit=1] Time at @s run function slide:boat_remove
execute as @a[scores={Track=6},tag=InTrack,tag=InBoat] unless score @s Time = @e[tag=GbBR,scores={Time=-100..},tag=Tr6,limit=1] Time at @s run function slide:boat_remove
