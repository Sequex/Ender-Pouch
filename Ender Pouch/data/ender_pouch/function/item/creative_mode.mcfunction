execute if entity @s[tag=ender_pouch.creative_mode_warn] run return fail

tellraw @s {translate:"ender_pouch.creative_mode",fallback:"Ender Pouches do not work in Creative Mode!",color:"red"}
playsound block.note_block.didgeridoo player @s ~ ~ ~ 1 0.75

tag @s add ender_pouch.creative_mode_warn