-- Sheet definition

local sounds = require("prototypes.sounds")
local hit_effects = require ("prototypes.hit-effects")
local util = require('util')


function snipergun_turret_extension(inputs)
return
{
  filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-raising.png",
  priority = "medium",
  width = 66,
  height = 64,
  direction_count = 4,
  frame_count = inputs.frame_count or 5,
  line_length = inputs.line_length or 0,
  run_mode = inputs.run_mode or "forward",
  shift = util.by_pixel(0, -26),
  axially_symmetrical = false,
  hr_version =
  {
    filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-raising.png",
    priority = "medium",
    width = 130,
    height = 126,
    direction_count = 4,
    frame_count = inputs.frame_count or 5,
    line_length = inputs.line_length or 0,
    run_mode = inputs.run_mode or "forward",
    shift = util.by_pixel(0, -26.5),
    axially_symmetrical = false,
    scale = 0.5
  }
}
end

function snipergun_turret_extension_mask(inputs)
return
{
  filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-raising-mask.png",
  flags = { "mask" },
  width = 24,
  height = 32,
  direction_count = 4,
  frame_count = inputs.frame_count or 5,
  line_length = inputs.line_length or 0,
  run_mode = inputs.run_mode or "forward",
  shift = util.by_pixel(0, -28),
  axially_symmetrical = false,
  apply_runtime_tint = true,
  hr_version =
  {
    filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-raising-mask.png",
    flags = { "mask" },
    width = 48,
    height = 62,
    direction_count = 4,
    frame_count = inputs.frame_count or 5,
    line_length = inputs.line_length or 0,
    run_mode = inputs.run_mode or "forward",
    shift = util.by_pixel(0, -28),
    axially_symmetrical = false,
    apply_runtime_tint = true,
    scale = 0.5
  }
}
end

function snipergun_turret_extension_shadow(inputs)
return
{
  filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-raising-shadow.png",
  width = 126,
  height = 62,
  direction_count = 4,
  frame_count = inputs.frame_count or 5,
  line_length = inputs.line_length or 0,
  run_mode = inputs.run_mode or "forward",
  shift = util.by_pixel(19, 2),
  axially_symmetrical = false,
  draw_as_shadow = true,
  hr_version =
  {
    filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-raising-shadow.png",
    width = 250,
    height = 124,
    direction_count = 4,
    frame_count = inputs.frame_count or 5,
    line_length = inputs.line_length or 0,
    run_mode = inputs.run_mode or "forward",
    shift = util.by_pixel(19, 2.5),
    axially_symmetrical = false,
    draw_as_shadow = true,
    scale = 0.5
  }
}
end

