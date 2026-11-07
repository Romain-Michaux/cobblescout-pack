give @s pokebadges:volcano_kanto_badge 1
tellraw @s [{"text": "Badge obtenu ! ", "color": "gold", "bold": true}, {"text": "Tu as reçu le ", "color": "yellow", "bold": false}, {"translate": "item.pokebadges.volcano_kanto_badge", "color": "aqua", "bold": false}, {"text": " pour ta victoire contre ", "color": "yellow", "bold": false}, {"translate": "rctmod.trainer_name.leader_blaine_01a3", "color": "aqua", "bold": false}, {"text": ".", "color": "yellow", "bold": false}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.6 1.2
