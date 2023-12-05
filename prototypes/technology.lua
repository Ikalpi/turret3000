-- technology

sniperlaser_turret_tech = {
	type = "technology",
	name = "sniperlaser-turret",
	icon = "__turret3000__/graphics/technology/sniperlaser-turret.png",
	 icon_size = 256, icon_mipmaps = 4,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "sniperlaser-turret",
		},
	},
	prerequisites = {"laser", "military-science-pack"},
	unit =
	{
		count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "a-j-b"
}

snipergun_turret_tech = {
	type = "technology",
	name = "snipergun-turret",
	icon = "__turret3000__/graphics/technology/snipergun-turret.png",
	 icon_size = 256, icon_mipmaps = 4,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "snipergun-turret",
		},
	},
	prerequisites = {"gun-turret"},
	unit =
    {
      count = 10,
      ingredients = {{"automation-science-pack", 1}},
      time = 10
    },
    order = "a-j-a"
}