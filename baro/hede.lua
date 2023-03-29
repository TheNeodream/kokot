ToDReborn.DefaultValues = {
    ["others/sun_ray_color"] = {
        day_value = Vector3(1, 0.94, 0.81),
        night_value = Vector3(1, 0.95, 0.81),
        key = "35325076eb5a2684"
    },
    ["others/sun_ray_color_scale"] = {day_value = 4.731, night_value = 0.05, key = "d3c16b0bb77370d4"},
    ["sky/color0_scale"] = {day_value = 1, night_value = 0.25, key = "cee9c44e4f1ef6e2"},
    ["sky/color0"] = {
        day_value = Vector3(0.12, 0.11, 0.07),
        night_value = Vector3(0.12, 0.11, 0.07),
        key = "fb96a0addd59b018"
    },
    --["sky/color1_scale"] = {day_value = 4, night_value = -4, key = "85c038253da7bf11"},
    ["sky/color2_scale"] = {day_value = 1, night_value = 0.5, key = "79632d2b8dab1c23"},
    ["apply_ambient/sky_top_color"] = {
        day_value = Vector3(0.86, 0.94, 1),
        night_value = Vector3(0, 0, 0),
        key = "6fcd51beb559e85c"
    },
    ["apply_ambient/sky_bottom_color"] = {
        day_value = Vector3(1, 0.90, 0.75),
        night_value = Vector3(0, 0, 0),
        key = "b5663c81d7db7310"
    },
    ["apply_ambient/ambient_scale"] = {day_value = 0.17, night_value = 0.4, key = "13d7817215360151"},
    ["apply_ambient/ambient_color_scale"] = {day_value = 0.32, night_value = 0.15, key = "72c5ffc46ab06e53"},
    ["apply_ambient/ambient_falloff_scale"] = {day_value = 0.681, night_value = 0.05, key = "c25af559c7e1d69c"},
    ["apply_ambient/ambient_color"] = {
        day_value = Vector3(0.31, 0.31, 0.31),
        night_value = Vector3(0.31, 0.31, 0.31),
        key = "312d3f85560b8f82"
    },
    ["apply_ambient/fog_far_low_color"] = {
        day_value = Vector3(0.803, 0.894, 1),
        night_value = Vector3(0.05, 0.05, 0.05),
        key = "fb725a62e7857072"
    },
    ["apply_ambient/fog_min_range"] = {day_value = 806, night_value = 806, key = "2c8c522e139b16"},
    ["apply_ambient/fog_max_range"] = {day_value = 500000, night_value = 500000, key = "20458ffc6d388c0f"},
    ["apply_ambient/fog_start_color"] = {
        day_value = Vector3(0.803, 0.894, 1),
        night_value = Vector3(0.05, 0.05, 0.05),
        key = "ac403b8f792138ad"
    },
    ["apply_ambient/bloom_threshold"] = {day_value = 0, night_value = 0, key = "6174ec93d0eeeacd"},
    ["bloom_lense/bloom_intensity"] = {day_value = 0, night_value = 0, key = "457904ce74fa1005"},
    ["bloom_lense/lense_intensity"] = {day_value = 0, night_value = 0, key = "48b53ca3bf280008"},
    ["bloom_lense/bloom_blur_size"] = {day_value = 0, night_value = 0, key = "e36a12365a151b14"}
}

