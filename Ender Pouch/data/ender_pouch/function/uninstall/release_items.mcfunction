tag @s add ender_pouch.owner
function ender_pouch:uninstall/release_items_iterate
data remove storage ender_pouch:data temp
tag @s remove ender_pouch.owner

tellraw @a {translate:"ender_pouch.uninstall.notif.release_items",fallback:"[Ender Pouch] All players' stored items has been dropped by %s!",color:"green",with:[{selector:"@s",color:"white"}]}
