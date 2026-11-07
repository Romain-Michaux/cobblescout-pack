give @s cobblemon:exp_candy_xl 10
give @s cobblemon:ability_capsule 3
tellraw @s [{"text": "Pokédex ! ", "color": "gold", "bold": true}, {"text": "400 espèces enregistrées. Récompense : ", "color": "yellow", "bold": false}, {"text": "10× ", "color": "aqua"}, {"translate": "item.cobblemon.exp_candy_xl", "color": "aqua"}, {"text": ", ", "color": "yellow"}, {"text": "3× ", "color": "aqua"}, {"translate": "item.cobblemon.ability_capsule", "color": "aqua"}, {"text": ".", "color": "yellow"}]
tag @s add cs_pokedex_moi
tellraw @a[tag=!cs_pokedex_moi] [{"text": "★ ", "color": "gold"}, {"selector": "@s", "color": "aqua"}, {"text": " a enregistré 400 espèces dans son Pokédex !", "color": "yellow"}]
tag @s remove cs_pokedex_moi
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.6 1.2
