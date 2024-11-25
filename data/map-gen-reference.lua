--This is a reference file, a copy of the code from the original
local nauvis_planet = {
    distance = 15,
    gravity_pull = 10,
    icon = "__base__/graphics/icons/nauvis.png",
    magnitude = 1,
    map_seed_offset = 0,
    name = "nauvis",
    order = "a[nauvis]",
    orientation = 0.275,
    persistent_ambient_sounds = {
        base_ambience = {
            filename = "__base__/sound/world/world_base_wind.ogg",
            volume = 0.3
        },
        crossfade = {
            curve_type = "cosine",
            from = {
                control = 0.35,
                volume_percentage = 0
            },
            order = {
                "wind",
                "base_ambience"
            },
            to = {
                control = 2,
                volume_percentage = 100
            }
        },
        wind = {
            filename = "__base__/sound/wind/wind.ogg",
            volume = 0.8
        }
    },
    planet_procession_set = {
        arrival = {
            "default-b"
        },
        departure = {
            "default-rocket-a"
        }
    },
    pollutant_type = "pollution",
    procession_graphic_catalogue = {
        {
            index = 506,
            sprite = {
                blend_mode = "additive",
                draw_as_glow = true,
                filename = "__base__/graphics/entity/cargo-hubs/hatches/planet-lower-hatch-pod-emission-A.png",
                height = 316,
                line_length = 1,
                priority = "medium",
                scale = 0.5,
                shift = {
                    0.703125,
                    -0.3125
                },
                width = 356
            }
        },
        {
            index = 507,
            sprite = {
                blend_mode = "additive",
                draw_as_glow = true,
                filename = "__base__/graphics/entity/cargo-hubs/hatches/planet-lower-hatch-pod-emission-B.png",
                height = 388,
                line_length = 1,
                priority = "medium",
                scale = 0.5,
                shift = {
                    -1.21875,
                    0.265625
                },
                width = 402
            }
        },
        {
            index = 508,
            sprite = {
                blend_mode = "additive",
                draw_as_glow = true,
                filename = "__base__/graphics/entity/cargo-hubs/hatches/planet-lower-hatch-pod-emission-C.png",
                height = 358,
                line_length = 1,
                priority = "medium",
                scale = 0.5,
                shift = {
                    0.015625,
                    -0.96875
                },
                width = 350
            }
        }
    },
    solar_power_in_space = 300,
    starmap_icon = "__base__/graphics/icons/starmap-planet-nauvis.png",
    starmap_icon_size = 512,
    surface_properties = {
        ["day-night-cycle"] = 25200
    },
    surface_render_parameters = {
        clouds = {
            additional_density_sample = {
                scale = 0.0084375,
                wind_speed_factor = 1.77
            },
            detail_noise_texture = {
                filename = "__core__/graphics/clouds-detail-noise.png",
                size = 2048
            },
            detail_sample_1 = {
                scale = 0.053406250000000002,
                wind_speed_factor = 0.11702750146284377
            },
            detail_sample_2 = {
                scale = 0.068093749999999993,
                wind_speed_factor = 0.091785222579164767
            },
            detail_sample_morph_duration = 256,
            movement_speed_multiplier = 0.75,
            opacity = 0.25,
            scale = 1,
            shape_noise_texture = {
                filename = "__core__/graphics/clouds-noise.png",
                size = 2048
            },
            shape_warp_strength = 0.06,
            shape_warp_weight = 0.4,
            warp_sample_1 = {
                scale = 0.05
            },
            warp_sample_2 = {
                scale = 0.09375,
                wind_speed_factor = 0
            },
            warped_shape_sample = {
                scale = 0.01125
            }
        }
    },
    type = "planet",
    map_gen_settings = {
        autoplace_controls = {
            coal = {},
            ["copper-ore"] = {},
            ["crude-oil"] = {},
            ["enemy-base"] = {},
            ["iron-ore"] = {},
            nauvis_cliff = {},
            rocks = {},
            starting_area_moisture = {},
            stone = {},
            trees = {},
            ["uranium-ore"] = {},
            water = {}
        },
        autoplace_settings = {
            decorative = {
                settings = {
                    ["brown-asterisk"] = {},
                    ["brown-asterisk-mini"] = {},
                    ["brown-carpet-grass"] = {},
                    ["brown-fluff"] = {},
                    ["brown-fluff-dry"] = {},
                    ["brown-hairy-grass"] = {},
                    ["cracked-mud-decal"] = {},
                    ["dark-mud-decal"] = {},
                    garballo = {},
                    ["garballo-mini-dry"] = {},
                    ["green-asterisk"] = {},
                    ["green-asterisk-mini"] = {},
                    ["green-bush-mini"] = {},
                    ["green-carpet-grass"] = {},
                    ["green-croton"] = {},
                    ["green-desert-bush"] = {},
                    ["green-hairy-grass"] = {},
                    ["green-pita"] = {},
                    ["green-pita-mini"] = {},
                    ["green-small-grass"] = {},
                    ["light-mud-decal"] = {},
                    ["medium-rock"] = {},
                    ["medium-sand-rock"] = {},
                    ["red-asterisk"] = {},
                    ["red-croton"] = {},
                    ["red-desert-bush"] = {},
                    ["red-desert-decal"] = {},
                    ["red-pita"] = {},
                    ["sand-decal"] = {},
                    ["sand-dune-decal"] = {},
                    ["small-rock"] = {},
                    ["small-sand-rock"] = {},
                    ["tiny-rock"] = {},
                    ["white-desert-bush"] = {}
                }
            },
            entity = {
                settings = {
                    ["big-rock"] = {},
                    ["big-sand-rock"] = {},
                    coal = {},
                    ["copper-ore"] = {},
                    ["crude-oil"] = {},
                    fish = {},
                    ["huge-rock"] = {},
                    ["iron-ore"] = {},
                    stone = {},
                    ["uranium-ore"] = {}
                }
            },
            tile = {
                settings = {
                    deepwater = {},
                    ["dirt-1"] = {},
                    ["dirt-2"] = {},
                    ["dirt-3"] = {},
                    ["dirt-4"] = {},
                    ["dirt-5"] = {},
                    ["dirt-6"] = {},
                    ["dirt-7"] = {},
                    ["dry-dirt"] = {},
                    ["grass-1"] = {},
                    ["grass-2"] = {},
                    ["grass-3"] = {},
                    ["grass-4"] = {},
                    ["red-desert-0"] = {},
                    ["red-desert-1"] = {},
                    ["red-desert-2"] = {},
                    ["red-desert-3"] = {},
                    ["sand-1"] = {},
                    ["sand-2"] = {},
                    ["sand-3"] = {},
                    water = {}
                }
            }
        },
        aux_climate_control = true,
        cliff_settings = {
            cliff_smoothing = 0,
            control = "nauvis_cliff",
            name = "cliff"
        },
        moisture_climate_control = true,
        property_expression_names = {}
    },

}

