give @s cobblemon:ultra_ball 10
give @s cobblemon:exp_candy_m 3
tellraw @s [{"text": "Pokédex ! ", "color": "gold", "bold": true}, {"text": "25 espèces enregistrées. Récompense : ", "color": "yellow", "bold": false}, {"text": "10× ", "color": "aqua"}, {"translate": "item.cobblemon.ultra_ball", "color": "aqua"}, {"text": ", ", "color": "yellow"}, {"text": "3× ", "color": "aqua"}, {"translate": "item.cobblemon.exp_candy_m", "color": "aqua"}, {"text": ".", "color": "yellow"}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.6 1.2
