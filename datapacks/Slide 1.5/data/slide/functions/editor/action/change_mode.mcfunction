tag @s[tag=Ed_Simple] add Ed_Laps
tag @s[tag=Ed_Laps,tag=!Ed_Simple] remove Ed_Laps
tag @s[tag=Ed_Laps,tag=Ed_Simple] remove Ed_Simple
tag @s[tag=!Ed_Laps,tag=!Ed_Simple] add Ed_Simple

title @s clear
title @s[tag=Ed_Simple] title "Simple"
title @s[tag=Ed_Simple] subtitle "Place a Start and Finish Line"
title @s[tag=Ed_Laps] title "Laps"
title @s[tag=Ed_Laps] subtitle "Place the Start/Finish Line and the Waypoints 1 & 2"