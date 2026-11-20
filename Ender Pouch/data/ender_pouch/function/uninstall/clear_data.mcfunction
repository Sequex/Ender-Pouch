scoreboard objectives remove ender_pouch.var
data remove storage ender_pouch:data storage

tellraw @a {translate:"ender_pouch.uninstall.notif.clear_data",fallback:"[Ender Pouch] All data has been wiped! You can now safely remove this datapack from your world folder.",color:"green"}
