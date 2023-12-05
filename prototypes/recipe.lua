--recipe

sniperlaser_turret_recipe = {
  type = "recipe",
  name = "sniperlaser-turret",
  enabled = false,
  energy_required = 20,
  ingredients =
  {
      {"steel-plate", 20},
      {"electronic-circuit", 20},
      {"battery", 12}
    },
  result = "sniperlaser-turret",
	order = "c-a"
}

snipergun_turret_recipe = {
  type = "recipe",
  name = "snipergun-turret",
  enabled = false,
  energy_required = 8,
  ingredients =
  {
      {"iron-gear-wheel", 10},
      {"copper-plate", 10},
      {"iron-plate", 20}
    },
  result = "snipergun-turret",
	order = "c-a"
}

coal_furnace_recipe = {
	type = "recipe",
    name = "coal-furnace",
    ingredients = {{"stone", 5}},
    result = "coal-furnace"
}

coal_furnace_production_recipe = {
    type = "recipe",
    name = "coal",
    category = "coal-furnace",
    energy_required = 3.2,
    ingredients = {{"wood", 1}},
    result = "coal"
  }
