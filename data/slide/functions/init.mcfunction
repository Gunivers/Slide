say Slide 1.5

gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops true
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doLimitedCrafting false
gamerule doMobLoot true
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fallDamage false
gamerule fireDamage false
gamerule forgiveDeadPlayers true
gamerule keepInventory true
gamerule logAdminCommands true
gamerule maxCommandChainLength 65536
gamerule maxEntityCramming 24
gamerule mobGriefing true
gamerule naturalRegeneration true
gamerule randomTickSpeed 0
gamerule reducedDebugInfo false
gamerule sendCommandFeedback false
gamerule showDeathMessages true
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false
gamerule universalAnger false

difficulty normal

weather clear

forceload add 64 66 60 61
forceload add 66 58
forceload add 62 70
forceload add 66 68

setworldspawn 999 40 1024
defaultgamemode adventure

scoreboard objectives add global dummy
scoreboard players set #20 global 20
scoreboard players set #5 global 5
scoreboard players set #100 global 100
scoreboard players set #0 global 0

scoreboard objectives add Respawn trigger
scoreboard objectives add Training trigger
scoreboard objectives add EditMode trigger

scoreboard objectives add Track dummy

scoreboard objectives add Time dummy
scoreboard objectives add Seconds dummy
scoreboard objectives add Centiemes dummy

scoreboard objectives add TimeL dummy
scoreboard objectives add SecondsL dummy
scoreboard objectives add CentiemesL dummy

scoreboard objectives add MoveX dummy
scoreboard players set @a MoveX 0
scoreboard objectives add MoveX2 dummy
scoreboard objectives add MoveZ dummy
scoreboard players set @a MoveZ 0
scoreboard objectives add MoveZ2 dummy

scoreboard objectives add Laps dummy
execute as @e[tag=GbBR] unless entity @s[scores={Laps=1..}] run scoreboard players operation @s Laps = @s GbBRlam
scoreboard objectives add MaxLaps dummy
scoreboard objectives add LapsIn dummy
scoreboard objectives add BestTrackTime dummy
scoreboard objectives add BestPersoTime dummy
scoreboard objectives add Highscore dummy
scoreboard objectives add playerId dummy

scoreboard objectives add egg minecraft.used:minecraft.egg
scoreboard objectives add drop_door minecraft.dropped:minecraft.oak_door
scoreboard objectives add egg_drop minecraft.dropped:minecraft.egg
scoreboard objectives add tnt minecraft.used:minecraft.tnt
scoreboard players set @e[tag=GbBR] Time -200

scoreboard objectives add BestTr1 dummy
scoreboard objectives add BestTr2 dummy
scoreboard objectives add BestTr3 dummy
scoreboard objectives add BestTr4 dummy
scoreboard objectives add BestTr5 dummy
scoreboard objectives add BestTr6 dummy

scoreboard objectives setdisplay list

team add Holo
team modify Holo color aqua

tag @e[tag=Tr1] add GbBRrx-
tag @e[tag=Tr2] add GbBRrx-
tag @e[tag=Tr3] add GbBRrx-
tag @e[tag=Tr4] add GbBRry+
tag @e[tag=Tr5] add GbBRrx+

fill 20 99 -20 -20 98 20 stone
fill 14 100 13 13 106 20 stone
fill -5 100 -14 -6 100 -13 stone

