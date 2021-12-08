execute as @s[tag=!Ed_IcePath] run item replace entity @s hotbar.0 with egg{HideFlags:63,display:{Name:'{"text":"Ice Path"}',Lore:['{"text":"Throw to enable/disable"}','{"text":"Drop to change the width"}']}}
execute as @s[tag=Ed_IcePath] run item replace entity @s hotbar.0 with egg{Enchantments:[{id:"unbreaking",lvl:1}],HideFlags:63,display:{Name:'{"text":"Ice Path"}',Lore:['{"text":"Throw to enable/disable"}','{"text":"Drop to change the width"}']}}
execute as @s[tag=!Ed_IceBorder] run item replace entity @s hotbar.1 with egg{HideFlags:63,display:{Name:'{"text":"Ice Border"}',Lore:['{"text":"Throw to enable/disable"}']}}
execute as @s[tag=Ed_IceBorder] run item replace entity @s hotbar.1 with egg{Enchantments:[{id:"unbreaking",lvl:1}],HideFlags:63,display:{Name:'{"text":"Ice Border"}',Lore:['{"text":"Throw to enable/disable"}']}}
execute as @s[tag=!Ed_SpeedReducer] run item replace entity @s hotbar.2 with egg{HideFlags:63,display:{Name:'{"text":"Speed Reducer"}',Lore:['{"text":"Throw to enable/disable"}']}}
execute as @s[tag=Ed_SpeedReducer] run item replace entity @s hotbar.2 with egg{Enchantments:[{id:"unbreaking",lvl:1}],HideFlags:63,display:{Name:'{"text":"Speed Reducer"}',Lore:['{"text":"Throw to enable/disable"}']}}
item replace entity @s hotbar.3 with ice
execute as @s[tag=Ed_Simple] run item replace entity @s hotbar.4 with egg{HideFlags:63,display:{Name:'{"text":"Track Mode : Simple / With Lap"}',Lore:['{"text":"Throw to change mode"}']}}
execute as @s[tag=Ed_Laps] run item replace entity @s hotbar.4 with egg{Enchantments:[{id:"unbreaking",lvl:1}],HideFlags:63,display:{Name:'{"text":"Track Mode : Simple / With Lap"}',Lore:['{"text":"Throw to change mode"}']}}
#execute as @s[tag=!Ed_ToutCasser] run item replace entity @s hotbar.8 with egg{HideFlags:63,display:{Name:'{"text":"Buldozer"}',Lore:['{"text":"Throw to enable/disable"}']}}
#execute as @s[tag=Ed_ToutCasser] run item replace entity @s hotbar.8 with egg{Enchantments:[{id:"unbreaking",lvl:1}],HideFlags:63,display:{Name:'{"text":"Buldozer"}',Lore:['{"text":"Throw to enable/disable"}']}}
item replace entity @s hotbar.8 with tnt

execute as @s[tag=Ed_Simple] run item replace entity @s hotbar.5 with sheep_spawn_egg{HideFlags:63,EntityTag:{id:"minecraft:snow_golem",Tags:["Ed_StartLine"]},display:{Name:'{"text":"Start Line"}',Lore:['{"text":"Place to define the Start line"}']}}
execute as @s[tag=Ed_Simple] run item replace entity @s hotbar.6 with sheep_spawn_egg{HideFlags:63,EntityTag:{id:"minecraft:snow_golem",Tags:["Ed_FinishLine"]},display:{Name:'{"text":"Finish Line"}',Lore:['{"text":"Place to define the Finish line"}']}}
execute as @s[tag=Ed_Simple] run item replace entity @s hotbar.7 with air

execute as @s[tag=Ed_Laps] run item replace entity @s hotbar.5 with creeper_spawn_egg{HideFlags:63,EntityTag:{id:"minecraft:snow_golem",Tags:["Ed_LapLine"]},display:{Name:'{"text":"Start / Finish Line"}',Lore:['{"text":"Place to define the Start / Finish line"}']}}
execute as @s[tag=Ed_Laps] run item replace entity @s hotbar.6 with llama_spawn_egg{HideFlags:63,EntityTag:{id:"minecraft:snow_golem",Tags:["Ed_W1"]},display:{Name:'{"text":"Waypoint 1"}',Lore:['{"text":"Place to define the first Waypoint"}']}}
execute as @s[tag=Ed_Laps] run item replace entity @s hotbar.7 with llama_spawn_egg{HideFlags:63,EntityTag:{id:"minecraft:snow_golem",Tags:["Ed_W2"]},display:{Name:'{"text":"Waypoint 2"}',Lore:['{"text":"Place to define the second Waypoint"}']}}



