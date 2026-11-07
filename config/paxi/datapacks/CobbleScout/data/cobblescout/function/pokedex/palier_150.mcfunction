give @s cobblemon:lucky_egg 1
give @s cobblemon:exp_candy_xl 5
tellraw @s [{"text": "Pokédex ! ", "color": "gold", "bold": true}, {"text": "150 espèces enregistrées. Récompense : ", "color": "yellow", "bold": false}, {"text": "1× ", "color": "aqua"}, {"translate": "item.cobblemon.lucky_egg", "color": "aqua"}, {"text": ", ", "color": "yellow"}, {"text": "5× ", "color": "aqua"}, {"translate": "item.cobblemon.exp_candy_xl", "color": "aqua"}, {"text": ".", "color": "yellow"}]
tag @s add cs_pokedex_moi
tellraw @a[tag=!cs_pokedex_moi] [{"text": "★ ", "color": "gold"}, {"selector": "@s", "color": "aqua"}, {"text": " a enregistré 150 espèces dans son Pokédex !", "color": "yellow"}]
tag @s remove cs_pokedex_moi
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.6 1.2
