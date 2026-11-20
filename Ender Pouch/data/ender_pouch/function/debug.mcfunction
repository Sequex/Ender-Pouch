execute store result score #version.major ender_pouch.var run compute default integer ender_pouch:version/major
execute store result score #version.minor ender_pouch.var run compute default integer ender_pouch:version/minor
execute store result score #version.patch ender_pouch.var run compute default integer ender_pouch:version/patch
tellraw @s \
    {translate:"\n\n❱❱ Ender Pouch | Version %s.%s.%s",color:"#18A387",with:[\
        {score:{name:"#version.major",objective:"ender_pouch.var"}},\
        {score:{name:"#version.minor",objective:"ender_pouch.var"}},\
        {score:{name:"#version.patch",objective:"ender_pouch.var"}}\
    ]}

# Reference: https://minecraft.wiki/w/Data_version#Java_Edition
execute store result score #version.game ender_pouch.var run data get entity @s DataVersion
execute if score #version.game ender_pouch.var matches 5023 run tellraw @s \
    {text:"- Minecraft v26.3",color:"green"}
execute unless score #version.game ender_pouch.var matches 5023 run tellraw @s [\
    {text:"⚠ Incompatible Version: ",color:"gold"},\
    {score:{name:"#version.game",objective:"ender_pouch.var"},color:"red",italic:true}]

scoreboard players reset #version.major ender_pouch.var
scoreboard players reset #version.minor ender_pouch.var
scoreboard players reset #version.patch ender_pouch.var
scoreboard players reset #version.game ender_pouch.var