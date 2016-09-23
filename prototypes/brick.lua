
data.raw["tile"]["stone-path"].walking_speed_modifier = 1.4

data:extend(
{
  {
    type = "item",
    name = "ku-brick",
    icon = "__kumori-core__/graphics/brick/brick.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "terrain",
    order = "a[stone-brick]",
    stack_size = 100,
    place_as_tile =
    {
      result = "ku-brick-path",
      condition_size = 4,
      condition = { "water-tile" }
    }
  },
  {
    type = "tile",
    name = "ku-brick-path",
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "ku-brick"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 1.4,
    layer = 60,
    decorative_removal_probability = 0.6,
    variants =
    {
      main =
      {
        {
          picture = "__kumori-core__/graphics/brick-path/stone-path-1.png",
          count = 16,
          size = 1
        },
        {
          picture = "__kumori-core__/graphics/brick-path/stone-path-2.png",
          count = 4,
          size = 2,
          probability = 0.39,
        },
        {
          picture = "__kumori-core__/graphics/brick-path/stone-path-4.png",
          count = 4,
          size = 4,
          probability = 1,
        },
      },
      inner_corner =
      {
        picture = "__kumori-core__/graphics/brick-path/stone-path-inner-corner.png",
        count = 8
      },
      outer_corner =
      {
        picture = "__kumori-core__/graphics/brick-path/stone-path-outer-corner.png",
        count = 1
      },
      side =
      {
        picture = "__kumori-core__/graphics/brick-path/stone-path-side.png",
        count = 10
      },
      u_transition =
      {
        picture = "__kumori-core__/graphics/brick-path/stone-path-u.png",
        count = 10
      },
      o_transition =
      {
        picture = "__kumori-core__/graphics/brick-path/stone-path-o.png",
        count = 10
      }
    },
    walking_sound =
    {
      {
        filename = "__base__/sound/walking/concrete-01.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-02.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-03.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-04.ogg",
        volume = 1.2
      }
    },
    map_color={r=50, g=50, b=50},
    ageing=0,
    vehicle_friction_modifier = stone_path_vehicle_speed_modifier
  }
}
)