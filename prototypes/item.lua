--item

sniperlaser_turret = {
	type = "item",
	name = "sniperlaser-turret",
    icon = "__turret3000__/graphics/icons/sniperlaser-turret.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "defensive-structure",
    order = "b[turret]-b[sniperlaser-turret]",
    place_result = "sniperlaser-turret",
    stack_size = 50
	}

snipergun_turret = {
	type = "item",
	name = "snipergun-turret",
    icon = "__turret3000__/graphics/icons/snipergun-turret.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "defensive-structure",
    order = "b[turret]-a[snipergun_turret]",
    place_result = "snipergun-turret",
    stack_size = 50
	}
	
coal_furnace = {
	type = "item",
    name = "coal-furnace",
    icon = "__turret3000__/graphics/icons/coal-furnace.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "smelting-machine",
    order = "a[coal-furnace]",
    place_result = "coal-furnace",
    stack_size = 50
	}