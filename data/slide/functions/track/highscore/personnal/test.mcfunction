execute if score @s[scores={Track=1}] TimeL < @s BestTr1 run function slide:track/highscore/personnal/new
execute if score @s[scores={Track=2}] TimeL < @s BestTr2 run function slide:track/highscore/personnal/new
execute if score @s[scores={Track=3}] TimeL < @s BestTr3 run function slide:track/highscore/personnal/new
execute if score @s[scores={Track=4}] TimeL < @s BestTr4 run function slide:track/highscore/personnal/new
execute if score @s[scores={Track=5}] TimeL < @s BestTr5 run function slide:track/highscore/personnal/new
execute if score @s[scores={Track=6}] TimeL < @s BestTr6 run function slide:track/highscore/personnal/new

execute unless entity @s[scores={Track=1,BestTr1=1..}] run function slide:track/highscore/personnal/new
execute unless entity @s[scores={Track=2,BestTr2=1..}] run function slide:track/highscore/personnal/new
execute unless entity @s[scores={Track=3,BestTr3=1..}] run function slide:track/highscore/personnal/new
execute unless entity @s[scores={Track=4,BestTr4=1..}] run function slide:track/highscore/personnal/new
execute unless entity @s[scores={Track=5,BestTr5=1..}] run function slide:track/highscore/personnal/new
execute unless entity @s[scores={Track=6,BestTr6=1..}] run function slide:track/highscore/personnal/new