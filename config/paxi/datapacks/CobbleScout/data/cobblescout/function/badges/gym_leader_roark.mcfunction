give @s pokebadges:coal_sinnoh_badge 1
tellraw @s [{"text": "Badge obtenu ! ", "color": "gold", "bold": true}, {"text": "Tu as reçu le ", "color": "yellow", "bold": false}, {"translate": "item.pokebadges.coal_sinnoh_badge", "color": "aqua", "bold": false}, {"text": " pour ta victoire contre ", "color": "yellow", "bold": false}, {"translate": "rctmod.trainer_name.gym_leader_roark_0395", "color": "aqua", "bold": false}, {"text": ".", "color": "yellow", "bold": false}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.6 1.2