function snipergun_turret_attack(inputs)
return
{
  layers =
  {
    {
      width = 66,
      height = 66,
      frame_count = inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = util.by_pixel(0, -27),
      stripes =
      {
        {
          filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-shooting-1.png",
          width_in_frames = inputs.frame_count or 2,
          height_in_frames = 16
        },
        {
          filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-shooting-2.png",
          width_in_frames = inputs.frame_count or 2,
          height_in_frames = 16
        },
        {
          filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-shooting-3.png",
          width_in_frames = inputs.frame_count or 2,
          height_in_frames = 16
        },
        {
          filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-shooting-4.png",
          width_in_frames = inputs.frame_count or 2,
          height_in_frames = 16
        }
      },
      hr_version =
      {
        width = 132,
        height = 130,
        frame_count = inputs.frame_count or 2,
        axially_symmetrical = false,
        direction_count = 64,
        shift = util.by_pixel(0, -27.5),
        stripes =
        {
          {
            filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-shooting-1.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-shooting-2.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-shooting-3.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-shooting-4.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          }
        },
        scale = 0.5
      }
    },
    {
      flags = { "mask" },
      line_length = inputs.frame_count or 2,
      width = 30,
      height = 28,
      frame_count = inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = util.by_pixel(0, -32),
      apply_runtime_tint = true,
      stripes =
      {
        {
          filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-shooting-mask-1.png",
          width_in_frames = inputs.frame_count or 2,
          height_in_frames = 16
        },
        {
          filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-shooting-mask-2.png",
          width_in_frames = inputs.frame_count or 2,
          height_in_frames = 16
        },
        {
          filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-shooting-mask-3.png",
          width_in_frames = inputs.frame_count or 2,
          height_in_frames = 16
        },
        {
          filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-shooting-mask-4.png",
          width_in_frames = inputs.frame_count or 2,
          height_in_frames = 16
        }
      },
      hr_version =
      {
        flags = { "mask" },
        line_length = inputs.frame_count or 2,
        width = 58,
        height = 54,
        frame_count = inputs.frame_count or 2,
        axially_symmetrical = false,
        direction_count = 64,
        shift = util.by_pixel(0, -32.5),
        apply_runtime_tint = true,
        stripes =
        {
          {
            filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-shooting-mask-1.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-shooting-mask-2.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-shooting-mask-3.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-shooting-mask-4.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          }
        },
        scale = 0.5
      }
    },
    {
      width = 126,
      height = 62,
      frame_count = inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = util.by_pixel(23, 2),
      draw_as_shadow = true,
      stripes =
      {
        {
          filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-shooting-shadow-1.png",
          width_in_frames = inputs.frame_count or 2,
          height_in_frames = 16
        },
        {
          filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-shooting-shadow-2.png",
          width_in_frames = inputs.frame_count or 2,
          height_in_frames = 16
        },
        {
          filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-shooting-shadow-3.png",
          width_in_frames = inputs.frame_count or 2,
          height_in_frames = 16
        },
        {
          filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-shooting-shadow-4.png",
          width_in_frames = inputs.frame_count or 2,
          height_in_frames = 16
        }
      },
      hr_version =
      {
        width = 250,
        height = 124,
        frame_count = inputs.frame_count or 2,
        axially_symmetrical = false,
        direction_count = 64,
        shift = util.by_pixel(22, 2.5),
        draw_as_shadow = true,
        stripes =
        {
          {
            filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-shooting-shadow-1.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-shooting-shadow-2.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-shooting-shadow-3.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          },
          {
            filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-shooting-shadow-4.png",
            width_in_frames = inputs.frame_count or 2,
            height_in_frames = 16
          }
        },
        scale = 0.5
      }
    }
  }
}
end

function sniperlaser_turret_extension(inputs)
  return
  {
    filename = "__turret3000__/graphics/sniperlaser-turret/sniperlaser-turret-raising.png",
    priority = "medium",
    width = 66,
    height = 64,
    frame_count = inputs.frame_count or 15,
    line_length = inputs.line_length or 0,
    run_mode = inputs.run_mode or "forward",
    axially_symmetrical = false,
    direction_count = 4,
    shift = util.by_pixel(0, -32),
    hr_version =
    {
      filename = "__turret3000__/graphics/sniperlaser-turret/hr-sniperlaser-turret-raising.png",
      priority = "medium",
      width = 130,
      height = 126,
      frame_count = inputs.frame_count or 15,
      line_length = inputs.line_length or 0,
      run_mode = inputs.run_mode or "forward",
      axially_symmetrical = false,
      direction_count = 4,
      shift = util.by_pixel(0, -32.5),
      scale = 0.5
    }
  }
end

function sniperlaser_turret_extension_shadow(inputs)
  return
  {
    filename = "__turret3000__/graphics/sniperlaser-turret/sniperlaser-turret-raising-shadow.png",
    width = 92,
    height = 50,
    frame_count = inputs.frame_count or 15,
    line_length = inputs.line_length or 0,
    run_mode = inputs.run_mode or "forward",
    axially_symmetrical = false,
    direction_count = 4,
    draw_as_shadow = true,
    shift = util.by_pixel(47, 3),
    hr_version =
    {
      filename = "__turret3000__/graphics/sniperlaser-turret/hr-sniperlaser-turret-raising-shadow.png",
      width = 182,
      height = 96,
      frame_count = inputs.frame_count or 15,
      line_length = inputs.line_length or 0,
      run_mode = inputs.run_mode or "forward",
      axially_symmetrical = false,
      direction_count = 4,
      draw_as_shadow = true,
      shift = util.by_pixel(47, 2.5),
      scale = 0.5
    }
  }
