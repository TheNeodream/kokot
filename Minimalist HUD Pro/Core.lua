MHP.settings = {
	interpolate_score = true,
	interp_duration = 2,
	hit_indicator_duration = 2
}

MHP._update_intervals = {
	dodge = 0.1,
	dodge_t = math.random(),
	crit = 0.1,
	crit_t = math.random(),
	resist = 0.1,
	resist_t = math.random(),
	weapon = 0.1,
	weapon_t = math.random(),
	money = 1,
	money_t = math.random(),
	katamari_t = 0,
	katamari = 1/30,
	doomface = 0.5,
	doomface_t = math.random()
}

MHP.info = { --why is this defined twice? we may never know. also don't use this, use the one in menumanager
	health_current = 1,
	health_total = 1,
	current_clip = 0,
	max_clip = 1,
	
	crit = 0,
	dodge = 0,
	resist = 0,
	hit = 0,
	stamina = 0,
	damage = 0,
	weapon_name = "Sectoid Plasma Pistol",
	
	valor = 1,
	valor_rank_id = -1,
	is_animating_d2 = false,
	
	hlm_combos = {
		count = 0,
		end_t = 0,
		last_pos = Vector3()
	},
	
	shooting_t = nil,
	
--	stored_health = 0,
	
	money = 0,
	money_interp = 0,
	money_interp_start = 0,
	money_interp_t = 0,
	
	xp = 0,
	xp_interp = 0,
	xp_interp_start = 0,
	xp_interp_t = 0,
	
	score = 0,
	score_interp = 0,
	score_interp_t = 0,
	score_interp_duration = 2,

	hit_indicators = {},
	doom_hit_angle = "center",
	current_katamari = 0
}

MHP._animate_targets = {}

