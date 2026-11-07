give @s cobblemon:master_ball 1
give @s cobblemon:ability_patch 1
give @s cobblemon:rare_candy 10
tellraw @s [{"text": "Pokédex ! ", "color": "gold", "bold": true}, {"text": "1000 espèces enregistrées. Récompense : ", "color": "yellow", "bold": false}, {"text": "1× ", "color": "aqua"}, {"translate": "item.cobblemon.master_ball", "color": "aqua"}, {"text": ", ", "color": "yellow"}, {"text": "1× ", "color": "aqua"}, {"translate": "item.cobblemon.ability_patch", "color": "aqua"}, {"text": ", ", "color": "yellow"}, {"text": "10× ", "color": "aqua"}, {"translate": "item.cobblemon.rare_candy", "color": "aqua"}, {"text": ".", "color": "yellow"}]
tag @s add cs_pokedex_moi
tellraw @a[tag=!cs_pokedex_moi] [{"text": "★ ", "color": "gold"}, {"selector": "@s", "color": "aqua"}, {"text": " a enregistré 1000 espèces dans son Pokédex !", "color": "yellow"}]
tag @s remove cs_pokedex_moi
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.6 1.2
