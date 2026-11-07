give @s cobblemon:rare_candy 5
give @s cobblemon:max_revive 5
tellraw @s [{"text": "Pokédex ! ", "color": "gold", "bold": true}, {"text": "200 espèces enregistrées. Récompense : ", "color": "yellow", "bold": false}, {"text": "5× ", "color": "aqua"}, {"translate": "item.cobblemon.rare_candy", "color": "aqua"}, {"text": ", ", "color": "yellow"}, {"text": "5× ", "color": "aqua"}, {"translate": "item.cobblemon.max_revive", "color": "aqua"}, {"text": ".", "color": "yellow"}]
tag @s add cs_pokedex_moi
tellraw @a[tag=!cs_pokedex_moi] [{"text": "★ ", "color": "gold"}, {"selector": "@s", "color": "aqua"}, {"text": " a enregistré 200 espèces dans son Pokédex !", "color": "yellow"}]
tag @s remove cs_pokedex_moi
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.6 1.2
