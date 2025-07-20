summon marker ~ ~ ~ {Tags:["spawnpoint"]}
# the counter ensures we dont have duplicate ids
scoreboard players add cq.global cq.spawnpoint_id_counter 1

execute as @e[type=marker,tag=spawnpoint,nbt=!{CustomName:"\"assigned\""},limit=1,sort=nearest] run scoreboard players operation @s cq.spawnpoint_id = cq.global cq.spawnpoint_id_counter
data modify entity @e[type=marker,tag=spawnpoint,nbt=!{CustomName:"\"assigned\""},limit=1,sort=nearest] CustomName set value "\"assigned\""