#sign end track
setblock 1064 8 937 minecraft:air
data merge block 1064 8 938 {Text1:'{"text":"*----*---*----*","clickEvent":{"action":"run_command","value":"trigger Respawn"}}'}
setblock 998 5 1129 minecraft:air
data merge block 998 4 1129 {Text1:'{"text":"*----*---*----*","clickEvent":{"action":"run_command","value":"trigger Respawn"}}'}
setblock 1067 5 1099 minecraft:air
data merge block 1067 5 1098 {Text1:'{"text":"*----*---*----*","clickEvent":{"action":"run_command","value":"trigger Respawn"}}'}
data merge block 1006 53 889 {Text1:'{"text":"*----*---*----*","clickEvent":{"action":"run_command","value":"trigger Respawn"}}'}
data merge block 1006 53 889 {Text1:'{"text":"*----*---*----*","clickEvent":{"action":"run_command","value":"trigger Respawn"}}'}
data merge block 1006 53 891 {Text1:'{"text":"*----*---*----*","clickEvent":{"action":"run_command","value":"trigger Training"}}'}
data merge block 1007 38 1035 {Text1:'{"text":"*----*---*----*","clickEvent":{"action":"run_command","value":"trigger Training"}}'}

data merge block 1001 40 999 {Text1:'{"text":"*----*---*----*"}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":"*----*---*----*"}'}
data merge block 1001 40 1001 {Text1:'{"text":"*----*---*----*"}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":"*----*---*----*"}'}
data merge block 1001 39 1001 {Text1:'{"text":"*----*---*----*"}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":"*----*---*----*"}'}
data merge block 1001 39 999 {Text1:'{"text":"*----*---*----*"}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":"*----*---*----*"}'}
data merge block 1001 39 1000 {Text1:'{"text":"*----*---*----*","clickEvent":{"action":"run_command","value":"trigger EditMode"}}',Text2: '{"bold":true,"color":"white","text":"Edit"}',Text3: '{"bold":true,"color":"white","text":"the track"}',Text4:'{"text":"*----*---*----*"}'}

data merge block 995 36 1005 {Text1:'{"text":"Gunivers\' Best"}',Text2:'{"text":"9.50 seconds"}',Text3:'{"text":"by Theaustudio"}',Text4:'{"text":"*----*---*----*"}'}
data merge block 998 42 1053 {Text1:'{"text":"Gunivers\' Best"}',Text2:'{"text":"17.45 seconds"}',Text3:'{"text":"by Laizo"}',Text4:'{"text":"*----*---*----*"}'}
data merge block 1021 41 1034 {Text1:'{"text":"Gunivers\' Best"}',Text2:'{"text":"52.90 seconds"}',Text3:'{"text":"by Laizo"}'}
data merge block 972 35 1012 {Text1:'{"text":"Gunivers\' Best"}',Text2:'{"text":"18.85 seconds"}',Text3:'{"text":"by Laizo"}'}
data merge block 976 40 1044 {Text1:'{"text":"Gunivers\' Best"}'}

kill @e[tag=tp]
summon marker 998 4 1129 {Tags:["tp","Tr4"]}
summon marker 1066 4 1098 {Tags:["tp","Tr3"]}
summon marker 1063 7 938 {Tags:["tp","Tr2"]}
summon marker 1014 19.5 1007 {Tags:["tp","Tr1"]}
summon marker 1006 52 889 {Tags:["tp","Training"]}

setblock 993 27 1019 minecraft:player_wall_head[facing=east]{SkullOwner:{Name:"Theaustudio",Id:"458b2654-52fc-2d47-2806-88b7ae49d127",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDU4YjI2NTQ1MmZjMmQ0NzI4MDY4OGI3YWU0OWQxMjcwZDE1MGIwZTE1ZWY2NjNiNzhkMDVmNTQ0ODZlOGIyZiJ9fX0="}]}}}
setblock 993 26 1019 oak_wall_sign[facing=east]{Text1:'{"text":"*----*---*----*"}',Text2:'{"text":"Theaustudio"}',Text3:'{"text":"Datapack V1.5"}',Text4:'{"text":"*----*---*----*"}'}
setblock 1007 29 1018 oak_wall_sign[facing=east]{Text1:'{"text":"Tu veux pas"}',Text2:'{"text":"m\'aider à projet"}',Text3:'{"text":"alpha plutot ?"}',Text4:'{"text":"- Laizo"}'}

tag @a remove Editor