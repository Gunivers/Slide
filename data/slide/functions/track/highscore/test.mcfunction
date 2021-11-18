execute if score @s[tag=Tr1] TimeL < @e[tag=GbBR,tag=Tr1,limit=1] Highscore run function slide:track/highscore/new
execute if score @s[tag=Tr2] TimeL < @e[tag=GbBR,tag=Tr2,limit=1] Highscore run function slide:track/highscore/new
execute if score @s[tag=Tr3] TimeL < @e[tag=GbBR,tag=Tr3,limit=1] Highscore run function slide:track/highscore/new
execute if score @s[tag=Tr4] TimeL < @e[tag=GbBR,tag=Tr4,limit=1] Highscore run function slide:track/highscore/new
execute if score @s[tag=Tr5] TimeL < @e[tag=GbBR,tag=Tr5,limit=1] Highscore run function slide:track/highscore/new
execute if score @s[tag=Tr6] TimeL < @e[tag=GbBR,tag=Tr6,limit=1] Highscore run function slide:track/highscore/new

execute if entity @s[tag=Tr1] unless score @e[tag=GbBR,tag=Tr1,limit=1] Highscore matches 1.. run function slide:track/highscore/new
execute if entity @s[tag=Tr2] unless score @e[tag=GbBR,tag=Tr2,limit=1] Highscore matches 1.. run function slide:track/highscore/new
execute if entity @s[tag=Tr3] unless score @e[tag=GbBR,tag=Tr3,limit=1] Highscore matches 1.. run function slide:track/highscore/new
execute if entity @s[tag=Tr4] unless score @e[tag=GbBR,tag=Tr4,limit=1] Highscore matches 1.. run function slide:track/highscore/new
execute if entity @s[tag=Tr5] unless score @e[tag=GbBR,tag=Tr5,limit=1] Highscore matches 1.. run function slide:track/highscore/new
execute if entity @s[tag=Tr6] unless score @e[tag=GbBR,tag=Tr6,limit=1] Highscore matches 1.. run function slide:track/highscore/new