local aquilo = {
    type = "planet",
    name = "aquilo",
    icon = "__space-age__/graphics/icons/aquilo.png",
    starmap_icon = "__space-age__/graphics/icons/starmap-planet-aquilo.png",
    starmap_icon_size = 512,
    gravity_pull = 10,
    distance = 35,
    orientation = 0.225,
    magnitude = 1.0,
    label_orientation = 0.15,
    order = "e[aquilo]",
    subgroup = "planets",
    map_gen_settings = planet_map_gen.aquilo(),
    pollutant_type = nil,
    solar_power_in_space = 60,
    platform_procession_set = {
        arrival = { "planet-to-platform-b" },
        departure = { "platform-to-planet-a" }
    },
    planet_procession_set = {
        arrival = { "platform-to-planet-b" },
        departure = { "planet-to-platform-a" }
    },
    procession_graphic_catalogue = planet_catalogue_aquilo,
    surface_properties = {
        ["day-night-cycle"] = 20 * minute,
        ["magnetic-field"] = 10,
        pressure = 300,
        ["solar-power"] = 1,
        gravity = 15
    },
    asteroid_spawn_influence = 1,
    asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_aquilo, 0.9),
    persistent_ambient_sounds = {
        base_ambience = { filename = "__space-age__/sound/wind/base-wind-aquilo.ogg", volume = 0.5 },
        wind = { filename = "__space-age__/sound/wind/wind-aquilo.ogg", volume = 0.8 },
        crossfade = {
            order = { "wind", "base_ambience" },
            curve_type = "cosine",
            from = { control = 0.35, volume_percentage = 0.0 },
            to = { control = 2, volume_percentage = 100.0 }
        },
        semi_persistent = {
            {
                sound = {
                    variations = sound_variations("__space-age__/sound/world/semi-persistent/ice-cracks", 5, 0.7),
                    advanced_volume_control = {
                        fades = { fade_in = { curve_type = "cosine", from = { control = 0.5, volume_percentage = 0.0 }, to = { 2, 100.0 } } }
                    }
                },
                delay_mean_seconds = 10,
                delay_variance_seconds = 5
            },
            {
                sound = { variations = sound_variations("__space-age__/sound/world/semi-persistent/cold-wind-gust", 5, 0.3) },
                delay_mean_seconds = 15,
                delay_variance_seconds = 9
            }
        }
    },
    entities_require_heating = true,
    player_effects = {
        type = "direct",
        action_delivery = {
            type = "instant",
            source_effects = {
                type = "create-trivial-smoke",
                smoke_name = "aquilo-snow-smoke",
                speed = { 0, 0.1 },
                initial_height = 0.5,
                speed_multiplier = 1,
                speed_multiplier_deviation = 0.5,
                starting_frame = 8,
                starting_frame_deviation = 8,
                offset_deviation = { { -96, -48 }, { 96, 48 } },
                speed_from_center = 0.04,
                speed_from_center_deviation = 0.2
            }
        }
    },
    ticks_between_player_effects = 2
}

