-- data.lua

require("prototypes.remnants")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")
require("prototypes.entity")
require("categories.recipe-category")
require("prototypes.beams")

data:extend({
	sniperlaser_turret,
	snipergun_turret,
	coal_furnace,
	sniperlaser_turret_recipe,
	snipergun_turret_recipe,
	coal_furnace_recipe,
	sniperlaser_turret_tech,
	snipergun_turret_tech,
	snipergun_turret_entity,
	sniperlaser_turret_entity,
	coal_furnace_entity,
	coal_furnace_production_recipe
})