$data modify entity @s Item set from storage ender_pouch:data storage[{uuid:"$(UUID)"}].items[0]
$data remove storage ender_pouch:data storage[{uuid:"$(UUID)"}].items[0]

tag @s remove ender_pouch.released_item