ToDReborn.HeistSpecificValues = {
    ["safehouse"] = {
        variables = {
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.4,
                night_value = 0.2
            },
            ["others/sun_ray_color_scale"] = {
                day_value = 2,
                night_value = 0.09
            }
        },
        underlays = {},
        start_at_day = true
    },
    ["welcome_to_the_jungle_1"] = {
        variables = {
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.56, 0.35),
                night_value = Vector3(0.1, 0.1, 0.1)
            },
            ["others/sun_ray_color_scale"] = {
                day_value = 1,
                night_value = 0.1
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(1, 1, 1),
                night_value = Vector3(0.25, 0.25, 0.25)
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.6,
                night_value = 0.3
            }
        },
        underlays = {},
        start_at_day = true
    },
    ["welcome_to_the_jungle_1_night"] = {
        variables = {
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.56, 0.35),
                night_value = Vector3(0.1, 0.1, 0.1)
            },
            ["others/sun_ray_color_scale"] = {
                day_value = 1,
                night_value = 0.1
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(1, 1, 1),
                night_value = Vector3(0.25, 0.25, 0.25)
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.6,
                night_value = 0.3
            }
        },
        underlays = {},
        start_at_day = false
    },
    ["welcome_to_the_jungle_2"] = {
        variables = {
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.898, 0.563, 0.461),
                night_value = Vector3(0.1, 0.1, 0.1)
            },
            ["others/sun_ray_color_scale"] = {
                day_value = 2.651,
                night_value = 0.1
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.319,
                night_value = 1.2
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.023, 0.023, 0.023),
                night_value = Vector3(0.023, 0.023, 0.023)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.35,
                night_value = 0.35
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 500000,
                night_value = 500000,
                key = "20458ffc6d388c0f"
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 1720,
                night_value = 1720,
                key = "2c8c522e139b16"
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.1, 0.1, 0.1),
                key = "ac403b8f792138ad"
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1945_sunset/sky_1945_sunset",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_villa_vivaldi"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_villa_vivaldi"
            } --sky_2100_moon
        },
        start_at_day = true
    },
    ["mus"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 1.22,
                night_value = 0.10
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.309, 0.121),
                night_value = Vector3(0.05, 0.05, 0.05)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 426,
                night_value = 426
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.12,
                night_value = 0.10
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 159259,
                night_value = 159259
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.303, 0.365, 0.511),
                night_value = Vector3(0.1, 0.1, 0.1)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.037,
                night_value = 0.037
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.73, 0.73, 1),
                night_value = Vector3(0.1, 0.1, 0.1)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.277, 0.274, 0.338),
                night_value = Vector3(-0.5, -0.5, -0.5)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_2003_dusk_blue/sky_2003_dusk_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_bank_01"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["framing_frame_1"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2.4,
                night_value = 0.349
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.537, 0.309, 0.121),
                night_value = Vector3(0.537, 0.544, 0.614)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 5000,
                night_value = 5000
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.9,
                night_value = 0.319
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 345878,
                night_value = 345878
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.303, 0.365, 0.511),
                night_value = Vector3(0.242, 0.245, 0.251)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.020,
                night_value = 0.739
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.1, 0.1, 0.1),
                night_value = Vector3(0.116, 0.117, 0.125)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.277, 0.274, 0.338),
                night_value = Vector3(0.132, 0.133, 0.157)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_lcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["framing_frame_2"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2.4,
                night_value = 0.15
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.537, 0.309, 0.121),
                night_value = Vector3(0.537, 0.544, 0.614)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 5000,
                night_value = 5000
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.9,
                night_value = 0.319
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 345878,
                night_value = 345878
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.303, 0.365, 0.511),
                night_value = Vector3(0.242, 0.245, 0.251)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.020,
                night_value = 0.739
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.1, 0.1, 0.1),
                night_value = Vector3(0.116, 0.117, 0.125)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.277, 0.274, 0.338),
                night_value = Vector3(0.132, 0.133, 0.157)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_lcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["framing_frame_3"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2.4,
                night_value = 0.349
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.537, 0.309, 0.121),
                night_value = Vector3(0.537, 0.544, 0.614)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 5000,
                night_value = 5000
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.9,
                night_value = 0.319
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 345878,
                night_value = 345878
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.303, 0.365, 0.511),
                night_value = Vector3(0.242, 0.245, 0.251)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.020,
                night_value = 0.739
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.1, 0.1, 0.1),
                night_value = Vector3(0.116, 0.117, 0.125)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.277, 0.274, 0.338),
                night_value = Vector3(0.132, 0.133, 0.157)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_lcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["election_day_1"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 7.147,
                night_value = 0.1
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.541, 0.239),
                night_value = Vector3(0.2, 0.2, 0.15)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 611,
                night_value = 1000
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.319,
                night_value = 0.09
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 50000,
                night_value = 50000
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.623, 0.741, 0.8),
                night_value = Vector3(0.2, 0.2, 0.2)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.1,
                night_value = 0.1
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.678, 0.701, 0.631),
                night_value = Vector3(0.678, 0.701, 0.631)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.478, 0.639, 0.8),
                night_value = Vector3(-0.3, -0.3, -0.3)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1224_clear_sky/sky_1224_clear_sky",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_evening_hcm"
            }
        },
        start_at_day = true
    },
    ["election_day_2"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 1.26,
                night_value = 0.225
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.75, 0.75),
                night_value = Vector3(0.231, 0.525, 1)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 1500,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.16,
                night_value = 1.1
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 31481,
                night_value = 31481
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.391, 0.432, 0.527),
                night_value = Vector3(0.391, 0.432, 0.527)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.4,
                night_value = 0.4
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(1, 0.75, 0.75),
                night_value = Vector3(0.098, 0.156, 0.250)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.5, 0.5, 0.5),
                night_value = Vector3(0.196, 0.231, 0.290)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_lcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["election_day_3"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 4.730,
                night_value = 0.01
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.945, 0.811),
                night_value = Vector3(1, 0.945, 0.811)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = -5000,
                night_value = -5000
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.319,
                night_value = 0.15
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = -500000,
                night_value = -500000
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.803, 0.894, 1)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.4,
                night_value = 0.4
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.307, 0.307, 0.307),
                night_value = Vector3(0.307, 0.307, 0.307)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.803, 0.894, 1)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/default/default",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["election_day_3_skip_1"] = "election_day_3",
    ["election_day_3_skip_2"] = "election_day_3",
    ["watchdogs_1"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 4.730,
                night_value = 0.035
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.945, 0.811),
                night_value = Vector3(0.537, 0.544, 0.614)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 806,
                night_value = 5000
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.319,
                night_value = 0.108
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 500000,
                night_value = 241935
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.251, 0.249, 0.246)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.4,
                night_value = 0
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.307, 0.307, 0.307),
                night_value = Vector3(0.267, 0.258, 0.246)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.157, 0.155, 0.153)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["watchdogs_1_night"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 4.730,
                night_value = 0.035
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.945, 0.811),
                night_value = Vector3(0.537, 0.544, 0.614)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 806,
                night_value = 5000
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.319,
                night_value = 0.108
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 500000,
                night_value = 241935
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.251, 0.249, 0.246)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.4,
                night_value = 0
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.307, 0.307, 0.307),
                night_value = Vector3(0.267, 0.258, 0.246)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.157, 0.155, 0.153)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["watchdogs_2"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 4.730,
                night_value = 0.035
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.945, 0.811),
                night_value = Vector3(0.537, 0.544, 0.614)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 806,
                night_value = 5000
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.319,
                night_value = 0.108
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 500000,
                night_value = 241935
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.251, 0.249, 0.246)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.4,
                night_value = 0
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.307, 0.307, 0.307),
                night_value = Vector3(0.267, 0.258, 0.246)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.157, 0.155, 0.153)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["watchdogs_2_day"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 4.730,
                night_value = 0.035
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.945, 0.811),
                night_value = Vector3(0.537, 0.544, 0.614)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 806,
                night_value = 5000
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.319,
                night_value = 0.108
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 500000,
                night_value = 241935
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.251, 0.249, 0.246)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.4,
                night_value = 0
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.307, 0.307, 0.307),
                night_value = Vector3(0.267, 0.258, 0.246)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.157, 0.155, 0.153)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["alex_1"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 3.8,
                night_value = 0.43
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.6, 0.5, 0.5),
                night_value = Vector3(0.537, 0.544, 0.614)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 275,
                night_value = 275
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1.5,
                night_value = 0.465
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 66291,
                night_value = 66291
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.062, 0.067, 0.078),
                night_value = Vector3(0.062, 0.067, 0.078)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.4,
                night_value = 0.86
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.134, 0.136, 0.165),
                night_value = Vector3(0.134, 0.136, 0.165)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.219, 0.254, 0.338)
            },
            ["apply_ambient/ambient_falloff_scale"] = {
                day_value = 0.4,
                night_value = 0.32
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["rat"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 3.8,
                night_value = 0.43
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.6, 0.5, 0.5),
                night_value = Vector3(0.537, 0.544, 0.614)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 275,
                night_value = 275
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1.5,
                night_value = 0.465
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 66291,
                night_value = 66291
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.062, 0.067, 0.078),
                night_value = Vector3(0.062, 0.067, 0.078)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.4,
                night_value = 0.86
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.134, 0.136, 0.165),
                night_value = Vector3(0.134, 0.136, 0.165)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.219, 0.254, 0.338)
            },
            ["apply_ambient/ambient_falloff_scale"] = {
                day_value = 0.4,
                night_value = 0.32
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["alex_2"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 3.8,
                night_value = 0.43
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.6, 0.5, 0.5),
                night_value = Vector3(0.537, 0.544, 0.614)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 275,
                night_value = 275
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 2.5,
                night_value = 0.465
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 66291,
                night_value = 66291
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.062, 0.067, 0.078),
                night_value = Vector3(0.062, 0.067, 0.078)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.1,
                night_value = 0.86
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.134, 0.136, 0.165),
                night_value = Vector3(0.134, 0.136, 0.165)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.219, 0.254, 0.338)
            },
            ["apply_ambient/ambient_falloff_scale"] = {
                day_value = 0.4,
                night_value = 0.32
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["alex_3"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 1.7,
                night_value = 0.209
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.945, 0.811),
                night_value = Vector3(0.537, 0.544, 0.614)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 315,
                night_value = 315
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1,
                night_value = 0.34
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 164042,
                night_value = 164042
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.3, 0.3, 0.34),
                night_value = Vector3(0.183, 0.202, 0.267)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.1,
                night_value = 0.73
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.204, 0.206, 0.251),
                night_value = Vector3(0.204, 0.206, 0.251)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.2, 0.2, 0.2),
                night_value = Vector3(0.137, 0.168, 0.227)
            },
            ["apply_ambient/ambient_falloff_scale"] = {
                day_value = 0.4,
                night_value = 0.10
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["firestarter_1"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2,
                night_value = 0.035
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.945, 0.811),
                night_value = Vector3(0.537, 0.544, 0.614)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 806,
                night_value = 5000
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1.8,
                night_value = 0.4
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 500000,
                night_value = 241935
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.251, 0.249, 0.246)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.4,
                night_value = 0
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.307, 0.307, 0.307),
                night_value = Vector3(0.267, 0.258, 0.246)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.157, 0.155, 0.153)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["firestarter_2"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2,
                night_value = 0.035
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.945, 0.811),
                night_value = Vector3(0.537, 0.544, 0.614)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 806,
                night_value = 5000
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 2.2,
                night_value = 0.2
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 500000,
                night_value = 241935
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.251, 0.249, 0.246)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.4,
                night_value = 0
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.307, 0.307, 0.307),
                night_value = Vector3(0.267, 0.258, 0.246)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.157, 0.155, 0.153)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["nightclub"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 1.5,
                night_value = 0.035
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.945, 0.811),
                night_value = Vector3(0.537, 0.544, 0.614)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 806,
                night_value = 5000
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.3,
                night_value = 0.2
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 500000,
                night_value = 241935
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.251, 0.249, 0.246)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.4,
                night_value = 0
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.307, 0.307, 0.307),
                night_value = Vector3(0.267, 0.258, 0.246)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0.157, 0.155, 0.153)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["escape_cafe"] = {
        variables = {},
        underlays = {},
        start_at_day = false
    },
    ["escape_park"] = {
        variables = {},
        underlays = {},
        start_at_day = false
    },
    ["escape_garage"] = {
        variables = {},
        underlays = {},
        start_at_day = false
    },
    ["escape_overpass_night"] = {
        variables = {},
        underlays = {},
        start_at_day = false
    },
    ["arm_und"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 1.5,
                night_value = 0.259
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.442, 0.567, 0.692),
                night_value = Vector3(0.442, 0.567, 0.692)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1,
                night_value = 0.319
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 4004,
                night_value = 4004
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.423, 0.47, 0.501),
                night_value = Vector3(0.423, 0.47, 0.501)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.4,
                night_value = 0.555
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.149, 0.215, 0.250),
                night_value = Vector3(0.149, 0.215, 0.250)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.376, 0.435, 0.501),
                night_value = Vector3(0.376, 0.435, 0.501)
            }
        },
        underlays = {
            [2] = {
                path = "core/environments/skies/sky_0902_overcast_dark/sky_0902_overcast_dark",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {
                    ["sky/color0_scale"] = {
                        day_value = 1,
                        night_value = 1
                    },
                    ["sky/color0"] = {
                        day_value = Vector3(0.376, 0.435, 0.501),
                        night_value = Vector3(0.376, 0.435, 0.501)
                    },
                    ["sky/color2_scale"] = {
                        day_value = 0.6,
                        night_value = 0.6
                    }
                },
                global_texture = "environments/cubemaps/cubemap_foggy_night"
            }
        },
        start_at_day = false
    },
    ["arm_fac"] = {
        variables = {},
        underlays = {},
        start_at_day = false
    },
    ["big"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 9,
                night_value = 0.01
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.796, 0.549),
                night_value = Vector3(1, 0.796, 0.549)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 806,
                night_value = 806
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.319,
                night_value = 0.08
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 311096,
                night_value = 311096
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(-0.2, -0.2, -0.2)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.646,
                night_value = 0.99
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(1, 0.941, 0.850),
                night_value = Vector3(1, 0.941, 0.850)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.803, 0.894, 1),
                night_value = Vector3(0, 0, 0)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["mia_1"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 4,
                night_value = 0.256
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.349, 0.6, 1),
                night_value = Vector3(0.349, 0.6, 1)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 2,
                night_value = 0.319
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 10815,
                night_value = 14815
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.324, 0.303, 0.401),
                night_value = Vector3(0.324, 0.303, 0.401)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.296,
                night_value = 0.296
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.156, 0.254, 0.349),
                night_value = Vector3(0.156, 0.254, 0.349)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.6, 0.6, 0.6),
                night_value = Vector3(0.259, 0.278, 0.322)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1313_cloudy/sky_1313_cloudy",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["mia_2"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 9.925,
                night_value = 0.1
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.592, 0.301),
                night_value = Vector3(1, 0.592, 0.301)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 111,
                night_value = 111
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.319,
                night_value = 0.1
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 20370,
                night_value = 20370
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.309, 0.141, 0.062),
                night_value = Vector3(0.0309, 0.0141, 0.0062)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.444,
                night_value = 0.6
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.4, 0.384, 0.360),
                night_value = Vector3(0.4, 0.384, 0.360)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.650, 0.752, 0.870),
                night_value = Vector3(0.065, 0.0752, 0.0870)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1224_clear_sky/sky_1224_clear_sky",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["kosugi"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2,
                night_value = 0.326
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.349, 0.513, 0.5),
                night_value = Vector3(0.349, 0.513, 1)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 111,
                night_value = 111
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 2,
                night_value = 0.319
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 51481,
                night_value = 31481
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.317, 0.380, 0.529),
                night_value = Vector3(0.317, 0.380, 0.529)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.296,
                night_value = 0.296
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.156, 0.254, 0.349),
                night_value = Vector3(0.156, 0.254, 0.349)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.45, 0.45, 0.45),
                night_value = Vector3(0.172, 0.215, 0.290)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1224_clear_sky/sky_1224_clear_sky",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["gallery"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2.4,
                night_value = 0.349
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.537, 0.309, 0.121),
                night_value = Vector3(0.537, 0.544, 0.614)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 5000,
                night_value = 5000
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.9,
                night_value = 0.319
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 345878,
                night_value = 345878
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.303, 0.365, 0.511),
                night_value = Vector3(0.242, 0.245, 0.251)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.020,
                night_value = 0.739
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.1, 0.1, 0.1),
                night_value = Vector3(0.116, 0.117, 0.125)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.277, 0.274, 0.338),
                night_value = Vector3(0.132, 0.133, 0.157)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_lcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["hox_1"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 8.083,
                night_value = 0.349
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.541, 0.239),
                night_value = Vector3(0.522, 0.614, 0.611)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 611,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.319,
                night_value = 0.1
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 50000,
                night_value = 18258
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.623, 0.741, 0.8),
                night_value = Vector3(0.059, 0.070, 0.065)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.1,
                night_value = 0.735
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.678, 0.701, 0.631),
                night_value = Vector3(0.393, 0.393, 0.393)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.478, 0.639, 0.8),
                night_value = Vector3(0.05, 0.05, 0.05)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1224_clear_sky/sky_1224_clear_sky",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_hoxton_01"
            },
            [2] = {
                path = "core/environments/skies/sky_0200_night_moon_stars/sky_0200_night_moon_stars",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_hoxton_02"
            }
        },
        start_at_day = true
    },
    ["hox_2"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 4,
                night_value = 0.1
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.913, 0.513, 0.325),
                night_value = Vector3(0.913, 0.513, 0.325)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 49,
                night_value = 49
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.319,
                night_value = 0.05
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 31601,
                night_value = 31601
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.249, 0.283, 0.299),
                night_value = Vector3(0.249, 0.283, 0.299)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.660,
                night_value = 0.99
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.500, 0.544, 0.590),
                night_value = Vector3(0.500, 0.544, 0.590)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.251, 0.225, 0.192),
                night_value = Vector3(0.05, 0.05, 0.05)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1530_low_sun_clouds/sky_1530_low_sun_clouds",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_morning_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_0200_night_moon_stars/sky_0200_night_moon_stars",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_hoxton_02"
            }
        },
        start_at_day = true
    },
    ["pines"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 3.5,
                night_value = 0.469
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.501, 0.478, 0.419),
                night_value = Vector3(0.501, 0.478, 0.419)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 3,
                night_value = 0.319
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 21307,
                night_value = 21307
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.443, 0.519, 0.645),
                night_value = Vector3(0.443, 0.519, 0.645)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.555,
                night_value = 0.555
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.250, 0.250, 0.250),
                night_value = Vector3(0.250, 0.250, 0.250)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.581, 0.608, 0.647),
                night_value = Vector3(0.581, 0.608, 0.647)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1313_cloudy/sky_1313_cloudy",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_electionday_df"
            },
            [2] = {
                path = "core/environments/skies/sky_1313_cloudy_dark/sky_1313_cloudy_dark",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["cage"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2.5,
                night_value = 0.1
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.266, 0.082),
                night_value = Vector3(0.2, 0.266, 0.082)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1.5,
                night_value = 0.1
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 189922,
                night_value = 189922
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.724, 0.360, 0.218),
                night_value = Vector3(0.25, 0.25, 0.25)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.555,
                night_value = 0.99
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.291, 0.350, 0.559),
                night_value = Vector3(0.291, 0.350, 0.559)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.394, 0.357, 0.440),
                night_value = Vector3(0.25, 0.25, 0.25)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_2003_dusk_blue/sky_2003_dusk_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_bank_01"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["hox_3"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 3.5,
                night_value = 0.356
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.5, 0.564, 0.5),
                night_value = Vector3(0.349, 0.564, 1)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 2,
                night_value = 0.349
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 96899,
                night_value = 96899
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.501, 0.69, 1),
                night_value = Vector3(0.501, 0.69, 1)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.555,
                night_value = 0.504
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.176, 0.223, 0.349),
                night_value = Vector3(0.176, 0.223, 0.349)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.180, 0.231, 0.301),
                night_value = Vector3(0.180, 0.231, 0.301)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1224_clear_sky/sky_1224_clear_sky",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_lcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["crojob2"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 3.407,
                night_value = 0.2
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.372, 0.2),
                night_value = Vector3(0.2, 0.2, 0.2)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 2204,
                night_value = 2204
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.5,
                night_value = 0.25
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 77778,
                night_value = 77778
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.760, 0.647, 0.749),
                night_value = Vector3(0.3, 0.3, 0.3)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.555,
                night_value = 0.7
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.791, 0.758, 0.925),
                night_value = Vector3(0.791, 0.758, 0.925)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.498, 0.556, 0.701),
                night_value = Vector3(-0.1, -0.1, -0.1)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_2003_dusk_blue/sky_2003_dusk_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_afternoon_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["crojob3"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 7.147,
                night_value = 0.1
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.541, 0.239),
                night_value = Vector3(0.554, 0.557, 0.645)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 611,
                night_value = 1093
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.319,
                night_value = 0.39
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 50000,
                night_value = 28674
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.623, 0.741, 0.8),
                night_value = Vector3(0.278, 0.231, 0.243)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.2,
                night_value = 0.296
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.678, 0.701, 0.631),
                night_value = Vector3(0.236, 0.288, 0.349)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.478, 0.639, 0.8),
                night_value = Vector3(0.247, 0.239, 0.235)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1224_clear_sky/sky_1224_clear_sky",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["crojob3_night"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 7.147,
                night_value = 0.1
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.541, 0.239),
                night_value = Vector3(0.554, 0.557, 0.645)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 611,
                night_value = 1093
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.319,
                night_value = 0.39
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 50000,
                night_value = 28674
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.623, 0.741, 0.8),
                night_value = Vector3(0.278, 0.231, 0.243)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.2,
                night_value = 0.296
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.678, 0.701, 0.631),
                night_value = Vector3(0.236, 0.288, 0.349)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.478, 0.639, 0.8),
                night_value = Vector3(0.247, 0.239, 0.235)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1224_clear_sky/sky_1224_clear_sky",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["shoutout_raid"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 1.541,
                night_value = 0.1
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.784, 0.866, 0.641),
                night_value = Vector3(0.784, 0.866, 0.641)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.319,
                night_value = 0.1
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 34801,
                night_value = 54801
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.976, 0.976, 0.976),
                night_value = Vector3(0.1, 0.1, 0.1)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.085,
                night_value = 0.99
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.211, 0.278, 0.349),
                night_value = Vector3(0.211, 0.278, 0.349)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.464, 0.526, 0.566),
                night_value = Vector3(-0.01, -0.01, -0.01)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1313_cloudy/sky_1313_cloudy",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {
                    ["sky/color2_scale"] = {
                        day_value = 1,
                        night_value = 0.05
                    }
                },
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["arena"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 1.541,
                night_value = 0
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.850, 0.211, 0),
                night_value = Vector3(0.850, 0.211, 0)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 500
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.319,
                night_value = 0.580
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 11000,
                night_value = 11000
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.698, 0.145, 1),
                night_value = Vector3(0.698, 0.145, 1)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.085,
                night_value = 0.232
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.279, 0.495, 0.901),
                night_value = Vector3(0.279, 0.495, 0.901)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.209, 0.194, 0.472),
                night_value = Vector3(0.209, 0.194, 0.472)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1313_cloudy/sky_1313_cloudy",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_bank_01"
            },
            [2] = {
                path = "core/environments/skies/sky_0200_night_moon_stars/sky_0200_night_moon_stars",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_bank_01"
            }
        },
        start_at_day = false
    },
    ["kenaz"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2.541,
                night_value = 0.108
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.5, 0.5, 0.511),
                night_value = Vector3(0.214, 0.339, 0.511)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 950,
                night_value = 950
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 5.105,
                night_value = 5.105
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 208853,
                night_value = 78853
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.5, 0.5, 0.5),
                night_value = Vector3(0.074, 0.110, 0.212)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.2,
                night_value = 2.125
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.015, 0.015, 0.015),
                night_value = Vector3(0.015, 0.015, 0.015)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.5, 0.5, 0.5),
                night_value = Vector3(0.016, 0.018, 0.031)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_bank_01"
            },
            [2] = {
                path = "core/environments/skies/sky_0200_night_moon_stars/sky_0200_night_moon_stars",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_bank_01"
            }
        },
        start_at_day = false
    },
    ["jolly"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 1.31,
                night_value = 0.05
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.560, 0.250),
                night_value = Vector3(0.25, 0.25, 0.25)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 1000
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1.189,
                night_value = 0.03
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 40698,
                night_value = 40698
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.8, 0.431, 0.247),
                night_value = Vector3(0.05, 0.05, 0.05)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.194,
                night_value = 0.7
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.019, 0.094, 0.2),
                night_value = Vector3(0.8, 0.431, 0.247)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.576, 0.588, 0.560),
                night_value = Vector3(0.02, 0.02, 0.02)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_0902_overcast/sky_0902_overcast",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "units/payday2/cubemaps/cubemap_holly_2"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "units/payday2/cubemaps/cubemap_holly_2"
            }
        },
        start_at_day = true
    },
    ["red2"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 8.449,
                night_value = 0.1
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.549, 0.250),
                night_value = Vector3(0.25, 0.25, 0.25)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.2,
                night_value = 0.02
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 118217,
                night_value = 48217
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.685, 0.676, 0.658),
                night_value = Vector3(0.2, 0.2, 0.2)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0,
                night_value = 0.7
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.686, 0.952, 1),
                night_value = Vector3(0.686, 0.952, 1)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.694, 0.780, 0.8),
                night_value = Vector3(0.02, 0.02, 0.02)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1224_clear_sky/sky_1224_clear_sky",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cube_red_01"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cube_red_01"
            }
        },
        start_at_day = true
    },
    ["dinner"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 0.370,
                night_value = 0.05
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.780, 0.588),
                night_value = Vector3(1, 0.780, 0.588)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.2,
                night_value = 0.05
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 81395,
                night_value = 41395
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.694, 0.701, 0.694),
                night_value = Vector3(0.1, 0.1, 0.1)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.465,
                night_value = 0.7
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.803, 1, 0.956),
                night_value = Vector3(0.803, 1, 0.956)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.615, 0.701, 0.666),
                night_value = Vector3(0, 0, 0)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_0902_overcast/sky_0902_overcast",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_slaughter_01"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_slaughter_01"
            }
        },
        start_at_day = true
    },
    ["roberts"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2.536,
                night_value = 0.01
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.901, 0.8),
                night_value = Vector3(1, 0.901, 0.8)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 204,
                night_value = 204
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.319,
                night_value = 0.07
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 500000,
                night_value = 500000
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.835, 0.941, 1),
                night_value = Vector3(0.1, 0.1, 0.1)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.037,
                night_value = 0.7
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.6, 0.541, 0.541),
                night_value = Vector3(0.6, 0.541, 0.541)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.519, 0.605, 0.692),
                night_value = Vector3(0, 0, 0)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1224_clear_sky/sky_1224_clear_sky",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_csgo_de_bank_ext"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["nail"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2,
                night_value = 1
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.06, 0.07, 0.07),
                night_value = Vector3(0.06, 0.07, 0.07)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1,
                night_value = 0.09
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 116197,
                night_value = 116197
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.183, 0.241, 0.283),
                night_value = Vector3(0.183, 0.241, 0.283)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.037,
                night_value = 0.6
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.6, 0.541, 0.541),
                night_value = Vector3(0.6, 0.541, 0.541)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.178, 0.281, 0.37),
                night_value = Vector3(0.178, 0.281, 0.37)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_csgo_de_bank_cs15_daylight02/sky_csgo_de_bank_cs15_daylight02",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_bank_01"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_bank_01"
            }
        },
        start_at_day = true
    },
    ["pbr"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2,
                night_value = 0.165
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.8, 0.53, 0.5),
                night_value = Vector3(0.2, 0.53, 1)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 1744,
                night_value = 1744
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1,
                night_value = 0.249
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 73643,
                night_value = 73643
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.28, 0.43, 0.6),
                night_value = Vector3(0.28, 0.43, 0.6)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.037,
                night_value = 0
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.13, 0.18, 0.3),
                night_value = Vector3(0.13, 0.18, 0.3)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.05, 0.12, 0.2),
                night_value = Vector3(0.05, 0.12, 0.2)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_bank_01"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["pbr2"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 1,
                night_value = 0.05
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.44, 0.44, 0.44),
                night_value = Vector3(0.44, 0.44, 0.44)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.15,
                night_value = 0.05
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 50000,
                night_value = 50000
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.78, 0.85, 1),
                night_value = Vector3(0.18, 0.15, 0.15)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.4,
                night_value = 0
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.8, 0.8, 0.8),
                night_value = Vector3(0.8, 0.8, 0.8)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.35, 0.39, 0.45),
                night_value = Vector3(0.05, 0.05, 0.05)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1008_cloudy/sky_1008_cloudy",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_bank_01"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["cane"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 1.8,
                night_value = 0.05
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.44, 0.44, 0.44),
                night_value = Vector3(0.44, 0.44, 0.44)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.72,
                night_value = 0.05
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 50000,
                night_value = 50000
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.78, 0.85, 1),
                night_value = Vector3(0.18, 0.15, 0.15)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.4,
                night_value = 0
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.8, 0.8, 0.8),
                night_value = Vector3(0.8, 0.8, 0.8)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.35, 0.39, 0.45),
                night_value = Vector3(0.05, 0.05, 0.05)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1008_cloudy/sky_1008_cloudy",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_bank_01"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["peta"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 5.2690000534058,
                night_value = 0.05
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.82352948188782, 0.68627452850342),
                night_value = Vector3(0.44, 0.44, 0.44)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.60900002717972,
                night_value = 0.05
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 50000,
                night_value = 50000
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.78, 0.85, 1),
                night_value = Vector3(0.18, 0.15, 0.15)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.4,
                night_value = 0
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.85826772451401, 0.78422117233276, 0.78422117233276),
                night_value = Vector3(0.8, 0.8, 0.8)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.35, 0.39, 0.45),
                night_value = Vector3(0.05, 0.05, 0.05)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1224_clear_sky/sky_1224_clear_sky",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["peta2"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 6.6119999885559,
                night_value = 0.05
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.36078432202339, 0.14901961386204),
                night_value = Vector3(0.44, 0.44, 0.44)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.92199999094009,
                night_value = 0.05
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 50000,
                night_value = 50000
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.78, 0.85, 1),
                night_value = Vector3(0.18, 0.15, 0.15)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.22352941334248, 0.29803922772408, 0.45098039507866),
                night_value = Vector3(0.8, 0.8, 0.8)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.35, 0.39, 0.45),
                night_value = Vector3(0.05, 0.05, 0.05)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1931_low_sun/sky_1931_low_sun",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_outdoor_peta_2",
                global_world_overlay_texture = "environments/world_textures/peta/pta_terrain_overlay_df",
                global_world_overlay_mask_texture = "environments/world_textures/peta/pta_terrain_weight_df"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["dark"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2,
                night_value = 0.165
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.8, 0.53, 0.5),
                night_value = Vector3(0.2, 0.53, 1)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 1744,
                night_value = 1744
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1,
                night_value = 0.249
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 73643,
                night_value = 73643
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.28, 0.43, 0.6),
                night_value = Vector3(0.28, 0.43, 0.6)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.037,
                night_value = 0.45
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.13, 0.18, 0.3),
                night_value = Vector3(0.13, 0.18, 0.3)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.05, 0.12, 0.2),
                night_value = Vector3(0.05, 0.12, 0.2)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_bank_01"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["mad"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 1.2189999818802,
                night_value = 0.05
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.61960786581039, 0.46666666865349, 0.3098039329052),
                night_value = Vector3(0.44, 0.44, 0.44)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.32,
                night_value = 0.05
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 50000,
                night_value = 50000
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.78, 0.85, 1),
                night_value = Vector3(0.18, 0.15, 0.15)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.65,
                night_value = 0
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.8, 0.8, 0.8),
                night_value = Vector3(0.8, 0.8, 0.8)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.35, 0.39, 0.45),
                night_value = Vector3(0.05, 0.05, 0.05)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_2000_twilight_mad/sky_2000_twilight_mad",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_mad_forest"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["pal"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2.19,
                night_value = 0.05
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.71, 0.69, 0.58),
                night_value = Vector3(0.44, 0.44, 0.44)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.32,
                night_value = 0.05
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 50000,
                night_value = 50000
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.78, 0.85, 1),
                night_value = Vector3(0.18, 0.15, 0.15)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.65,
                night_value = 0
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.8, 0.8, 0.8),
                night_value = Vector3(0.8, 0.8, 0.8)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.35, 0.39, 0.45),
                night_value = Vector3(0.05, 0.05, 0.05)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1224_clear_sky/sky_1224_clear_sky",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {
                    ["sky/color0_scale"] = {
                        day_value = 0.47900000214577,
                        night_value = -0.5
                    },
                    ["sky/color0"] = {
                        day_value = Vector3(0.77647066116333, 0.75686281919479, 1),
                        night_value = Vector3(1, 1, 1)
                    },
                    ["sky/color2_scale"] = {
                        day_value = 1.2669999599457,
                        night_value = 0.05
                    }
                },
                global_texture = "environments/cubemaps/cubemap_suburbia_01"
            }
        },
        start_at_day = true
    },
    ["man"] = {
        start_at_day = true
    },
    ["born"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2,
                night_value = 0.165
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.8, 0.53, 0.5),
                night_value = Vector3(0.2, 0.53, 1)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 1744,
                night_value = 1744
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1,
                night_value = 0.249
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 73643,
                night_value = 73643
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.28, 0.43, 0.6),
                night_value = Vector3(0.28, 0.43, 0.6)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.037,
                night_value = 0.45
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.13, 0.18, 0.3),
                night_value = Vector3(0.13, 0.18, 0.3)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.05, 0.12, 0.2),
                night_value = Vector3(0.05, 0.12, 0.2)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1530_low_sun_clouds/sky_1530_low_sun_clouds",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_evening_lcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["chew"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2,
                night_value = 0.165
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.8, 0.53, 0.5),
                night_value = Vector3(0.2, 0.53, 1)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 1744,
                night_value = 1744
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1,
                night_value = 0.249
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 73643,
                night_value = 73643
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.28, 0.43, 0.6),
                night_value = Vector3(0.28, 0.43, 0.6)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.037,
                night_value = 0.45
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.13, 0.18, 0.3),
                night_value = Vector3(0.13, 0.18, 0.3)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.05, 0.12, 0.2),
                night_value = Vector3(0.05, 0.12, 0.2)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1945_sunset_clouds/sky_1945_sunset_clouds",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_evening_lcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["friend"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2,
                night_value = 0.165
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.8, 0.53, 0.5),
                night_value = Vector3(0.2, 0.53, 1)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 1744,
                night_value = 1744
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1,
                night_value = 0.249
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 73643,
                night_value = 73643
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.28, 0.43, 0.6),
                night_value = Vector3(0.28, 0.43, 0.6)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.037,
                night_value = 0.45
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.13, 0.18, 0.3),
                night_value = Vector3(0.13, 0.18, 0.3)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.05, 0.12, 0.2),
                night_value = Vector3(0.05, 0.12, 0.2)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_v2_030_sun_low/sky_v2_030_sun_low",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_evening_lcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["flat"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2,
                night_value = 0.165
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.8, 0.53, 0.5),
                night_value = Vector3(0.2, 0.53, 1)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 1744,
                night_value = 1744
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1,
                night_value = 0.249
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 73643,
                night_value = 73643
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.28, 0.43, 0.6),
                night_value = Vector3(0.28, 0.43, 0.6)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.037,
                night_value = 0.45
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.13, 0.18, 0.3),
                night_value = Vector3(0.13, 0.18, 0.3)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.05, 0.12, 0.2),
                night_value = Vector3(0.05, 0.12, 0.2)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1224_clear_sky/sky_1224_clear_sky",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_hoxton_01"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = true
    },
    ["help"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2,
                night_value = 0.165
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.8, 0.53, 0.5),
                night_value = Vector3(0.2, 0.53, 1)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 1744,
                night_value = 1744
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1,
                night_value = 0.249
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 73643,
                night_value = 73643
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.28, 0.43, 0.6),
                night_value = Vector3(0.28, 0.43, 0.6)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.037,
                night_value = 0.45
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.13, 0.18, 0.3),
                night_value = Vector3(0.13, 0.18, 0.3)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.05, 0.12, 0.2),
                night_value = Vector3(0.05, 0.12, 0.2)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_v2_030_sun_low/sky_v2_030_sun_low",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_evening_lcm"
            },
            [2] = {
                path = "core/environments/skies/sky_0200_night_moon_stars/sky_0200_night_moon_stars",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["moon"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2,
                night_value = 0.165
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.8, 0.53, 0.5),
                night_value = Vector3(0.2, 0.53, 1)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 1744,
                night_value = 1744
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1,
                night_value = 0.249
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 73643,
                night_value = 73643
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.28, 0.43, 0.6),
                night_value = Vector3(0.28, 0.43, 0.6)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.037,
                night_value = 0.45
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.13, 0.18, 0.3),
                night_value = Vector3(0.13, 0.18, 0.3)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.05, 0.12, 0.2),
                night_value = Vector3(0.05, 0.12, 0.2)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_v2_030_sun_low/sky_v2_030_sun_low",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_evening_lcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_night_lcm"
            }
        },
        start_at_day = false
    },
    ["spa"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2,
                night_value = 0.165
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.8, 0.53, 0.5),
                night_value = Vector3(0.2, 0.53, 1)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 1744,
                night_value = 1744
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 1,
                night_value = 0.249
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 73643,
                night_value = 73643
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.28, 0.43, 0.6),
                night_value = Vector3(0.28, 0.43, 0.6)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.037,
                night_value = 0.45
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.13, 0.18, 0.3),
                night_value = Vector3(0.13, 0.18, 0.3)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.05, 0.12, 0.2),
                night_value = Vector3(0.05, 0.12, 0.2)
            }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_v2_030_sun_low/sky_v2_030_sun_low",
                day_start_time = 3,
                day_length = 18,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/cubemap_evening_lcm"
            },
            [2] = {
                path = "core/environments/skies/sky_2335_night_moon/sky_2335_night_moon",
                night_start_time = 21,
                night_length = 6,
                variable_overwrite = {},
                global_texture = "environments/cubemaps/jry_cubemaps/cubemap_airplane"
            }
        },
        start_at_day = false
    },
    ["fish"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2.19,
                night_value = 0.10800000280142
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(0.71, 0.69, 0.58),
                night_value = Vector3(0.53021466732025, 0.53734761476517, 0.60629922151566)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.32,
                night_value = 0.60000002384186
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 50000,
                night_value = 25000
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.78, 0.85, 1),
                night_value = Vector3(0.18057742714882, 0.13753281533718, 0.26771652698517)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.65,
                night_value = 0
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.8, 0.8, 0.8),
                night_value = Vector3(0.27559053897858, 0.094025008380413, 0.094025008380413)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.35, 0.39, 0.45),
                night_value = Vector3(0.05, 0.05, 0.05)
            }
        },
        underlays = {},
        start_at_day = false
    },
    ["run"] = {
        variables = {
            ["others/sun_ray_color_scale"] = {
                day_value = 2.194,
                night_value = 0.05
            },
            ["others/sun_ray_color"] = {
                day_value = Vector3(1, 0.5921569, 0.3019608),
                night_value = Vector3(0.44, 0.44, 0.44)
            },
            ["apply_ambient/fog_min_range"] = {
                day_value = 0,
                night_value = 0
            },
            ["apply_ambient/ambient_color_scale"] = {
                day_value = 0.324,
                night_value = 0.05
            },
            ["apply_ambient/fog_max_range"] = {
                day_value = 90741,
                night_value = 50000
            },
            ["apply_ambient/fog_start_color"] = {
                day_value = Vector3(0.78, 0.85, 1),
                night_value = Vector3(0.18, 0.15, 0.15)
            },
            ["apply_ambient/ambient_scale"] = {
                day_value = 0.647,
                night_value = 0
            },
            ["apply_ambient/ambient_color"] = {
                day_value = Vector3(0.16643508, 0.2193917, 0.27559054),
                night_value = Vector3(0.8, 0.8, 0.8)
            },
            ["apply_ambient/fog_far_low_color"] = {
                day_value = Vector3(0.35, 0.39, 0.45),
                night_value = Vector3(0.05, 0.05, 0.05)
            }
            --,
            -- ["apply_ambient/bloom_threshold"] = {
            -- 	day_value = 0.421,
            -- 	night_value = 0
            -- },
            -- ["bloom_lense/bloom_intensity"] = {
            -- 	day_value = 0.753,
            -- 	night_value = 0
            -- },
            -- ["bloom_lense/lense_intensity"] = {
            -- 	day_value = 0.308,
            -- 	night_value = 0
            -- },
            -- ["bloom_lense/bloom_blur_size"] = {
            -- 	day_value = 1,
            -- 	night_value = 0
            -- }
        },
        underlays = {
            [1] = {
                path = "core/environments/skies/sky_1224_clear_sky/sky_1224_clear_sky",
                day_start_time = 8,
                day_length = 18,
                variable_overwrite = {
                    ["sky/color0_scale"] = {
                        day_value = 0.47900000214577,
                        night_value = -0.5
                    },
                    ["sky/color0"] = {
                        day_value = Vector3(0.77647066116333, 0.75686281919479, 1),
                        night_value = Vector3(1, 1, 1)
                    },
                    ["sky/color2_scale"] = {
                        day_value = 1.2669999599457,
                        night_value = 0.05
                    }
                },
                global_texture = "environments/cubemaps/cubemap_midday_hcm"
            }
        },
        start_at_day = true
    },
    ["glace"] = {
        start_at_day = false
    },
    ["mex"] = {
        start_at_day = false
    }
}

