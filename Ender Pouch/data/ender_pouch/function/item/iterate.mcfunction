data modify storage ender_pouch:data item set from storage ender_pouch:data contents[0]

scoreboard players set #validate ender_pouch.var 1
execute if data storage ender_pouch:data item.components.minecraft:custom_data.ender_pouch{block:1b} run \
    scoreboard players set #validate ender_pouch.var 0
execute if data storage ender_pouch:data item.components.minecraft:custom_data.smithed.ignore{everything:1b} run \
    scoreboard players set #validate ender_pouch.var 0

execute if score #validate ender_pouch.var matches 0 run \
    function ender_pouch:item/iterate_fail
execute if score #validate ender_pouch.var matches 1 run \
    function ender_pouch:item/iterate_success with entity @s

data remove storage ender_pouch:data contents[0]
execute if data storage ender_pouch:data contents[0] run function ender_pouch:item/iterate