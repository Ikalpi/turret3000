require ("util")

function make_rotated_animation_variations_from_sheet(variation_count, sheet) --makes remnants work with more than 1 variation
  local result = {}

  local function set_y_offset(variation, i)
    local frame_count = variation.frame_count or 1
    local line_length = variation.line_length or frame_count
    if (line_length < 1) then
      line_length = frame_count
    end

    local height_in_frames = math.floor((frame_count * variation.direction_count + line_length - 1) / line_length)
    -- if (height_in_frames ~= 1) then
    --   log("maybe broken sheet: h=" .. height_in_frames .. ", vc=" .. variation_count .. ", " .. variation.filename)
    -- end
    variation.y = variation.height * (i - 1) * height_in_frames
  end

  for i = 1,variation_count do
    local variation = util.table.deepcopy(sheet)

    if variation.layers then
      for _, layer in pairs(variation.layers) do
        set_y_offset(layer, i)
        if (layer.hr_version) then
          set_y_offset(layer.hr_version, i)
        end
      end
    else
      set_y_offset(variation, i)
      if (variation.hr_version) then
        set_y_offset(variation.hr_version, i)
      end
    end

    table.insert(result, variation)
  end
 return result
end

local remnants = 
{
 {
    type = "corpse",
    name = "snipergun-turret-remnants",
    icon = "__turret3000__/graphics/icons/snipergun-turret.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "defensive-structure-remnants",
    order = "a-c-a",
    selection_box = {{-1, -1}, {1, 1}},
    tile_width = 2,
    tile_height = 2,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet (3,
    {
      layers =
      {
        {
          filename = "__turret3000__/graphics/snipergun-turret/remnants/snipergun-turret-remnants.png",
          line_length = 1,
          width = 126,
          height = 122,
          frame_count = 1,
          variation_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(3, -1),
          hr_version =
          {
            filename = "__turret3000__/graphics/snipergun-turret/remnants/hr-snipergun-turret-remnants.png",
            line_length = 1,
            width = 252,
            height = 242,
            frame_count = 1,
            variation_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(3, -1.5),
            scale = 0.5
          }
        },
        {
          priority = "low",
          filename = "__turret3000__/graphics/snipergun-turret/remnants/mask/snipergun-turret-remnants-mask.png",
          width = 34,
          height = 32,
          frame_count = 1,
          --tint = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 },
          apply_runtime_tint = true,
          direction_count = 1,
          shift = util.by_pixel(-1, -11),
          hr_version=
          {
            priority = "low",
            filename = "__turret3000__/graphics/snipergun-turret/remnants/mask/hr-snipergun-turret-remnants-mask.png",
            width = 68,
            height = 64,
            frame_count = 1,
            --tint = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 },
            apply_runtime_tint = true,
            direction_count = 1,
            shift = util.by_pixel(-1, -11),
            scale = 0.5
          }
        }
      }
    })
  },
  {
    type = "corpse",
    name = "sniperlaser-turret-remnants",
    icon = "__turret3000__/graphics/icons/sniperlaser-turret.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map"},
    subgroup = "defensive-structure-remnants",
    order = "a-d-a",
    selection_box = {{-1, -1}, {1, 1}},
    tile_width = 2,
    tile_height = 2,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet (3,
    {
      layers =
      {
        {
          filename = "__turret3000__/graphics/sniperlaser-turret/remnants/sniperlaser-turret-remnants.png",
          line_length = 1,
          width = 100,
          height = 98,
          frame_count = 1,
          variation_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(3, -2),
          hr_version =
          {
            filename = "__turret3000__/graphics/sniperlaser-turret/remnants/hr-sniperlaser-turret-remnants.png",
            line_length = 1,
            width = 198,
            height = 194,
            frame_count = 1,
            variation_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(2.5, -2),
            scale = 0.5
          }
        },
        {
          priority = "low",
          filename = "__turret3000__/graphics/sniperlaser-turret/remnants/mask/sniperlaser-turret-remnants-mask.png",
          width = 58,
          height = 48,
          frame_count = 1,
          --tint = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 },
          apply_runtime_tint = true,
          direction_count = 1,
          shift = util.by_pixel(4, -2),
          hr_version=
          {
            priority = "low",
            filename = "__turret3000__/graphics/sniperlaser-turret/remnants/mask/hr-sniperlaser-turret-remnants-mask.png",
            width = 114,
            height = 94,
            frame_count = 1,
            --tint = { r = 0.869, g = 0.5  , b = 0.130, a = 0.5 },
            apply_runtime_tint = true,
            direction_count = 1,
            shift = util.by_pixel(4, -2.5),
            scale = 0.5
          }
        }
      }
    })
  },
  {
    type = "corpse",
    name = "coal-furnace-remnants",
    icon = "__turret3000__/graphics/icons/coal-furnace.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "building-direction-8-way", "not-on-map"},
    subgroup = "smelting-machine-remnants",
    order = "a-a-a",
    selection_box = {{-1, -1}, {1, 1}},
    tile_width = 2,
    tile_height = 2,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation = make_rotated_animation_variations_from_sheet(1,
    {
      filename = "__turret3000__/graphics/coal-furnace/remnants/coal-furnace-remnants.png",
      line_length = 1,
      width = 76,
      height = 66,
      frame_count = 1,
      direction_count = 1,
      shift = util.by_pixel(0, 10),
      hr_version =
      {
        filename = "__turret3000__/graphics/coal-furnace/remnants/hr-coal-furnace-remnants.png",
        line_length = 1,
        width = 152,
        height = 130,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, 9.5),
        scale = 0.5
      }
    })
  }
  }
  
  for k, remnant in pairs (remnants) do
  if not remnant.localised_name then
    local name = remnant.name
    if name:find("%-remnants") then
      remnant.localised_name = {"remnant-name", {"entity-name."..name:gsub("%-remnants", "")}}
    end
  end
end

data:extend(remnants)