MHP._huds = {
	hotline_miami = {
		panel = nil,
		scale = 2,
		BOX_W = 128,
		BOX_H = 25,
		rot_speed = 256,
		FONT_SIZE = 16,
		COMBO_FONT_SIZE = 56,
		combo_rot_speed = 512,
		combo_rot_distance = 2,
		combo_time = 2,
		min_combo = 3,
		combo_string = "$COMBOx combo",
		combo_macro = "$COMBO",
		combo_anim_height = -100
	},
	vats = {
		panel = nil,
		BAR_X = 4,
		bodies = {
--			"Hips",
			"Spine",
--			"Spine1",
--			"Spine2",
--			"Neck",
			"Head",
--			"LeftShoulder",
			"LeftArm",
--			"LeftForeArm",
--			"RightShoulder",
			"RightArm",
--			"RightForeArm",
--			"LeftUpLeg",
			"LeftLeg",
--			"LeftFoot",
--			"RightUpLeg",
			"RightLeg",
--			"RightFoot"
		}
	},
	minecraft = {
		panel = nil,
		HEALTH_TICKS = 10,
		ARMOR_TICKS = 10,
		HUNGER_TICKS = 10,
		HOTBAR_SLOTS = 9,
		DEFAULT_SIZE = 36,
		SCALE = 0.5,
		atlas_name = "textures/minecraft_atlas",
		get_rect = function(kiddo) --get it? get "rect"? like "rekt", but- hey wait where are you going
			local item = (type(kiddo) == "table" and kiddo) or MHP._huds.minecraft.atlas[tostring(kiddo)]
			local size = MHP._huds.minecraft.DEFAULT_SIZE
			local size = MHP._huds.minecraft.DEFAULT_SIZE
			if item then 
				local x,y = unpack(item)
				return {size * x, size * y, size, size}
			end
			return {0,0,size,size}
		end,
		atlas = {
			health_empty_black = {0,0},
			health_empty_white = {1,0},
			health_empty_red = {2,0},
			health_heart_full = {3,0},
			health_heart_half = {4,0},
			health_transparent_full = {5,0},
			health_transparent_half = {6,0},
			armor_empty = {0,1},
			armor_half = {1,1},
			armor_full = {2,1},
			hunger_empty_black = {0,2},
			hunger_empty_white = {1,2},
			hunger_empty_red = {2,2},
			hunger_heart_full = {3,2},
			hunger_heart_half = {4,2},
			hunger_transparent_full = {5,2},
			hunger_transparent_half = {6,2}
		}
	},
	tf2 = {
		HEALTH_SCALE = 0.75,
		HEALTH_BITMAP_W = 128,
		HEALTH_BITMAP_H = 128,
		AMMO_TEXT_X = 118,
		HEALTH_LOW_THRESHOLD = 1/2,
		AMMO_LOW_THRESHOLD = 1/5,
		AMMO_GHOST_ALPHA = 0.3,
		AMMO_GHOST_SIZE_MUL = 1.1,
		panel = nil
	},
	hl2 = {
		panel = nil
	},
	lego = {
		panel = nil,
		SIZE = 96,
		atlas_name = "textures/lego_characters_atlas"
	},
	pogo = {
		panel = nil,
		SIZE = 128,
		SCALE = 0.5,
		get_rect = function(name)
			local item = (type(name) == "table" and name) or MHP._huds.pogo.atlas[tostring(name)]
			local size = MHP._huds.pogo.SIZE
			if item then 
				local x,y = unpack(item)
				return {size * x, size * y, size, size}
			end
			return {0,0,size,size}
		end,
		atlas = {
			dex = {0,0},
			shop = {1,0},
			bag = {0,1},
			camera = {1,1},
			run = {0,2},
			ar = {1,2}
		},
		atlas_name = "textures/pogo_icons_atlas"
	},
	xcom = {
		panel = nil,
		BOX_W = 440,
		BOX_H = 116,
		SCALE = 1,
		VER_OFFSET = 128,
		action_name_string = "Fire ($WEAPON_NAME)",
		action_desc_string = "Does up to $DAMAGE damage.",
		hit_chance_string = "$CHANCE% to hit",
		crit_chance_string = "$CHANCE% critical"		
	},
	portal = {
		panel = nil,
		SCALE = 0.25,
		CROSSHAIR_H = 200,
		CROSSHAIR_W = 128
	},
	gta = {
		panel = nil,
		military_time = true,
		show_ampm = false,
		cash_digits = 8,
		font_size = 32
	},
	stardew = {
		get_season_icon = function(season_name)
			local data = MHP._huds.stardew
			local place = data.seasons[season_name] - 1
			local w = data.season_w
			local h = data.season_h
			return {0,place * h,w,h}
		end,
		get_weather_icon = function(weather_name)
			local data = MHP._huds.stardew
			local place = data.weather[weather_name] - 1
			local w = data.weather_w
			local h = data.weather_h
			return {0,place * h,w,h}	
		end,
		seasons = { --just some enums
			Spring = 1,
			Summer = 2,
			Fall = 3,
			Winter = 4
		},
		weather = {
			sun = 1,
			rain = 2,
			storm = 3,
			snow = 4,
			wind_fall = 5,
			wind_spring = 6,
			festival = 7,
			wedding = 8
		},
		weather_ids = {
			["Thunderstorm"] = "storm",
			["Drizzle"] = "rain",
			["Rain"] = "rain",
			["Snow"] = "snow",
			["Atmosphere"] = "wedding", --stardew does not have an icon for "disastrous weather, do not leave your house under any circumstances"
			["Clear"] = "sun",
			["Clouds"] = "wind"
		},
		atlas_name = "textures/stardew_atlas", --not used
		weather_atlas_name = "textures/stardew_weather",
		seasons_atlas_name = "textures/stardew_seasons",
		
		season_w = 24, --rect only
		season_h = 16,
		weather_w = 24,
		weather_h = 16,
		
		scale = 1,
		cash_digits = 8,
		clock_font_size = 20,
		money_font_size = 28,
		bar_font_size = 16,
		bar_low_threshold = 0.5,
		bar_empty_threshold = 0.25,
		bar_shake_speed = 10000,
		bar_shake_intensity_ver = 2,
		bar_shake_intensity_hor = 2,
		max_shake_money = 100000,
		STARDEW_HUD_X = -160,
		STARDEW_HUD_Y = 16,
		STARDEW_HUD_W = 156,
		STARDEW_HUD_H = 156,
		STARDEW_VITALS_W = 24,
		STARDEW_VITALS_H = 136,
		STARDEW_VITALS_X = -16,
		STARDEW_VITALS_Y = 420,
		STARDEW_CLOCK_HAND_X = 40,
		STARDEW_CLOCK_HAND_Y = 10,
		STARDEW_SEASON_W = 24,
		STARDEW_SEASON_H = 16,
		STARDEW_SEASON_X = 111,
		STARDEW_SEASON_Y = 38,
		STARDEW_WEATHER_W = 24,
		STARDEW_WEATHER_H = 16,
		STARDEW_WEATHER_X = 63,
		STARDEW_WEATHER_Y = 38,
		STARDEW_DATE_X = 22,
		STARDEW_DATE_Y = 16,
		STARDEW_CLOCK_X = 22,
		STARDEW_CLOCK_Y = 61,
		STARDEW_MONEY_X = 26,
		STARDEW_MONEY_Y = 94,
		STARDEW_MONEY_SPACER = 12,
		STARDEW_BAR_W = 16,
		STARDEW_BAR_H = 16,
		show_ampm = true,
		military_time = false,
		STARDEW_BAR_X = 6,
		STARDEW_BAR_Y = 26,
		STARDEW_BAR_W = 12,
		STARDEW_BAR_H = 106,
		panel = nil
	},
	katamari = {
		panel = nil,
		atlas_name = "textures/katamari_atlas",
		idle_frames = 24,
		active_frames = 14,
		rect_h = 350,
		rect_w = 300,
		prince_scale = 0.5
	},
	doom = {
		panel = nil,
		portrait_size = 64,
		get_rect = function(name,hurt_level)
			local size = MHP._huds.doom.portrait_size
			local x = 0
			local y = 0
			name = tostring(name)
			if MHP._huds.doom.atlas[name] then 
				x,y = unpack(MHP._huds.doom.atlas[name])
				return {x * size,y * size,size,size}
			elseif MHP._huds.doom.atlas.expressions[name] then
				x = MHP._huds.doom.atlas.expressions[name]
				hurt_level = tonumber(hurt_level) or math.round(4 * (1 - (MHP.info.health_current / MHP.info.health_total)))
				return {x * size,hurt_level * size,size,size}
			end
			return {0,0,size,size}
		end,
		atlas = {
			expressions = {
				EVL = 0, -- grin
				KILL = 1, --grit
				OUCH = 2, --shock
				TR = 3, --look right
				ST = 4, --look forward
				TL = 5, --look left
				KILL_TL = 6, --grit look left
				KILL_TR = 7 --grit look right
			},
			DEAD = {0,5},
			GOD = {1,5}
		},
		DAMAGE_TIERS = 4, --5, technically, except we count from 0
		ver_offset = 16,
		font_size = 56,
		font_y = 24,
		health_low_threshold = 0.5,
		atlas_name = "textures/doom_portrait_atlas"
	},
	skyrim = {
		panel = nil
	},
	boi = {
		panel = nil,
		atlas_name = "textures/boi_atlas",
		hud_scale = 0.5,
		max_hearts = 8,
		hearts_x = 570,
		hearts_y = 24,
		max_per_row = 4,
		heart_size = 32,
		text_x = 172,
		coins_y = 8,
		bombs_y = 19,
		keys_y = 30,
		font_size = 12
	},
	destiny = {
		panel = nil,
		RANKUP_HEIGHT = 200,
		ROTATOR_SIZE_MUL = 1.25,
		ORANGE_W = 1280,
		ORANGE_H = 200,
		STRIPE_H = 500,
		STRIPE_ANGLE = 60,
		EMBLEM_W = 320,
		EMBLEM_H = 320,
		BLUE_STRIPE_H = 10,
		stripe_texture = "textures/destiny_stripe",
		orange_stripe_texture = "textures/destiny_orange_stripe",
		STRIPE_S_SCALE = 0.5,
		STRIPE_M_SCALE = 0.66,
		STRIPE_L_SCALE = 1,
		STRIPE_XL_SCALE = 1.5,
		STRIPE_ALPHA = 0.8,
		FONTSIZE_RANKUP_TITLE = 36,
		FONTSIZE_SEASON_TITLE = 22,
		FONTSIZE_RANK_TITLE = 22,
		RANKUP_INFOBOX_ALPHA = 0.9,
		RANKUP_INFOBOX_DIV_ALPHA = 0.8,
		RANKUP_INFOBOX_DIV_H = 2,
		RANKUP_INFOBOX_DIV_W = 100,
		RANKUP_INFOBOX_W = 300,
		RANKUP_INFOBOX_X = 50,
		RANK_KERN = 24,
		RANKUP_TITLE_W = 340,
		RANKUP_TITLE_H = 64,
		RANK_TITLE_BG_ALPHA = 0.5,
		frame_square_texture = "textures/destiny_frame_square",
		frame_diamond_texture = "textures/destiny_frame_diamond",
		FRAME_ALPHA = 0.25,
		FRAME_DIAMOND_W = 300,
		FRAME_DIAMOND_H = 300,
		FRAME_SQUARE_W = 224,
		FRAME_SQUARE_H = 224,
		skybox_texture = "textures/destiny_rankup_bg",
		crucible_texture = "textures/destiny_crucible",
		rotator_texture_1 = "textures/destiny_rotator_1",
		rotator_texture_2 = "textures/destiny_rotator_2",
		rotator_texture_3 = "textures/destiny_rotator_2",
		ranks_atlas = "textures/destiny_ranks",
		RANKS_SIZE = 180,
		RANK_ICON_W = 180,
		RANK_ICON_H = 180,
		ROTATOR_SIZE_1 = 1280,
		ROTATOR_SIZE_2 = 600,
		ROTATOR_SIZE_3 = 400,
		ROTATOR_ALPHA_1 = 0.3,
		ROTATOR_ALPHA_2 = 0.4,
		ROTATOR_ALPHA_3 = 0.5,
		ROTATOR_SPEED_1 = 0.7,
		ROTATOR_SPEED_2 = 1,
		ROTATOR_SPEED_3 = 2,
		get_rank = function(valor)
			local max_rank = 0
			local all_ranks = {
				[0] = {
					name = "Guardian I",
					icon = 1,
					id = 1
				},
				[10] = {name="Guardian II",icon=1,id=2},
				[25] = {name="Guardian III",icon=1,id=3},
				[50] = {name="Brave I",icon=1,id=4},
				[110] = {name="Brave II",icon=1,id=5},
				[215] = {name="Brave III",icon=1,id=6},
				[350] = {name="Heroic I",icon=2,id=7},
				[420] = {name="Heroic II",icon=2,id=8},
				[550] = {name="Heroic III",icon=2,id=9},
				[700] = {name="Fabled I",icon=3,id=10},
				[790] = {name="Fabled II",icon=3,id=11},
				[940] = {name="Fabled III",icon=3,id=12},
				[1150] = {name="Mythic I",icon=4,id=13},
				[1280] = {name="Mythic II",icon=4,id=14},
				[1510] = {name="Mythic III",icon=4,id=15},
				[1800] = {name="Legend",icon=5,id=16},
				[2000] = {name="Max Valor Rank",icon=5,id=27}
			}
			for valor_threshold,rank_data in pairs(all_ranks) do 
				if valor_threshold <= valor then 
					if valor_threshold > max_rank then 
						max_rank = valor_threshold
					end
				end
			end
			
			--[[
			
			Guardian I	0 - 9	10
			Guardian II	10 - 24	15
			Guardian III25 - 49	25
			Brave I		50 - 109	60
			Brave II	110 - 214	105
			Brave III	215 - 349	135
			Heroic I	350 - 419	70
			Heroic II	420 - 549	130
			Heroic III	550 - 699	150
			Fabled I	700 - 789	90
			Fabled II	790 - 939	150
			Fabled III	940 - 1149	210
			Mythic I	1150 - 1279	130
			Mythic II	1280 - 1509	230
			Mythic III	1510 - 1799	290
			Legend	1800 - 2000	200
			
			--]]
			
			return all_ranks[max_rank] or all_ranks[0]
		end,
		get_rect = function(rank) --rank must be 1-5
			local size = MHP._huds.destiny.RANKS_SIZE
			return {0 * size,(rank - 1) * size,size,size}
		end
	},
	rocketleague = {
		panel = nil,
		PANEL_W = 440,
		PANEL_H = 440,
		BOOST_LABEL_SHADOW_OFFSET = 4,
		BOOST_LABEL_ANGLE = 2.5,
		boost_1_texture = "textures/rocketleague_boost_static",
		boost_2_texture = "textures/rocketleague_boost_radial",
		SCALE = 0.5,
		BOOST_1_X = -16,
		BOOST_1_Y = 18,
		BOOST_X = -200,
		BOOST_Y = -200,
		BOOST_ANGLE = 45,
		BOOST_FONT_SIZE = 64,
		BOOST_LABEL_X = -2,
		BOOST_LABEL_Y = 2,
		BOOST_RANGE = 5/8	
	},
	ftl = {
		panel = nil,
		health_threshold_low = 2/3,
		health_threshold_empty = 0.25,
		name_max_len = 7,
		races = {
			human = {
				row = 1,
				variations = 6
			},
			zoltan = {
				row = 2,
				variations = 5
			},
			engi = {
				row = 3,
				variations = 1
			},
			rock = {
				row = 4,
				variations = 3
			},
			mantis = {
				row = 5,
				variations = 5
			},
			crystal = {
				row = 6,
				variations = 4
			},
			lanius = {
				row = 7,
				variations = 4
			}
		},
		crew_icon_size = 56, --rect only
		atlas_name = "textures/ftl_race_atlas",
		get_rect = function(race)
			local icon_size = MHP._huds.ftl.crew_icon_size
			local variations
			if not (race and MHP._huds.ftl.races[tostring(race)]) then 
				local i = math.random(7)
				local j = 0
				for _race,_ in pairs(MHP._huds.ftl.races) do 
					j = j + 1
					if j == i then
						race = _race
						break
					end
				end
			end
			if race then 
				local race_data = MHP._huds.ftl.races[tostring(race)]
				variations = variations or race_data.variations
				
				local column = 1
				if variations > 1 then 
					column = math.random(variations)
				end
				return {(column - 1) * icon_size,(race_data.row - 1) * icon_size,icon_size,icon_size}
			end
			return {0,0,icon_size,icon_size}
		end,
		font_size = 6,
		scale = 1.5,
		hud_x = 108,
		hud_y = 200,
		teammate_w = 60,
		teammate_h = 20,
		health_x = -5,
		health_y = -5,
		health_w = 30,
		health_h = 3,
		teammate_margin_v = 3,
		icon_x = 4,
		icon_y = 2,
		icon_size = 16,
		name_x = 25,
		name_y = 4
	},
	misc = {
		panel = nil
	}
}

