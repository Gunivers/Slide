tag @s add Highscore
scoreboard players operation @e[tag=GbBR,tag=Tr1,limit=1] Highscore = @s[scores={Track=1}] TimeL
scoreboard players operation @e[tag=GbBR,tag=Tr2,limit=1] Highscore = @s[scores={Track=2}] TimeL
scoreboard players operation @e[tag=GbBR,tag=Tr3,limit=1] Highscore = @s[scores={Track=3}] TimeL
scoreboard players operation @e[tag=GbBR,tag=Tr4,limit=1] Highscore = @s[scores={Track=4}] TimeL
scoreboard players operation @e[tag=GbBR,tag=Tr5,limit=1] Highscore = @s[scores={Track=5}] TimeL
scoreboard players operation @e[tag=GbBR,tag=Tr6,limit=1] Highscore = @s[scores={Track=6}] TimeL

scoreboard players operation @a[scores={Track=1}] BestTrackTime = @s[scores={Track=1}] TimeL
scoreboard players operation @a[scores={Track=2}] BestTrackTime = @s[scores={Track=2}] TimeL
scoreboard players operation @a[scores={Track=3}] BestTrackTime = @s[scores={Track=3}] TimeL
scoreboard players operation @a[scores={Track=4}] BestTrackTime = @s[scores={Track=4}] TimeL
scoreboard players operation @a[scores={Track=5}] BestTrackTime = @s[scores={Track=5}] TimeL
scoreboard players operation @a[scores={Track=6}] BestTrackTime = @s[scores={Track=6}] TimeL

tellraw @s {"text":"New Highscore !","color":"blue", "bold": true}
execute at @s run summon firework_rocket ~ ~1.5 ~ {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;393207],FadeColors:[I;16777215]}]}}}}
tellraw @a[tag=!Highscore] {"text":"New Highscore on track ","color":"blue","extra":[{"score":{"name":"@a[tag=Highscore,limit=1]","objective":"Track"}},{"text":" : "},{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1]","objective":"SecondsL"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1,scores={Centiemes=..9}]","objective":"global"}},{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1]","objective":"CentiemesL"}},{"text":"s by "},{"selector":"@a[tag=Highscore,limit=1]"}]}



#{GlowingText: 0b, Color: "black", x: 998, Text4: '{"text":"*----*---*----*"}', y: 42, Text3: '{"text":""}', z: 1051, Text2: '{"color":"aqua","text":"No one"}', id: "minecraft:sign", Text1: '{"text":"*- Highscore -*"}'}

execute if entity @s[scores={TimeL=0..,Track=1}] run data merge block 995 36 1007 {Text2: '{"selector":"@a[tag=Highscore,limit=1]","color":"blue"}', Text3: '{"text":"","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1]","objective":"SecondsL"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1,scores={Centiemes=..9}]","objective":"global"}},{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1]","objective":"CentiemesL"}},{"text":"s"}]}'}
execute if entity @s[scores={TimeL=0..,Track=2}] run data merge block 974 35 1012 {Text2: '{"selector":"@a[tag=Highscore,limit=1]","color":"blue"}', Text3: '{"text":"","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1]","objective":"SecondsL"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1,scores={CentiemesL=..9}]","objective":"global"}},{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1]","objective":"CentiemesL"}},{"text":"s"}]}'}
execute if entity @s[scores={TimeL=0..,Track=3}] run data merge block 978 40 1044 {Text2: '{"selector":"@a[tag=Highscore,limit=1]","color":"blue"}', Text3: '{"text":"","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1]","objective":"SecondsL"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1,scores={CentiemesL=..9}]","objective":"global"}},{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1]","objective":"CentiemesL"}},{"text":"s"}]}'}
execute if entity @s[scores={TimeL=0..,Track=4}] run data merge block 998 42 1051 {Text2: '{"selector":"@a[tag=Highscore,limit=1]","color":"blue"}', Text3: '{"text":"","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1]","objective":"SecondsL"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1,scores={CentiemesL=..9}]","objective":"global"}},{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1]","objective":"CentiemesL"}},{"text":"s"}]}'}
execute if entity @s[scores={TimeL=0..,Track=5}] run data merge block 1019 41 1034 {Text2: '{"selector":"@a[tag=Highscore,limit=1]","color":"blue"}', Text3: '{"text":"","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1]","objective":"SecondsL"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1,scores={CentiemesL=..9}]","objective":"global"}},{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1]","objective":"CentiemesL"}},{"text":"s"}]}'}
execute if entity @s[scores={TimeL=0..,Track=6}] run data merge block 995 40 997 {Text2: '{"selector":"@a[tag=Highscore,limit=1]","color":"blue"}', Text3: '{"text":"","color":"blue","extra":[{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1]","objective":"SecondsL"}},{"text":"."},{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1,scores={CentiemesL=..9}]","objective":"global"}},{"color":"aqua","bold":true,"score":{"name":"@a[tag=Highscore,limit=1]","objective":"CentiemesL"}},{"text":"s"}]}'}


tag @s remove Highscore