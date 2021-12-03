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
gamerule sendCommandFeedback true
gamerule showDeathMessages true
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false
gamerule universalAnger false

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
execute as @e[tag=GbBRlam] run scoreboard players operation @s Laps = @s GbBRlam
scoreboard objectives add MaxLaps dummy
scoreboard objectives add LapsIn dummy
scoreboard objectives add BestTrackTime dummy
scoreboard objectives add BestPersoTime dummy
scoreboard objectives add Highscore dummy

scoreboard objectives add egg minecraft.used:minecraft.egg
scoreboard objectives add drop_door minecraft.dropped:minecraft.oak_door
scoreboard objectives add egg_drop minecraft.dropped:minecraft.egg
scoreboard players set @e[tag=GbBR] Time -200

scoreboard objectives add BestTr1 dummy
scoreboard objectives add BestTr2 dummy
scoreboard objectives add BestTr3 dummy
scoreboard objectives add BestTr4 dummy
scoreboard objectives add BestTr5 dummy
scoreboard objectives add BestTr6 dummy


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

kill @e[tag=tp]
summon marker 998 4 1129 {Tags:["tp","Tr4"]}
summon marker 1066 4 1098 {Tags:["tp","Tr3"]}
summon marker 1063 7 938 {Tags:["tp","Tr2"]}
summon marker 1014 19.5 1007 {Tags:["tp","Tr1"]}
summon marker 1006 52 889 {Tags:["tp","Training"]}