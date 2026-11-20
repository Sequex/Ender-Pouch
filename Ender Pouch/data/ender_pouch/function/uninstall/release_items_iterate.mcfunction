data modify storage ender_pouch:data temp.UUID set from storage ender_pouch:data storage[0].uuid
function ender_pouch:item/release/recurse with storage ender_pouch:data temp

data remove storage ender_pouch:data storage[0]
execute if data storage ender_pouch:data storage[0] run \
    function ender_pouch:uninstall/release_items_iterate
