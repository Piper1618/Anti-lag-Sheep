execute unless data storage antilagsheep:data init run function antilagsheep:_init

# Sheep will gradually give more wool per shearing

execute as @e[type=minecraft:sheep, tag=!antilagsheep] run function antilagsheep:handle_sheep_new

execute as @e[tag=antilagsheep, tag=fluffy, nbt={Sheared:true}] at @s run function antilagsheep:handle_sheep_shear

execute as @e[tag=antilagsheep, tag=!fluffy, nbt={Sheared:false}] run tag @s add fluffy