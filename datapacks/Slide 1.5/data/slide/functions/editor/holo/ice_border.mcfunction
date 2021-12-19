tag @s[tag=!Ed_Holo_IceBorder] add Temp
tag @s[tag=Ed_Holo_IceBorder,tag=!Ed_IceBorder] remove Ed_Holo_IceBorder
tag @s[tag=Temp] add Ed_Holo_IceBorder
tag @s remove Temp

execute at @s[tag=Ed_Holo_IceBorder] align xyz run summon slime ~ ~-200 ~ {Size:1,NoAI:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Silent:1,Invulnerable:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Tags:["Ed_Holo_Slime_IceBorder","Ed_Holo_Slime_IceBorder1"],Team:Holo}
execute at @s[tag=Ed_Holo_IceBorder] align xyz run summon slime ~ ~-200 ~ {Size:1,NoAI:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Silent:1,Invulnerable:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647,ShowParticles:0b},{Id:24,Amplifier:0,Duration:2147483647,ShowParticles:0b}],Tags:["Ed_Holo_Slime_IceBorder","Ed_Holo_Slime_IceBorder2"],Team:Holo}

execute at @s[tag=!Ed_Holo_IceBorder] run teleport @e[tag=Ed_Holo_Slime_IceBorder] ~ -10000 ~
execute if entity @s[tag=!Ed_Holo_IceBorder] at @e[type=slime,tag=Ed_Holo_Slime_IceBorder] run data modify entity @s Size set value 0
execute at @s[tag=!Ed_Holo_IceBorder] run kill @e[tag=Ed_Holo_Slime_IceBorder]
