$execute unless data storage ender_pouch:data storage[{uuid:"$(UUID)"}].items[0] run return run \
    tellraw @s {translate:"ender_pouch.empty",fallback:"Your Ender Pouch storage is currently empty!",color:"red"}

tag @s add ender_pouch.owner
data modify storage ender_pouch:data temp.UUID set from entity @s UUID

execute if predicate ender_pouch:sneaking run \
    function ender_pouch:item/release/recurse with storage ender_pouch:data temp

execute unless predicate ender_pouch:sneaking run \
    function ender_pouch:item/release/single
tag @s remove ender_pouch.owner

execute if predicate ender_pouch:sneaking run \
    tellraw @s {translate:"ender_pouch.release",fallback:"All Ender Pouch storage has been released!",color:"green"}
execute if predicate ender_pouch:sneaking run \
    playsound block.ender_chest.close block @a[distance=..12] ~ ~ ~ 1 0.8
execute if predicate ender_pouch:sneaking run \
    playsound ender_pouch:item.ender_pouch.release_all player @s ~ ~ ~ 1 1

execute unless predicate ender_pouch:sneaking run \
    playsound block.ender_chest.open block @a[distance=..12] ~ ~ ~ 0.75 1
execute unless predicate ender_pouch:sneaking run \
    playsound ender_pouch:item.ender_pouch.release_one player @s ~ ~ ~ 1 1