MHP._fonts = {
	tf2 = "fonts/tf2",
	tf2_build = "fonts/tf2_build",
	hl2_icons = "fonts/hl2",
	hl2_text = "fonts/myriad_pro",
	hotline = "fonts/retro_computer",
	hotline_combo = "fonts/justice",
	fallout = "fonts/monofonto",
	minecraft = "fonts/minecraftia",
	eurostile = "fonts/font_eurostile",
	eurostile_ext = "fonts/font_eurostile_ext", --included in pd2 base game 
	gta = "fonts/pricedown",
	gta_outline = "fonts/pricedown_outline",
	stardew_clock = "fonts/stardew",
	stardew_money = "fonts/stardew_thick",
	doom = "fonts/upheaval",
	destiny_bold = "fonts/grotesk_bold",
	destiny_normal = "fonts/grotesk_normal",
	destiny_serif = "fonts/cromwell_nf",
	ftl = "fonts/coderscrux"
}

function MHP.interp_colors(one,two,percent) --interpolates colors based on a percentage
--percent is [0,1]
	percent = math.clamp(percent,0,1)
	
--color 1
	local r1 = one.red
	local g1 = one.green
	local b1 = one.blue
	local a1 = one.alpha
	
--color 2
	local r2 = two.red
	local g2 = two.green
	local b2 = two.blue
	local a2 = two.alpha

