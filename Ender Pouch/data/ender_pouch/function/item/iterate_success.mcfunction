$execute unless data storage ender_pouch:data storage[{uuid:"$(UUID)"}] run \
    data modify storage ender_pouch:data storage append value {uuid:"$(UUID)",items:[]}

$data modify storage ender_pouch:data storage[{uuid:"$(UUID)"}].items append from storage ender_pouch:data item