end

function sniperlaser_turret_extension_mask(inputs)
  return
  {
    filename = "__turret3000__/graphics/sniperlaser-turret/sniperlaser-turret-raising-mask.png",
    flags = { "mask" },
    width = 44,
    height = 40,
    frame_count = inputs.frame_count or 15,
    line_length = inputs.line_length or 0,
    run_mode = inputs.run_mode or "forward",
    axially_symmetrical = false,
    apply_runtime_tint = true,
    direction_count = 4,
    shift = util.by_pixel(0, -43),
    hr_version =
    {
      filename = "__turret3000__/graphics/sniperlaser-turret/hr-sniperlaser-turret-raising-mask.png",
      flags = { "mask" },
      width = 86,
      height = 80,
      frame_count = inputs.frame_count or 15,
      line_length = inputs.line_length or 0,
      run_mode = inputs.run_mode or "forward",
      axially_symmetrical = false,
      apply_runtime_tint = true,
      direction_count = 4,
      shift = util.by_pixel(0, -43),
      scale = 0.5
    }
  }
end

function sniperlaser_turret_shooting()
  return
  {
    filename = "__turret3000__/graphics/sniperlaser-turret/sniperlaser-turret-shooting.png",
    line_length = 8,
    width = 64,
    height = 60,
    frame_count = 1,
    direction_count = 64,
    shift = util.by_pixel(0, -35),
    hr_version =
    {
      filename = "__turret3000__/graphics/sniperlaser-turret/hr-sniperlaser-turret-shooting.png",
      line_length = 8,
      width = 126,
      height = 120,
      frame_count = 1,
      direction_count = 64,
      shift = util.by_pixel(0, -35),
      scale = 0.5
    }
  }
end

function sniperlaser_turret_shooting_glow()
  return
  {
    filename = "__turret3000__/graphics/sniperlaser-turret/sniperlaser-turret-shooting-light.png",
    line_length = 8,
    width = 62,
    height = 58,
    frame_count = 1,
    direction_count = 64,
    blend_mode = "additive",
    shift = util.by_pixel(0, -35),
    hr_version =
    {
      filename = "__turret3000__/graphics/sniperlaser-turret/hr-sniperlaser-turret-shooting-light.png",
      line_length = 8,
      width = 122,
      height = 116,
      frame_count = 1,
      direction_count = 64,
      shift = util.by_pixel(-0.5, -35),
      blend_mode = "additive",
      scale = 0.5
    }
  }
end

function sniperlaser_turret_shooting_mask()
  return
  {
    filename = "__turret3000__/graphics/sniperlaser-turret/sniperlaser-turret-shooting-mask.png",
    flags = { "mask" },
    line_length = 8,
    width = 46,
    height = 42,
    frame_count = 1,
    apply_runtime_tint = true,
    direction_count = 64,
    shift = util.by_pixel(0, -43),
    hr_version =
    {
      filename = "__turret3000__/graphics/sniperlaser-turret/hr-sniperlaser-turret-shooting-mask.png",
      flags = { "mask" },
      line_length = 8,
      width = 92,
      height = 80,
      frame_count = 1,
      apply_runtime_tint = true,
      direction_count = 64,
      shift = util.by_pixel(0, -43.5),
      scale = 0.5
    }
  }
end

function sniperlaser_turret_shooting_shadow()
  return
  {
    filename = "__turret3000__/graphics/sniperlaser-turret/sniperlaser-turret-shooting-shadow.png",
    line_length = 8,
    width = 86,
    height = 46,
    frame_count = 1,
    direction_count = 64,
    draw_as_shadow = true,
    shift = util.by_pixel(51, 2),
    hr_version =
    {
      filename = "__turret3000__/graphics/sniperlaser-turret/hr-sniperlaser-turret-shooting-shadow.png",
      line_length = 8,
      width = 170,
      height = 92,
      frame_count = 1,
      direction_count = 64,
      draw_as_shadow = true,
      shift = util.by_pixel(50.5, 2.5),
      scale = 0.5
    }
  }
end

-- Entity definition