--delta
	local r3 = r2 - r1
	local g3 = g2 - g1
	local b3 = b2 - b1
	local a3 = a2 - a1
	
	return Color(r1 + (r3 * percent),g1 + (g3 * percent), b1 + (b3 * percent)):with_alpha(a1 + (a3 * percent))
end

MHP.color_data = {
	fallout = Color(32/255,1,128/255),
	hlm_1 = Color(1,1,1),
	hlm_2 = Color(0,1,1),
	hlm_3 = Color(1,0,1),
	hl2_yellow = Color("FFD040"),
	hl2_orange = Color("FFA000"),
	tf2_grey = Color("363331"),
	tf2_grey_light = Color("7d7a78"),
	tf2_cream = Color("ece3cb"),
	xcom_blue = Color("4db9d5"),
	xcom_yellow = Color("dab900"),
	portal_blue = Color("37a2ff"),
	portal_orange = Color("ff9437"),
	gta_green = Color(0,0.25,0),
	stardew_brown = Color("1f121c"), --dark/"black" text
	stardew_red = Color("840002"),
	stardew_shadow = Color("dd9751"),
	stardew_bar_full = Color.green,
	stardew_bar_low = Color.yellow,
	stardew_bar_empty = Color.red,
	doom_red = Color(0.3,0,0),
	destiny_orange = Color("cf4a1f"), --crucible orange
	destiny_blue = Color("5bcadf"), --powder blue
	rocketleague_orange = Color("fd6500"),
	ftl_bar_full = Color.green,
	ftl_bar_low = Color.yellow,
	ftl_bar_empty = Color.red
}

