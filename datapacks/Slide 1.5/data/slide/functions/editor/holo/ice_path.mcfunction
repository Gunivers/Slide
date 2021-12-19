tag @s[tag=!Ed_Holo_IcePath] add Temp
tag @s[tag=Ed_Holo_IcePath,tag=!Ed_IcePath] remove Ed_Holo_IcePath
tag @s[tag=Temp] add Ed_Holo_IcePath
tag @s remove Temp

execute at @s[tag=Ed_Holo_IcePath] align xyz run summon slime ~ ~-200 ~ {Size:1,NoAI:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Silent:1,Invulnerable:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Tags:["Ed_Holo_Slime_IcePath","Ed_Holo_Slime_IcePath1"],Team:Holo}
execute at @s[tag=Ed_Holo_IcePath] align xyz run summon slime ~ ~-200 ~ {Size:1,NoAI:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Silent:1,Invulnerable:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Tags:["Ed_Holo_Slime_IcePath","Ed_Holo_Slime_IcePath2"],Team:Holo}
execute at @s[tag=Ed_Holo_IcePath] align xyz run summon slime ~ ~-200 ~ {Size:1,NoAI:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Silent:1,Invulnerable:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Tags:["Ed_Holo_Slime_IcePath","Ed_Holo_Slime_IcePath3"],Team:Holo}
execute at @s[tag=Ed_Holo_IcePath] align xyz run summon slime ~ ~-200 ~ {Size:1,NoAI:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Silent:1,Invulnerable:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Tags:["Ed_Holo_Slime_IcePath","Ed_Holo_Slime_IcePath4"],Team:Holo}

execute at @s[tag=!Ed_Holo_IcePath] run teleport @e[tag=Ed_Holo_Slime_IcePath] ~ -10000 ~
execute if entity @s[tag=!Ed_Holo_IcePath] at @e[type=slime,tag=Ed_Holo_Slime_IcePath] run data modify entity @s Size set value 0
execute at @s[tag=!Ed_Holo_IcePath] run kill @e[tag=Ed_Holo_Slime_IcePath]
