execute positioned ^ ^ ^1 align xyz if block ~ ~ ~ ender_chest \
    if block ~ ~1 ~ hopper positioned ~0.5 ~2 ~0.5 run return run \
    function ender_pouch:item/release/choose_mode with entity @s
execute positioned ^ ^ ^1 align xyz if block ~ ~ ~ ender_chest \
    unless block ~ ~1 ~ hopper positioned ~0.5 ~1.2 ~0.5 run return run \
    function ender_pouch:item/release/choose_mode with entity @s

scoreboard players remove #raycast ender_pouch.var 1
execute if score #raycast ender_pouch.var matches 1.. positioned ^ ^ ^1 run \
    function ender_pouch:item/release/raycast
