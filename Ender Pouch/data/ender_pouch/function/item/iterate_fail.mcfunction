summon item ~ ~ ~ {\
    Glowing:1b,Age:-32768,Health:1000,PickupDelay:2,\
    Tags:["ender_pouch.blocked_item","smithed.entity","smithed.strict"],\
    Item:{id:"barrier",count:1,components:{"!item_model":{}}}}
execute as @n[type=item,tag=ender_pouch.blocked_item] at @s run function ender_pouch:item/reject_item

tellraw @s {translate:"ender_pouch.reject_item",fallback:"This item cannot be sent to the Ender Pouch pocket dimension!",color:"red"}