local vulcanus = {
    asteroid_spawn_definitions = {
        {
            angle_when_stopped = 1,
            asteroid = "metallic-asteroid-chunk",
            probability = 0.002,
            speed = 0.016666666666666665,
            type = "asteroid-chunk"
        },
        {
            angle_when_stopped = 1,
            asteroid = "carbonic-asteroid-chunk",
            probability = 0.0008,
            speed = 0.016666666666666665,
            type = "asteroid-chunk"
        },
        {
            angle_when_stopped = 1,
            asteroid = "oxide-asteroid-chunk",
            probability = 0.0004,
            speed = 0.016666666666666665,
            type = "asteroid-chunk"
        },
        {
            angle_when_stopped = 0.6,
            asteroid = "medium-metallic-asteroid",
            probability = 0.0025,
            speed = 0.016666666666666665
        },
        {
            angle_when_stopped = 0.6,
            asteroid = "medium-carbonic-asteroid",
            probability = 0.001,
            speed = 0.016666666666666665
        },
        {
            angle_when_stopped = 0.6,
            asteroid = "medium-oxide-asteroid",
            probability = 0.0005,
            speed = 0.016666666666666665
        }
    },
    asteroid_spawn_influence = 1,
    distance = 10,
    gravity_pull = 10,
    icon = "__space-age__/graphics/icons/vulcanus.png",
    magnitude = 1.5,
    map_gen_settings = {
        autoplace_controls = {
            calcite = {},
            sulfuric_acid_geyser = {},
            tungsten_ore = {},
            vulcanus_coal = {},
            vulcanus_volcanism = {}
        },
        autoplace_settings = {
            decorative = {
                settings = {
                    ["calcite-stain"] = {},
                    ["calcite-stain-small"] = {},
                    ["crater-large"] = {},
                    ["crater-small"] = {},
                    ["medium-volcanic-rock"] = {},
                    ["pumice-relief-decal"] = {},
                    ["small-sulfur-rock"] = {},
                    ["small-volcanic-rock"] = {},
                    ["sulfur-rock-cluster"] = {},
                    ["sulfur-stain"] = {},
                    ["sulfur-stain-small"] = {},
                    ["sulfuric-acid-puddle"] = {},
                    ["sulfuric-acid-puddle-small"] = {},
                    ["tiny-rock-cluster"] = {},
                    ["tiny-sulfur-rock"] = {},
                    ["tiny-volcanic-rock"] = {},
                    ["v-brown-carpet-grass"] = {},
                    ["v-brown-hairy-grass"] = {},
                    ["v-green-hairy-grass"] = {},
                    ["v-red-pita"] = {},
                    ["vulcanus-crack-decal-huge-warm"] = {},
                    ["vulcanus-crack-decal-large"] = {},
                    ["vulcanus-dune-decal"] = {},
                    ["vulcanus-lava-fire"] = {},
                    ["vulcanus-rock-decal-large"] = {},
                    ["vulcanus-sand-decal"] = {},
                    ["waves-decal"] = {}
                }
            },
            entity = {
                settings = {
                    ["ashland-lichen-tree"] = {},
                    ["ashland-lichen-tree-flaming"] = {},
                    ["big-volcanic-rock"] = {},
                    calcite = {},
                    coal = {},
                    ["crater-cliff"] = {},
                    ["huge-volcanic-rock"] = {},
                    ["sulfuric-acid-geyser"] = {},
                    ["tungsten-ore"] = {},
                    ["vulcanus-chimney"] = {},
                    ["vulcanus-chimney-cold"] = {},
                    ["vulcanus-chimney-faded"] = {},
                    ["vulcanus-chimney-short"] = {},
                    ["vulcanus-chimney-truncated"] = {}
                }
            },
            tile = {
                settings = {
                    lava = {},
                    ["lava-hot"] = {},
                    ["volcanic-ash-cracks"] = {},
                    ["volcanic-ash-dark"] = {},
                    ["volcanic-ash-flats"] = {},
                    ["volcanic-ash-light"] = {},
                    ["volcanic-ash-soil"] = {},
                    ["volcanic-cracks"] = {},
                    ["volcanic-cracks-hot"] = {},
                    ["volcanic-cracks-warm"] = {},
                    ["volcanic-folds"] = {},
                    ["volcanic-folds-flat"] = {},
                    ["volcanic-folds-warm"] = {},
                    ["volcanic-jagged-ground"] = {},
                    ["volcanic-pumice-stones"] = {},
                    ["volcanic-smooth-stone"] = {},
                    ["volcanic-smooth-stone-warm"] = {},
                    ["volcanic-soil-dark"] = {},
                    ["volcanic-soil-light"] = {}
                }
            }
        },
        cliff_settings = {
            cliff_elevation_0 = 70,
            cliff_elevation_interval = 120,
            name = "cliff-vulcanus"
        },
        property_expression_names = {
            aux = "vulcanus_aux",
            cliff_elevation = "cliff_elevation_from_elevation",
            cliffiness = "cliffiness_basic",
            elevation = "vulcanus_elevation",
            ["entity:calcite:probability"] = "vulcanus_calcite_probability",
            ["entity:calcite:richness"] = "vulcanus_calcite_richness",
            ["entity:coal:probability"] = "vulcanus_coal_probability",
            ["entity:coal:richness"] = "vulcanus_coal_richness",
            ["entity:sulfuric-acid-geyser:probability"] = "vulcanus_sulfuric_acid_geyser_probability",
            ["entity:sulfuric-acid-geyser:richness"] = "vulcanus_sulfuric_acid_geyser_richness",
            ["entity:tungsten-ore:probability"] = "vulcanus_tungsten_ore_probability",
            ["entity:tungsten-ore:richness"] = "vulcanus_tungsten_ore_richness",
            moisture = "vulcanus_moisture",
            temperature = "vulcanus_temperature"
        },
        territory_settings = {
            minimum_territory_size = 10,
            territory_index_expression = "demolisher_territory_expression",
            territory_variation_expression = "demolisher_variation_expression",
            units = {
                "small-demolisher",
                "medium-demolisher",
                "big-demolisher"
            }
        }
    },
    name = "vulcanus",
    order = "b[vulcanus]",
    orientation = 0.1,
    persistent_ambient_sounds = {
        base_ambience = {
            filename = "__space-age__/sound/wind/base-wind-vulcanus.ogg",
            volume = 0.8
        },
        crossfade = {
            curve_type = "cosine",
            from = {
                control = 0.35,
                volume_percentage = 0
            },
            order = {
                "wind",
                "base_ambience"
            },
            to = {
                control = 2,
                volume_percentage = 100
            }
        },
        semi_persistent = {
            {
                delay_mean_seconds = 10,
                delay_variance_seconds = 5,
                sound = {
                    variations = {
                        {
                            filename = "__space-age__/sound/world/semi-persistent/distant-rumble-1.ogg",
                            volume = 0.5
                        },
                        {
                            filename = "__space-age__/sound/world/semi-persistent/distant-rumble-2.ogg",
                            volume = 0.5
                        },
                        {
                            filename = "__space-age__/sound/world/semi-persistent/distant-rumble-3.ogg",
                            volume = 0.5
                        }
                    }
                }
            },
            {
                delay_mean_seconds = 15,
                delay_variance_seconds = 7,
                sound = {
                    variations = {
                        {
                            filename = "__space-age__/sound/world/semi-persistent/distant-flames-1.ogg",
                            volume = 0.6
                        },
                        {
                            filename = "__space-age__/sound/world/semi-persistent/distant-flames-2.ogg",
                            volume = 0.6
                        },
                        {
                            filename = "__space-age__/sound/world/semi-persistent/distant-flames-3.ogg",
                            volume = 0.6
                        },
                        {
                            filename = "__space-age__/sound/world/semi-persistent/distant-flames-4.ogg",
                            volume = 0.6
                        },
                        {
                            filename = "__space-age__/sound/world/semi-persistent/distant-flames-5.ogg",
                            volume = 0.6
                        }
                    }
                }
            }
        },
        wind = {
            filename = "__space-age__/sound/wind/wind-vulcanus.ogg",
            volume = 0.8
        }
    },
    planet_procession_set = {
        arrival = {
            "platform-to-planet-b"
        },
        departure = {
            "planet-to-platform-a"
        }
    },
    platform_procession_set = {
        arrival = {
            "planet-to-platform-b"
        },
        departure = {
            "platform-to-planet-a"
        }
    },
    procession_graphic_catalogue = {
        {
            index = 400,
            sprite = {
                filename = "__space-age__/graphics/procession/clouds/vulcanus-cloudscape.png",
                flags = {
                    "group=effect-texture",
                    "linear-minification",
                    "linear-magnification"
                },
                height = 960,
                priority = "no-atlas",
                width = 960
            },
            type = "sprite"
        },
        {
            index = 401,
            sprite = {
                filename = "__space-age__/graphics/procession/clouds/mask-cloudscape.png",
                flags = {
                    "group=effect-texture",
                    "linear-minification",
                    "linear-magnification"
                },
                height = 960,
                priority = "no-atlas",
                width = 960
            },
            type = "sprite"
        },
        {
            index = 402,
            sprite = {
                filename = "__space-age__/graphics/procession/clouds/vulcanus-cloudscape-layered-0.png",
                flags = {
                    "group=effect-texture",
                    "linear-minification",
                    "linear-magnification"
                },
                height = 1500,
                priority = "no-atlas",
                width = 2000
            },
            type = "sprite"
        },
        {
            index = 403,
            sprite = {
                filename = "__space-age__/graphics/procession/clouds/mask-cloudscape-layered-0.png",
                flags = {
                    "group=effect-texture",
                    "linear-minification",
                    "linear-magnification"
                },
                height = 1500,
                priority = "no-atlas",
                width = 2000
            },
            type = "sprite"
        },
        {
            index = 404,
            sprite = {
                filename = "__space-age__/graphics/procession/clouds/vulcanus-cloudscape-layered-1.png",
                flags = {
                    "group=effect-texture",
                    "linear-minification",
                    "linear-magnification"
                },
                height = 1200,
                priority = "no-atlas",
                width = 1600
            },
            type = "sprite"
        },
        {
            index = 405,
            sprite = {
                filename = "__space-age__/graphics/procession/clouds/mask-cloudscape-layered-1.png",
                flags = {
                    "group=effect-texture",
                    "linear-minification",
                    "linear-magnification"
                },
                height = 1200,
                priority = "no-atlas",
                width = 1600
            },
            type = "sprite"
        },
        {
            index = 406,
            sprite = {
                filename = "__space-age__/graphics/procession/clouds/vulcanus-cloudscape-layered-2.png",
                flags = {
                    "group=effect-texture",
                    "linear-minification",
                    "linear-magnification"
                },
                height = 1050,
                priority = "no-atlas",
                width = 1400
            },
            type = "sprite"
        },
        {
            index = 407,
            sprite = {
                filename = "__space-age__/graphics/procession/clouds/mask-cloudscape-layered-2.png",
                flags = {
                    "group=effect-texture",
                    "linear-minification",
                    "linear-magnification"
                },
                height = 1050,
                priority = "no-atlas",
                width = 1400
            },
            type = "sprite"
        },
        {
            index = 408,
            sprite = {
                filename = "__space-age__/graphics/procession/clouds/vulcanus-cloudscape-layered-3.png",
                flags = {
                    "group=effect-texture",
                    "linear-minification",
                    "linear-magnification"
                },
                height = 900,
                priority = "no-atlas",
                width = 1200
            },
            type = "sprite"
        },
        {
            index = 409,
            sprite = {
                filename = "__space-age__/graphics/procession/clouds/mask-cloudscape-layered-3.png",
                flags = {
                    "group=effect-texture",
                    "linear-minification",
                    "linear-magnification"
                },
                height = 900,
                priority = "no-atlas",
                width = 1200
            },
            type = "sprite"
        },
        {
            index = 301,
            sprite = {
                filename = "__space-age__/graphics/procession/space-rear-star.png",
                flags = {
                    "group=effect-texture",
                    "linear-minification",
                    "linear-magnification"
                },
                height = 1024,
                priority = "no-atlas",
                width = 1024
            },
            type = "sprite"
        },
        {
            index = 450,
            sprite = {
                filename = "__space-age__/graphics/procession/clouds/vulcanus-sky-tint.png",
                flags = {
                    "group=effect-texture",
                    "linear-minification",
                    "linear-magnification"
                },
                height = 16,
                priority = "no-atlas",
                width = 16
            },
            type = "sprite"
        },
        {
            index = 509,
            sprite = {
                blend_mode = "additive",
                draw_as_glow = true,
                filename = "__space-age__/graphics/entity/cargo-hubs/hatches/shared-cargo-bay-pod-emission.png",
                height = 120,
                line_length = 1,
                priority = "medium",
                scale = 0.5,
                shift = {
                    0.21062500000000002,
                    0.109375
                },
                width = 196
            }
        },
        {
            index = 500,
            sprite = {
                blend_mode = "additive",
                draw_as_glow = true,
                filename = "__space-age__/graphics/entity/cargo-hubs/hatches/platform-lower-hatch-pod-emission-A.png",
                height = 268,
                line_length = 1,
                priority = "medium",
                scale = 0.5,
                shift = {
                    0.75,
                    -0.359375
                },
                width = 302
            }
        },
        {
            index = 501,
            sprite = {
                blend_mode = "additive",
                draw_as_glow = true,
                filename = "__space-age__/graphics/entity/cargo-hubs/hatches/platform-lower-hatch-pod-emission-B.png",
                height = 286,
                line_length = 1,
                priority = "medium",
                scale = 0.5,
                shift = {
                    -0.4375,
                    -0.703125
                },
                width = 276
            }
        },
        {
            index = 502,
            sprite = {
                blend_mode = "additive",
                draw_as_glow = true,
                filename = "__space-age__/graphics/entity/cargo-hubs/hatches/platform-lower-hatch-pod-emission-C.png",
                height = 308,
                line_length = 1,
                priority = "medium",
                scale = 0.5,
                shift = {
                    1.046875,
                    -1.125
                },
                width = 322
            }
        },
        {
            index = 503,
            sprite = {
                blend_mode = "additive",
                draw_as_glow = true,
                filename = "__space-age__/graphics/entity/cargo-hubs/hatches/platform-upper-hatch-pod-emission-A.png",
                height = 310,
                line_length = 1,
                priority = "medium",
                scale = 0.5,
                shift = {
                    0.84375,
                    -0.375
                },
                width = 340
            }
        },
        {
            index = 504,
            sprite = {
                blend_mode = "additive",
                draw_as_glow = true,
                filename = "__space-age__/graphics/entity/cargo-hubs/hatches/platform-upper-hatch-pod-emission-B.png",
                height = 318,
                line_length = 1,
                priority = "medium",
                scale = 0.5,
                shift = {
                    -1.234375,
                    -0.28125
                },
                width = 402
            }
        },
        {
            index = 505,
            sprite = {
                blend_mode = "additive",
                draw_as_glow = true,
                filename = "__space-age__/graphics/entity/cargo-hubs/hatches/platform-upper-hatch-pod-emission-C.png",
                height = 318,
                line_length = 1,
                priority = "medium",
                scale = 0.5,
                shift = {
                    0.078125,
                    -1.359375
                },
                width = 348
            }
        },
        {
            index = 506,
            sprite = {
                blend_mode = "additive",
                draw_as_glow = true,
                filename = "__base__/graphics/entity/cargo-hubs/hatches/planet-lower-hatch-pod-emission-A.png",
                height = 316,
                line_length = 1,
                priority = "medium",
                scale = 0.5,
                shift = {
                    0.703125,
                    -0.3125
                },
                width = 356
            }
        },
        {
            index = 507,
            sprite = {
                blend_mode = "additive",
                draw_as_glow = true,
                filename = "__base__/graphics/entity/cargo-hubs/hatches/planet-lower-hatch-pod-emission-B.png",
                height = 388,
                line_length = 1,
                priority = "medium",
                scale = 0.5,
                shift = {
                    -1.21875,
                    0.265625
                },
                width = 402
            }
        },
        {
            index = 508,
            sprite = {
                blend_mode = "additive",
                draw_as_glow = true,
                filename = "__base__/graphics/entity/cargo-hubs/hatches/planet-lower-hatch-pod-emission-C.png",
                height = 358,
                line_length = 1,
                priority = "medium",
                scale = 0.5,
                shift = {
                    0.015625,
                    -0.96875
                },
                width = 350
            }
        }
    },
    solar_power_in_space = 600,
    starmap_icon = "__space-age__/graphics/icons/starmap-planet-vulcanus.png",
    starmap_icon_size = 512,
    subgroup = "planets",
    surface_properties = {
        ["day-night-cycle"] = 5400,
        gravity = 40,
        ["magnetic-field"] = 25,
        pressure = 4000,
        ["solar-power"] = 400
    },
    surface_render_parameters = {
        day_night_cycle_color_lookup = {
            {
                0,
                "__space-age__/graphics/lut/vulcanus-1-day.png"
            },
            {
                0.2,
                "__space-age__/graphics/lut/vulcanus-1-day.png"
            },
            {
                0.45,
                "__space-age__/graphics/lut/vulcanus-2-night.png"
            },
            {
                0.55,
                "__space-age__/graphics/lut/vulcanus-2-night.png"
            },
            {
                0.8,
                "__space-age__/graphics/lut/vulcanus-1-day.png"
            }
        },
        fog = {
            color1 = {
                1,
                0.87059999999999995,
                0.302
            },
            color2 = {
                1,
                0.87059999999999995,
                0.29020000000000001
            },
            detail_noise_texture = {
                filename = "__core__/graphics/clouds-detail-noise.png",
                size = 2048
            },
            shape_noise_texture = {
                filename = "__core__/graphics/clouds-noise.png",
                size = 2048
            }
        },
        terrain_tint_effect = {
            global_intensity = 0.3,
            global_scale = 0.1,
            intensity = {
                0.5,
                0.2,
                0.3,
                1
            },
            noise_texture = {
                filename = "__space-age__/graphics/terrain/vulcanus/tint-noise.png",
                size = 4096
            },
            offset = {
                0.2,
                0,
                0.4,
                0.8
            },
            scale_u = {
                3,
                1,
                1,
                1
            },
            scale_v = {
                1,
                1,
                1,
                1
            },
            zoom_factor = 3,
            zoom_intensity = 0.6
        }
    },
    type = "planet"
}
