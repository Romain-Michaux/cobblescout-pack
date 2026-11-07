give @s cobblemon:great_ball 10
tellraw @s [{"text": "Pokédex ! ", "color": "gold", "bold": true}, {"text": "10 espèces enregistrées. Récompense : ", "color": "yellow", "bold": false}, {"text": "10× ", "color": "aqua"}, {"translate": "item.cobblemon.great_ball", "color": "aqua"}, {"text": ".", "color": "yellow"}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.6 1.2
