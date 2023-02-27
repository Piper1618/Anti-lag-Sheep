tag @s remove fluffy

# Create the wool item
tag @e remove temp
summon minecraft:item ~ ~0.8 ~ {Tags:["temp"], PickupDelay:14, Item:{Count:1, id:"minecraft:white_wool"}}

# Set the wool's color
execute as @s[nbt={Color:1b}] run execute as @e[tag=temp] run data modify entity @s Item.id set value "minecraft:orange_wool"
execute as @s[nbt={Color:2b}] run execute as @e[tag=temp] run data modify entity @s Item.id set value "minecraft:magenta_wool"
execute as @s[nbt={Color:3b}] run execute as @e[tag=temp] run data modify entity @s Item.id set value "minecraft:light_blue_wool"
execute as @s[nbt={Color:4b}] run execute as @e[tag=temp] run data modify entity @s Item.id set value "minecraft:yellow_wool"
execute as @s[nbt={Color:5b}] run execute as @e[tag=temp] run data modify entity @s Item.id set value "minecraft:lime_wool"
execute as @s[nbt={Color:6b}] run execute as @e[tag=temp] run data modify entity @s Item.id set value "minecraft:pink_wool"
execute as @s[nbt={Color:7b}] run execute as @e[tag=temp] run data modify entity @s Item.id set value "minecraft:gray_wool"
execute as @s[nbt={Color:8b}] run execute as @e[tag=temp] run data modify entity @s Item.id set value "minecraft:light_gray_wool"
execute as @s[nbt={Color:9b}] run execute as @e[tag=temp] run data modify entity @s Item.id set value "minecraft:cyan_wool"
execute as @s[nbt={Color:10b}] run execute as @e[tag=temp] run data modify entity @s Item.id set value "minecraft:purple_wool"
execute as @s[nbt={Color:11b}] run execute as @e[tag=temp] run data modify entity @s Item.id set value "minecraft:blue_wool"
execute as @s[nbt={Color:12b}] run execute as @e[tag=temp] run data modify entity @s Item.id set value "minecraft:brown_wool"
execute as @s[nbt={Color:13b}] run execute as @e[tag=temp] run data modify entity @s Item.id set value "minecraft:green_wool"
execute as @s[nbt={Color:14b}] run execute as @e[tag=temp] run data modify entity @s Item.id set value "minecraft:red_wool"
execute as @s[nbt={Color:15b}] run execute as @e[tag=temp] run data modify entity @s Item.id set value "minecraft:black_wool"

# Set the wool's quantity
execute as @s[scores={sheepLevel=..4}] run kill @e[tag=temp]
execute as @s[scores={sheepLevel=5..9}] run execute as @e[tag=temp] run data modify entity @s Item.Count set value 2b
execute as @s[scores={sheepLevel=10..14}] run execute as @e[tag=temp] run data modify entity @s Item.Count set value 4b
execute as @s[scores={sheepLevel=15..19}] run execute as @e[tag=temp] run data modify entity @s Item.Count set value 6b
execute as @s[scores={sheepLevel=20..24}] run execute as @e[tag=temp] run data modify entity @s Item.Count set value 8b
execute as @s[scores={sheepLevel=25..29}] run execute as @e[tag=temp] run data modify entity @s Item.Count set value 10b
execute as @s[scores={sheepLevel=30..34}] run execute as @e[tag=temp] run data modify entity @s Item.Count set value 14b
execute as @s[scores={sheepLevel=35..39}] run execute as @e[tag=temp] run data modify entity @s Item.Count set value 18b
execute as @s[scores={sheepLevel=40..44}] run execute as @e[tag=temp] run data modify entity @s Item.Count set value 22b
execute as @s[scores={sheepLevel=45..49}] run execute as @e[tag=temp] run data modify entity @s Item.Count set value 26b
execute as @s[scores={sheepLevel=50..54}] run execute as @e[tag=temp] run data modify entity @s Item.Count set value 30b
execute as @s[scores={sheepLevel=55..59}] run execute as @e[tag=temp] run data modify entity @s Item.Count set value 36b
execute as @s[scores={sheepLevel=60..64}] run execute as @e[tag=temp] run data modify entity @s Item.Count set value 42b
execute as @s[scores={sheepLevel=65..69}] run execute as @e[tag=temp] run data modify entity @s Item.Count set value 48b
execute as @s[scores={sheepLevel=70..74}] run execute as @e[tag=temp] run data modify entity @s Item.Count set value 54b
execute as @s[scores={sheepLevel=75..}] run execute as @e[tag=temp] run data modify entity @s Item.Count set value 60b

# Increase level of this sheep. The value of this increment is the balance point where if this number of sheep are in the same area, their level will stay the same on average
scoreboard players add @s sheepLevel 3
scoreboard players set @s[scores={sheepLevel=101..}] sheepLevel 100

# Decay levels of all sheep of same color (will include this sheep)
execute as @s[nbt={Color:0b}] run scoreboard players remove @e[scores={sheepLevel=1..}, distance=..500, nbt={Color:0b}] sheepLevel 1
execute as @s[nbt={Color:1b}] run scoreboard players remove @e[scores={sheepLevel=1..}, distance=..500, nbt={Color:1b}] sheepLevel 1
execute as @s[nbt={Color:2b}] run scoreboard players remove @e[scores={sheepLevel=1..}, distance=..500, nbt={Color:2b}] sheepLevel 1
execute as @s[nbt={Color:3b}] run scoreboard players remove @e[scores={sheepLevel=1..}, distance=..500, nbt={Color:3b}] sheepLevel 1
execute as @s[nbt={Color:4b}] run scoreboard players remove @e[scores={sheepLevel=1..}, distance=..500, nbt={Color:4b}] sheepLevel 1
execute as @s[nbt={Color:5b}] run scoreboard players remove @e[scores={sheepLevel=1..}, distance=..500, nbt={Color:5b}] sheepLevel 1
execute as @s[nbt={Color:6b}] run scoreboard players remove @e[scores={sheepLevel=1..}, distance=..500, nbt={Color:6b}] sheepLevel 1
execute as @s[nbt={Color:7b}] run scoreboard players remove @e[scores={sheepLevel=1..}, distance=..500, nbt={Color:7b}] sheepLevel 1
execute as @s[nbt={Color:8b}] run scoreboard players remove @e[scores={sheepLevel=1..}, distance=..500, nbt={Color:8b}] sheepLevel 1
execute as @s[nbt={Color:9b}] run scoreboard players remove @e[scores={sheepLevel=1..}, distance=..500, nbt={Color:9b}] sheepLevel 1
execute as @s[nbt={Color:10b}] run scoreboard players remove @e[scores={sheepLevel=1..}, distance=..500, nbt={Color:10b}] sheepLevel 1
execute as @s[nbt={Color:11b}] run scoreboard players remove @e[scores={sheepLevel=1..}, distance=..500, nbt={Color:11b}] sheepLevel 1
execute as @s[nbt={Color:12b}] run scoreboard players remove @e[scores={sheepLevel=1..}, distance=..500, nbt={Color:12b}] sheepLevel 1
execute as @s[nbt={Color:13b}] run scoreboard players remove @e[scores={sheepLevel=1..}, distance=..500, nbt={Color:13b}] sheepLevel 1
execute as @s[nbt={Color:14b}] run scoreboard players remove @e[scores={sheepLevel=1..}, distance=..500, nbt={Color:14b}] sheepLevel 1
execute as @s[nbt={Color:15b}] run scoreboard players remove @e[scores={sheepLevel=1..}, distance=..500, nbt={Color:15b}] sheepLevel 1