snipergun_turret_entity = {
	type = "ammo-turret",
    name = "snipergun-turret",
    icon = "__turret3000__/graphics/icons/snipergun-turret.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "snipergun-turret"},
    max_health = 400,
    corpse = "snipergun-turret-remnants",
    dying_explosion = "gun-turret-explosion", --todo
    collision_box = {{-0.7, -0.7 }, {0.7, 0.7}},
    selection_box = {{-1, -1 }, {1, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    rotation_speed = 0.015,
    preparing_speed = 0.08,
    preparing_sound = sounds.snipergun_turret_activate,
    folding_sound = sounds.snipergun_turret_deactivate,
    folding_speed = 0.08,
    inventory_size = 1,
    automated_ammo_count = 10,
    attacking_speed = 10,
    alert_when_attacking = true,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    folded_animation =
    {
      layers =
      {
        snipergun_turret_extension{frame_count=1, line_length = 1},
        snipergun_turret_extension_mask{frame_count=1, line_length = 1},
        snipergun_turret_extension_shadow{frame_count=1, line_length = 1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        snipergun_turret_extension{},
        snipergun_turret_extension_mask{},
        snipergun_turret_extension_shadow{}
      }
    },
    prepared_animation = snipergun_turret_attack{frame_count=1},
    attacking_animation = snipergun_turret_attack{},
    folding_animation =
    {
      layers =
      {
        snipergun_turret_extension{run_mode = "backward"},
        snipergun_turret_extension_mask{run_mode = "backward"},
        snipergun_turret_extension_shadow{run_mode = "backward"}
      }
    },
    base_picture =
    {
      layers =
      {
        {
          filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-base.png",
          priority = "high",
          width = 76,
          height = 60,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(1, -1),
          hr_version =
          {
            filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-base.png",
            priority = "high",
            width = 150,
            height = 118,
            axially_symmetrical = false,
            direction_count = 1,
            frame_count = 1,
            shift = util.by_pixel(0.5, -1),
            scale = 0.5
          }
        },
        --{
        --  filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-base-shadow.png",
        --  line_length = 1,
        --  width = 78,
        --  height = 62,
        --  axially_symmetrical = false,
        --  direction_count = 1,
        --  frame_count = 1,
        --  shift = util.by_pixel(5, 3),
        --  draw_as_shadow = true,
        --  hr_version =
        --  {
        --    filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-base-shadow.png",
        --    line_length = 1,
        --    width = 154,
        --    height = 122,
        --    axially_symmetrical = false,
        --    direction_count = 1,
        --    frame_count = 1,
        --    shift = util.by_pixel(5, 2.5),
        --    draw_as_shadow = true,
        --    scale = 0.5
        --  }
        --},
        {
          filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-base-mask.png",
          flags = { "mask", "low-object" },
          line_length = 1,
          width = 62,
          height = 52,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(0, -4),
          apply_runtime_tint = true,
          hr_version =
          {
            filename = "__turret3000__/graphics/snipergun-turret/hr-snipergun-turret-base-mask.png",
            flags = { "mask", "low-object" },
            line_length = 1,
            width = 122,
            height = 102,
            axially_symmetrical = false,
            direction_count = 1,
            frame_count = 1,
            shift = util.by_pixel(0, -4.5),
            apply_runtime_tint = true,
            scale = 0.5
          }
        }

      }
    },
    vehicle_impact_sound = sounds.generic_impact,

    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 6,
      projectile_creation_distance = 1.39375,
      projectile_center = {0, -0.0875}, -- same as snipergun_turret_attack shift
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {-0.0625, 0},
        creation_distance = -1.925,
        starting_frame_speed = 0.2,
        starting_frame_speed_deviation = 0.1
      },
	  prepare_range =125,
      range = 75,
	  min_range = 6,
	  damage_modifier = 8.0,
      sound = sounds.snipergun_turret_gunshot
    },

    call_for_help_radius = 40,
    water_reflection =
    {
      pictures =
      {
        filename = "__turret3000__/graphics/snipergun-turret/snipergun-turret-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 32,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    }
  }
  
sniperlaser_turret_entity = {
  
    type = "electric-turret",
    name = "sniperlaser-turret",
    icon = "__turret3000__/graphics/icons/sniperlaser-turret.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = { "placeable-player", "placeable-enemy", "player-creation"},
    minable = { mining_time = 0.5, result = "sniperlaser-turret" },
    max_health = 1000,
    collision_box = {{ -0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{ -1, -1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    rotation_speed = 0.01,
    preparing_speed = 0.05,
	attacking_speed = 10,
    preparing_sound = sounds.sniperlaser_turret_activate,
    folding_sound = sounds.sniperlaser_turret_deactivate,
    corpse = "sniperlaser-turret-remnants",
    dying_explosion = "laser-turret-explosion", --todo
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "801kJ",
      input_flow_limit = "9600kW",
      drain = "24kW",
      usage_priority = "primary-input"
    },
    folded_animation =
    {
      layers =
      {
        sniperlaser_turret_extension{frame_count=1, line_length = 1},
        sniperlaser_turret_extension_shadow{frame_count=1, line_length=1},
        sniperlaser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        sniperlaser_turret_extension{},
        sniperlaser_turret_extension_shadow{},
        sniperlaser_turret_extension_mask{}
      }
    },
    prepared_animation =
    {
      layers =
      {
        sniperlaser_turret_shooting(),
        sniperlaser_turret_shooting_shadow(),
        sniperlaser_turret_shooting_mask()
      }
    },
    --attacking_speed = 0.1,
    energy_glow_animation = sniperlaser_turret_shooting_glow(),
    glow_light_intensity = 0.5, -- defaults to 0
    folding_animation =
    {
      layers =
      {
        sniperlaser_turret_extension{run_mode = "backward"},
        sniperlaser_turret_extension_shadow{run_mode = "backward"},
        sniperlaser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture =
    {
      layers =
      {
        {
          filename = "__turret3000__/graphics/sniperlaser-turret/sniperlaser-turret-base.png",
          priority = "high",
          width = 70,
          height = 52,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(0, 2),
          hr_version =
          {
            filename = "__turret3000__/graphics/sniperlaser-turret/hr-sniperlaser-turret-base.png",
            priority = "high",
            width = 138,
            height = 104,
            direction_count = 1,
            frame_count = 1,
            shift = util.by_pixel(-0.5, 2),
            scale = 0.5
          }
        },
        {
          filename = "__turret3000__/graphics/sniperlaser-turret/sniperlaser-turret-base-shadow.png",
          line_length = 1,
          width = 66,
          height = 42,
          draw_as_shadow = true,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(6, 3),
          hr_version =
          {
            filename = "__turret3000__/graphics/sniperlaser-turret/hr-sniperlaser-turret-base-shadow.png",
            line_length = 1,
            width = 132,
            height = 82,
            draw_as_shadow = true,
            direction_count = 1,
            frame_count = 1,
            shift = util.by_pixel(6, 3),
            scale = 0.5
          }
        }
      }
    },
    vehicle_impact_sound = sounds.generic_impact,

    attack_parameters =
    {
      type = "beam",
      cooldown = 40,
	  prepare_range =125,
      range = 75,
      source_direction_count = 64,
      source_offset = {0, -3.423489 / 4},
      damage_modifier = 8,
      ammo_type =
      {
        category = "laser",
        energy_consumption = "800kJ",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "sniperlaser-beam",
            max_length = 75,
            duration = 40,
            source_offset = {0, -1.31439 }
          }
        }
      }
    },

    call_for_help_radius = 40,
    water_reflection =
    {
      pictures =
      {
        filename = "__turret3000__/graphics/sniperlaser-turret/sniperlaser-turret-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 32,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    }
  }
  
coal_furnace_entity = {
	type = "furnace",
    name = "coal-furnace",
    icon = "__turret3000__/graphics/icons/coal-furnace.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "coal-furnace"},
    max_health = 200,
    corpse = "coal-furnace-remnants",
    --dying_explosion = "coal-furnace-explosion",
    repair_sound = sounds.manual_repair,
    mined_sound = sounds.deconstruct_bricks(0.8),
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.car_stone_impact,
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/furnace.ogg",
          volume = 0.6
        }
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      audible_distance_modifier = 0.4
    },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    damaged_trigger_effect = hit_effects.rock(),
    crafting_categories = {"coal-furnace"},
    result_inventory_size = 1,
    energy_usage = "90kW",
    crafting_speed = 1,
    source_inventory_size = 1,
    energy_source =
    {
	type = "electric",
      buffer_capacity = "801kJ",
      input_flow_limit = "9600kW",
      --drain = "24kW",
      usage_priority = "primary-input",
      --type = "burner",
      --fuel_category = "chemical",
      --effectivity = 1,
      --fuel_inventory_size = 1,
      emissions_per_minute = 2,
      light_flicker =
      {
        color = {0,0,0},
        minimum_intensity = 0.6,
        maximum_intensity = 0.95
      },
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    animation =
    {
      layers =
      {
        {
          filename = "__turret3000__/graphics/coal-furnace/coal-furnace.png",
          priority = "extra-high",
          width = 81,
          height = 64,
          frame_count = 1,
          shift = util.by_pixel(14.5, 2),
          hr_version =
          {
            filename = "__turret3000__/graphics/coal-furnace/hr-coal-furnace.png",
            priority = "extra-high",
            width = 151,
            height = 146,
            frame_count = 1,
            shift = util.by_pixel(-0.25, 6),
            scale = 0.5
          }
        },
        {
          filename = "__turret3000__/graphics/coal-furnace/coal-furnace-shadow.png",
          priority = "extra-high",
          width = 81,
          height = 64,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(14.5, 2),
          hr_version =
          {
            filename = "__turret3000__/graphics/coal-furnace/hr-coal-furnace-shadow.png",
            priority = "extra-high",
            width = 164,
            height = 74,
            frame_count = 1,
            draw_as_shadow = true,
            force_hr_shadow = true,
            shift = util.by_pixel(14.5, 13),
            scale = 0.5
          }
        }
      }
    },
    working_visualisations =
    {
      {
        draw_as_light = true,
        fadeout = true,
        effect = "flicker",
        animation =
        {
          layers =
          {
            {
              filename = "__turret3000__/graphics/coal-furnace/coal-furnace-fire.png",
              priority = "extra-high",
              line_length = 8,
              width = 20,
              height = 49,
              frame_count = 48,
              axially_symmetrical = false,
              direction_count = 1,
              shift = util.by_pixel(-0.5, 5.5),
              hr_version =
              {
                filename = "__turret3000__/graphics/coal-furnace/hr-coal-furnace-fire.png",
                priority = "extra-high",
                line_length = 8,
                width = 41,
                height = 100,
                frame_count = 48,
                axially_symmetrical = false,
                direction_count = 1,
                shift = util.by_pixel(-0.75, 5.5),
                scale = 0.5
              }
            },
            {
              filename = "__turret3000__/graphics/coal-furnace/coal-furnace-light.png",
              blend_mode = "additive",
              width = 54,
              height = 74,
              repeat_count = 48,
              shift = util.by_pixel(0, 4),
              hr_version =
              {
                filename = "__turret3000__/graphics/coal-furnace/hr-coal-furnace-light.png",
                blend_mode = "additive",
                width = 106,
                height = 144,
                repeat_count = 48,
                shift = util.by_pixel(0, 5),
                scale = 0.5,
              }
            },
          }
        }
      },
      {
        draw_as_light = true,
        draw_as_sprite = false,
        fadeout = true,
        effect = "flicker",
        animation =
        {
          filename = "__turret3000__/graphics/coal-furnace/coal-furnace-ground-light.png",
          blend_mode = "additive",
          draw_as_sprite = false,
          width = 56,
          height = 56,
          repeat_count = 48,
          shift = util.by_pixel(0, 44),
          hr_version =
          {
            filename = "__turret3000__/graphics/coal-furnace/hr-coal-furnace-ground-light.png",
            blend_mode = "additive",
            draw_as_sprite = false,
            width = 116,
            height = 110,
            repeat_count = 48,
            shift = util.by_pixel(-1, 44),
            scale = 0.5,
          }
        },
      },
    },
    water_reflection =
    {
      pictures =
      {
        filename = "__turret3000__/graphics/coal-furnace/coal-furnace-reflection.png",
        priority = "extra-high",
        width = 16,
        height = 16,
        shift = util.by_pixel(0, 35),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
    }
  
  }