MHP.color_strobes = {
	hotline_miami = {
		raw = { MHP.color_data.hlm_1,MHP.color_data.hlm_2,MHP.color_data.hlm_3 },
		processed = {}
	}
}

local strobe_size = 25

for name,item in pairs(MHP.color_strobes) do
	local raw = item.raw or {}
	for i,color_1 in ipairs(raw) do 
		local color_2
		if i < #raw then
			color_2 = raw[i + 1]
		else
			color_2 = raw[1]
		end
		for i=1,strobe_size do 
			table.insert(item.processed,MHP.interp_colors(color_1,color_2,i/strobe_size))
		end
	end
end

MHP._waits = 0


MHP.enemy_values = {
	civilian = {
		score = -25,
		valor = nil
	},
	civilian_female = {
		score = -25,
		valor = nil
	},
	sniper = {
		score = 3,
		valor = 10
	}, --sniper
	shield = {
		score = 5,
		valor = 10
	}, --shield
	phalanx_minion = {
		score = 5,
		valor = 20
	}, --winters shield
	phalanx_vip = {
		score = 100,
		valor = 1000
	}, --winters
	medic = {
		score = 6,
		valor = 15
	}, --medic
	taser = {
		score = 7,
		valor = 15
	}, --taser
	spooc = {
		score = 10,
		valor = 10
	}, --cloaker 
	shadow_spooc = {
		score = 20,
		valor = 500
	}, --cloaker 
	tank = {
		score = 12,
		valor = 50
	}, --dozer
	tank_hw = {
		score = 12,
		valor = 200
	}, --headless dozer
	tank_medic = {
		score = 12,
		valor = 120
	},
	tank_mini = {
		score = 12,
		valor = 200
	},
	swat_turret = {
		score = 16,
		valor = 100
	},
	security_undominatable = {
		score = -1000,
		valor = nil
	}, --garrett
	mute_security_undominatable = {
		score = -1000,
		valor = nil
	}, --also garrett i guess
	security = {
		score = 1,
		valor = 5
	},
	gensec = {
		score = 1,
		valor = 5
	},
	cop = {
		score = 1,
		valor = 5
	},
	cop_scared = {
		score = 1,
		valor = 5
	},
	cop_female = {
		score = 1,
		valor = 5
	},
	fbi = {
		score = 1,
		valor = 10
	},
	swat = {
		score = 1,
		valor = 10
	},
	heavy_swat = {
		score = 1,
		valor = 10
	},
	heavy_swat_sniper = {
		score = 1,
		valor = 10
	},
	fbi_swat = {
		score = 1,
		valor = 10
	},
	fbi_heavy_swat = {
		score = 1,
		valor = 10
	},
	city_swat = {
		score = 1,
		valor = 10
	},
	gangster = {
		score = 1,
		valor = 10
	},
	biker = {
		score = 1,
		valor = 10
	},
	biker_escape = {
		score = 1,
		valor = 10
	},
	mobster = {
		score = 1,
		valor = 10
	},
	mobster_boss = {
		score = 100,
		valor = 1000
	}, --commissar fucks again asshole
	biker_boss = {
		score = 100,
		valor = 1500
	}, --the biker heist day 2 boss 
	chavez_boss = {
		score = 100,
		valor = 900
	}, --panic room man
	hector_boss = {
		score = 100,
		valor = 900
	}, 
	hector_boss_no_armor = {
		score = 100,
		valor = 900
	},
	bolivian = {
		score = 1,
		valor = 10
	},
	bolivian_indoors = {
		score = 1,
		valor = 10
	},
	bolivian_indoors_mex = {
		score = 1,
		valor = 10
	},
	drug_lord_boss = {
		score = 100,
		valor = 1000
	}, --sosa
	drug_lord_boss_stealth = {
		score = 100,
		valor = 1000
	}, --also sosa
	
	deathvox_guard = {
		score = 1,
		valor = 10
	},
	deathvox_gman = {
		score = 1,
		valor = 50
	},
	deathvox_lightar = {
		score = 1,
		valor = 20
	},
	deathvox_lightshot = {
		score = 1,
		valor = 20
	},
	deathvox_heavyar = {
		score = 1,
		valor = 20
	},
	deathvox_heavyshot = {
		score = 1,
		valor = 20
	},
	deathvox_shield = {
		score = 5,
		valor = 100
	},
	deathvox_medic = {
		score = 6,
		valor = 100
	},
	deathvox_taser = {
		score = 7,
		valor = 100
	},
	deathvox_tank = {
		score = 12,
		valor = 150
	},
	deathvox_cloaker = {
		score = 10,
		valor = 100
	},
	deathvox_sniper = {
		score = 3,
		valor = 100
	},
	deathvox_greendozer = {
		score = 12,
		valor = 150
	},
	deathvox_blackdozer = {
		score = 12,
		valor = 150
	},
	deathvox_lmgdozer = {
		score = 12,
		valor = 150
	},
	deathvox_medicdozer = {
		score = 12,
		valor = 150
	},
	deathvox_guarddozer = {
		score = 12,
		valor = 150
	},
	deathvox_grenadier = {
		score = 7,
		valor = 100
	},
	deathvox_cop_pistol = {
		score = 1,
		valor = 20
	},
	deathvox_cop_smg = {
		score = 1,
		valor = 20
	},
	deathvox_cop_revolver = {
		score = 1,
		valor = 20
	}, 
	deathvox_cop_shotgun = {
		score = 1,
		valor = 20
	},
	deathvox_fbi_rookie = {
		score = 1,
		valor = 20
	},
	deathvox_fbi_hrt = {
		score = 1,
		valor = 20
	},
	deathvox_fbi_veteran = {
		score = 1,
		valor = 20
	},
	
	--RESTORATION MOD VALUES
	tank_green = {
		score = 12,
		valor = 50
	},
	tank_black = {
		score = 12,
		valor = 50
	},
	tank_skull = {
		score = 12,
		valor = 50
	},
	tank_biker = {
		score = 12,
		valor = 50
	},
	boom = {
		score = 6,
		valor = 50
	},
	boom_summers = {
		score = 12,
		valor = 500
	},
	taser_summers = {
		score = 12,
		valor = 500
	},
	medic_summers = {
		score = 12,
		valor = 500
	},
	rboom = {
		score = 12,
		valor = 50
	},
	heavy_swat_sniper = {
		score = 3,
		valor = 20
	},
	weekend_dmr = {
		score = 2,
		valor = 20
	},
	tank_titan = {
		score = 24,
		valor = 100
	},
	tank_titan_assault = {
		score = 24,
		valor = 100
	},
	spring = {
		score = 50,
		valor = 600
	},
	summers = {
		score = 50,
		valor = 600
	},
	omnia_lpf = {
		score = 3,
		valor = 50
	},
	phalanx_minion_assault = {
		score = 5,
		valor = 100
	},
	spooc_titan = {
		score = 12,
		valor = 100
	},
	taser_titan = {
		score = 12,
		valor = 100
	},
	autumn = {
		score = 50,
		valor = 600
	}
}