execute if score @s[scores={Track=1}] TimeL < @e[tag=GbBR,tag=Tr1,limit=1] Highscore run function slide:track/highscore/new
execute if score @s[scores={Track=2}] TimeL < @e[tag=GbBR,tag=Tr2,limit=1] Highscore run function slide:track/highscore/new
execute if score @s[scores={Track=3}] TimeL < @e[tag=GbBR,tag=Tr3,limit=1] Highscore run function slide:track/highscore/new
execute if score @s[scores={Track=4}] TimeL < @e[tag=GbBR,tag=Tr4,limit=1] Highscore run function slide:track/highscore/new
execute if score @s[scores={Track=5}] TimeL < @e[tag=GbBR,tag=Tr5,limit=1] Highscore run function slide:track/highscore/new
execute if score @s[scores={Track=6}] TimeL < @e[tag=GbBR,tag=Tr6,limit=1] Highscore run function slide:track/highscore/new

execute if entity @s[scores={Track=1}] unless entity @e[tag=GbBR,tag=Tr1,limit=1,scores={Highscore=1..}] run function slide:track/highscore/new
execute if entity @s[scores={Track=2}] unless entity @e[tag=GbBR,tag=Tr2,limit=1,scores={Highscore=1..}] run function slide:track/highscore/new
execute if entity @s[scores={Track=3}] unless entity @e[tag=GbBR,tag=Tr3,limit=1,scores={Highscore=1..}] run function slide:track/highscore/new
execute if entity @s[scores={Track=4}] unless entity @e[tag=GbBR,tag=Tr4,limit=1,scores={Highscore=1..}] run function slide:track/highscore/new
execute if entity @s[scores={Track=5}] unless entity @e[tag=GbBR,tag=Tr5,limit=1,scores={Highscore=1..}] run function slide:track/highscore/new
execute if entity @s[scores={Track=6}] unless entity @e[tag=GbBR,tag=Tr6,limit=1,scores={Highscore=1..}] run function slide:track/highscore/new

function slide:track/highscore/personnal/test