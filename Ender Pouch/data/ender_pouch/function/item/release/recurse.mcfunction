summon item ~ ~ ~ {\
    Glowing:1b,Age:-32768,Health:1000,PickupDelay:2,\
    Tags:["ender_pouch.released_item","smithed.entity","smithed.strict"],\
    Item:{id:"barrier",count:1,components:{"!item_model":{}}}}
execute as @n[type=item,tag=ender_pouch.released_item] at @s run \
    function ender_pouch:item/release/item_branch with entity @p[tag=ender_pouch.owner]

$execute if data storage ender_pouch:data storage[{uuid:"$(UUID)"}].items[0] run \
    function ender_pouch:item/release/recurse with storage ender_pouch:data temp