ToDReborn.Underlays = {
    [1] = {
        path = "core/environments/skies/sky_cloudy_blue/sky_cloudy_blue",
        day_start_time = 3,
        day_length = 18,
        variable_overwrite = {
            ["sky/color0_scale"] = {
                day_value = 0.5,
                night_value = -0.5
            },
            ["sky/color0"] = {
                day_value = Vector3(1, 1, 1),
                night_value = Vector3(1, 1, 1)
            },
            ["sky/color2_scale"] = {
                day_value = 0.25,
                night_value = 0.05
            }
        },
        global_texture = "environments/cubemaps/cubemap_midday_hcm"
    },
    [2] = {
        path = "core/environments/skies/sky_2100_moon/sky_2100_moon",
        night_start_time = 21,
        night_length = 6,
        variable_overwrite = {
            ["sky/color2_scale"] = {
                day_value = 0.95,
                night_value = 0.04
            },
            ["sky/color0"] = {
                day_value = Vector3(1, 1, 1),
                night_value = Vector3(1, 1, 1)
            },
            ["sky/color0_scale"] = {
                day_value = 0.40,
                night_value = 0.01
            }
        },
        global_texture = "environments/cubemaps/cubemap_night_lcm"
    },
    ["default"] = {path = "core/environments/skies/default/default"}
}