execute as @s[scores={egg=1..}] at @s run kill @e[type=egg,limit=1,sort=nearest]
execute as @s[scores={egg=1..},nbt={SelectedItemSlot:0}] run function slide:editor/action/ice_path
execute as @s[scores={egg=1..},nbt={SelectedItemSlot:1}] run function slide:editor/action/ice_border
execute as @s[scores={egg=1..},nbt={SelectedItemSlot:2}] run function slide:editor/action/speed_reducer
execute as @s[scores={egg=1..},nbt={SelectedItemSlot:4}] run function slide:editor/action/change_mode
execute as @s[scores={tnt=1..},nbt={SelectedItemSlot:8}] at @s anchored eyes positioned ^ ^0.1 ^ run function slide:editor/action/toutcasser
execute as @s[scores={egg=1..}] run scoreboard players set @s egg 0

execute as @s[scores={egg_drop=1..}] at @s run kill @e[type=item,limit=1,sort=nearest]
execute as @a[scores={egg_drop=1..}] run scoreboard players set @s egg_drop 0

execute as @s[tag=Ed_IcePath] at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 ice replace air
execute as @s[tag=Ed_IceBorder] at @s run fill ~ ~-1 ~ ~ ~-2 ~ packed_ice
execute as @s[tag=Ed_SpeedReducer] at @s run fill ~ ~-1 ~ ~ ~-1 ~ snow_block replace ice

execute as @s[tag=!Ed_Holo_IcePath,nbt={SelectedItemSlot:0},tag=!Ed_IceBorder,tag=!Ed_SpeedReducer] at @s align xyz run function slide:editor/holo/ice_path
execute as @s[tag=Ed_Holo_IcePath,nbt=!{SelectedItemSlot:0},tag=!Ed_IcePath] at @s align xyz run function slide:editor/holo/ice_path

execute as @s[tag=!Ed_Holo_IceBorder,nbt={SelectedItemSlot:1},tag=!Ed_IcePath,tag=!Ed_SpeedReducer] at @s align xyz run function slide:editor/holo/ice_border
execute as @s[tag=Ed_Holo_IceBorder,nbt=!{SelectedItemSlot:1},tag=!Ed_IceEd_Holo_IceBorder] at @s align xyz run function slide:editor/holo/ice_border

execute as @s[tag=!Ed_Holo_SpeedReducer,nbt={SelectedItemSlot:2},tag=!Ed_IceBorder,tag=!Ed_IcePath] at @s align xyz run function slide:editor/holo/speed_reducer
execute as @s[tag=Ed_Holo_SpeedReducer,nbt=!{SelectedItemSlot:2},tag=!Ed_SpeeEd_Holo_SpeedReducer] at @s align xyz run function slide:editor/holo/speed_reducer


execute as @e[tag=Ed_Holo_IcePath] at @s align xyz run teleport @e[tag=Ed_Holo_Slime_IcePath1] ~2.5 ~-1.1 ~2.5 
execute as @e[tag=Ed_Holo_IcePath] at @s align xyz run teleport @e[tag=Ed_Holo_Slime_IcePath2] ~2.5 ~-1.1 ~-1.5 
execute as @e[tag=Ed_Holo_IcePath] at @s align xyz run teleport @e[tag=Ed_Holo_Slime_IcePath3] ~-1.5 ~-1.1 ~2.5 
execute as @e[tag=Ed_Holo_IcePath] at @s align xyz run teleport @e[tag=Ed_Holo_Slime_IcePath4] ~-1.5 ~-1.1 ~-1.5

execute as @e[tag=Ed_Holo_IceBorder] at @s align xyz run teleport @e[tag=Ed_Holo_Slime_IceBorder1] ~0.5 ~-1.1 ~0.5 
execute as @e[tag=Ed_Holo_IceBorder] at @s align xyz run teleport @e[tag=Ed_Holo_Slime_IceBorder2] ~0.5 ~-2.1 ~0.5 

execute as @e[tag=Ed_Holo_SpeedReducer] at @s align xyz run teleport @e[tag=Ed_Holo_Slime_SpeedReducer1] ~0.5 ~-1.1 ~0.5 
