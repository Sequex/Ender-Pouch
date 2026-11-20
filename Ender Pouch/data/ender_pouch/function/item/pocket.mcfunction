advancement revoke @s only ender_pouch:inv_change

execute if entity @s[gamemode=creative] run return run \
    function ender_pouch:item/creative_mode
tag @s remove ender_pouch.creative_mode_warn

data modify storage ender_pouch:data contents set from entity @s Inventory[{components:{"minecraft:custom_data":{ender_pouch_item:1b}}}].components."minecraft:bundle_contents"

scoreboard players set #validate ender_pouch.var -1
execute if data storage ender_pouch:data contents[0] run function ender_pouch:item/iterate

execute if score #validate ender_pouch.var matches 0 run \
    playsound block.note_block.didgeridoo player @s ~ ~ ~ 1 0.75
execute if score #validate ender_pouch.var matches 0 run \
    playsound ender_pouch:item.ender_pouch.pocket_fail player @s ~ ~ ~ 1 1

execute if score #validate ender_pouch.var matches 1 run \
    playsound block.ender_chest.close player @s ~ ~ ~ 0.35 1.75
execute if score #validate ender_pouch.var matches 1 run \
    playsound block.end_portal_frame.fill player @s ~ ~ ~ 0.75 1
execute if score #validate ender_pouch.var matches 1 run \
    playsound ender_pouch:item.ender_pouch.pocket player @s ~ ~ ~ 1 1

item modify entity @s ender_pouch:ender_pouch ender_pouch:empty_contents
data remove storage ender_pouch:data contents
data remove storage ender_pouch:data item