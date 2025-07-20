execute at @e[type=marker,tag=spawnpoint,limit=1,sort=nearest] run spawnpoint @s ~ ~ ~
tellraw @s {"color":"green","text":"You feel revived."}
effect give @s instant_health 1 100
scoreboard players operation @s cq.current_spawnpoint = @e[type=marker,tag=spawnpoint,limit=1,sort=nearest] cq.spawnpoint_id
playsound minecraft:entity.allay.item_thrown player @s ~ ~ ~ 200 2
