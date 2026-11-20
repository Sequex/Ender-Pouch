tellraw @s ["\n\n\n\n\n\n\n\n\n\n",{translate:"ender_pouch.uninstall.menu",fallback:"【 Ender Pouch Uninstall 】",color:"#18A387"},"\n"]

tellraw @s {translate:"ender_pouch.uninstall.menu.release_items",fallback:"[Release All Items]",color:"gold",\
    click_event:{action:"run_command",command:"function ender_pouch:uninstall/release_items"},\
    hover_event:{action:"show_text",value:\
        {translate:"ender_pouch.uninstall.menu.release_items.hover",fallback:"Dumps every stored item into the ground, from every player's Ender Pouch storage."}}}
tellraw @s {translate:"ender_pouch.uninstall.menu.clear_data",fallback:"[Clear All Data]",color:"gold",\
    click_event:{action:"run_command",command:"function ender_pouch:uninstall/clear_data"},\
    hover_event:{action:"show_text",value:\
        {translate:"ender_pouch.uninstall.menu.clear_data.hover",fallback:"Erases all data, including stored items. You should run this last."}}}
