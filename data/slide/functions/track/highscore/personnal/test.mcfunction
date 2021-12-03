execute if entity @s[scores={Track=1}] if score @s TimeL < @s[scores={Track=1}] BestTr1 run function slide:track/highscore/personnal/new
execute if entity @s[scores={Track=2}] if score @s TimeL < @s[scores={Track=2}] BestTr2 run function slide:track/highscore/personnal/new
execute if entity @s[scores={Track=3}] if score @s TimeL < @s[scores={Track=3}] BestTr3 run function slide:track/highscore/personnal/new
execute if entity @s[scores={Track=4}] if score @s TimeL < @s[scores={Track=4}] BestTr4 run function slide:track/highscore/personnal/new
execute if entity @s[scores={Track=5}] if score @s TimeL < @s[scores={Track=5}] BestTr5 run function slide:track/highscore/personnal/new
execute if entity @s[scores={Track=6}] if score @s TimeL < @s[scores={Track=6}] BestTr6 run function slide:track/highscore/personnal/new

execute if entity @s[scores={Track=1}] unless entity @s[scores={Track=1,BestTr1=1..}] run function slide:track/highscore/personnal/new
execute if entity @s[scores={Track=2}] unless entity @s[scores={Track=2,BestTr2=1..}] run function slide:track/highscore/personnal/new
execute if entity @s[scores={Track=3}] unless entity @s[scores={Track=3,BestTr3=1..}] run function slide:track/highscore/personnal/new
execute if entity @s[scores={Track=4}] unless entity @s[scores={Track=4,BestTr4=1..}] run function slide:track/highscore/personnal/new
execute if entity @s[scores={Track=5}] unless entity @s[scores={Track=5,BestTr5=1..}] run function slide:track/highscore/personnal/new
execute if entity @s[scores={Track=6}] unless entity @s[scores={Track=6,BestTr6=1..}] run function slide:track/highscore/personnal/new