tag @s[tag=!Ed_Holo_SpeedReducer] add Temp
tag @s[tag=Ed_Holo_SpeedReducer,tag=!Ed_SpeedReducer] remove Ed_Holo_SpeedReducer
tag @s[tag=Temp] add Ed_Holo_SpeedReducer
tag @s remove Temp

execute at @s[tag=Ed_Holo_SpeedReducer] align xyz run summon slime ~ ~-200 ~ {Size:1,NoAI:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Silent:1,Invulnerable:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Tags:["Ed_Holo_Slime_SpeedReducer","Ed_Holo_Slime_SpeedReducer1"],Team:Holo}

execute at @s[tag=!Ed_Holo_SpeedReducer] run teleport @e[tag=Ed_Holo_Slime_SpeedReducer] ~ -10000 ~
execute if entity @s[tag=!Ed_Holo_SpeedReducer] at @e[type=slime,tag=Ed_Holo_Slime_SpeedReducer] run data modify entity @s Size set value 0
execute at @s[tag=!Ed_Holo_SpeedReducer] run kill @e[tag=Ed_Holo_Slime_SpeedReducer]
