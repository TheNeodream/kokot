MHP = MHP or {}

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

MHP.info = MHP.info or {
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
			Legend 1800 - 2000	200
			
			--]]
			
			return all_ranks[max_rank] or all_ranks[0]
		end,
		get_rect = function(rank) --rank must be 1-5
			local size = MHP._huds.destiny.RANKS_SIZE
			return {0 * size,(rank - 1) * size,size,size}
		end
	},
	misc = {
		panel = nil
	}
}

MHP._fonts = {
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
	destiny_orange = Color("cf4a1f"), --crucible orange
	destiny_blue = Color("5bcadf") --powder blue
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




function MHP:Init()
	self._ws = managers.gui_data:create_fullscreen_workspace()
	self._panel = self._ws and self._ws:panel()
	self:CreateHUD()
	if BeardLib then 
		BeardLib:AddUpdater("MHP_update",callback(MHP,MHP,"UpdateHUD"))
	end
end

function MHP:CreateHUD()
	local hud = self._panel
	if not (hud and alive(hud)) then 
		self:log("MHP: Error creating master HUD panel")
		return
	end
	hud:hide()
	
	local destiny_hud = self:_create_destiny_hud(hud)
	local misc = self:_create_misc(hud)
end

function MHP:UpdateHUD(t,dt)
--[[
	for name,panel in ipairs(MHP._huds) do 
		--update all subelements of hud appropriately
		local setting = self:GetSetting(name)
		if setting == "none" then
		elseif setting == "hp" then 
		elseif setting == "armor" then 
		elseif setting == "stamina" then 
		elseif setting == "dodge" then 
		elseif setting == "resist" then 
		elseif setting == "crit" then
		end
	end
	--]]
	
	--[[
	local destiny_data = self._huds.destiny
	if alive(destiny_data.panel) then 
		local rankup_master = destiny_data.panel:child("rankup_master")
		local rotator_1 = rankup_master:child("rankup_bound"):child("bg_rotator_1")
		local rotator_2 = rankup_master:child("bg_rotator_2")
		local rotator_3 = rankup_master:child("bg_rotator_3")
		rotator_1:set_rotation(rotator_1:rotation() + (destiny_data.ROTATOR_SPEED_1 * dt))
		rotator_2:set_rotation(rotator_2:rotation() + (destiny_data.ROTATOR_SPEED_2 * dt))
		rotator_3:set_rotation(rotator_3:rotation() + (destiny_data.ROTATOR_SPEED_3 * dt))
	end
	--]]
		
	if not managers.experience:reached_level_cap() then
		self:UpdateInterpolateExperience(t,dt)
		self:UpdateExperience(t,dt)
	end
	
	local player = managers.player:local_player()
	local d2_data = self._huds.destiny
	if alive(d2_data.panel) then 
		local d2 = d2_data.panel:child("rankup_master")
		local rotator_2 = d2:child("bg_rotator_2")
		local rotator_3 = d2:child("bg_rotator_3")
		rotator_2:set_rotation(rotator_2:rotation() + (d2_data.ROTATOR_SPEED_2 * dt))
		rotator_3:set_rotation(rotator_3:rotation() + (d2_data.ROTATOR_SPEED_3 * dt))
	end
	self:UpdateAnimate(t,dt)
end

function MHP:UpdateInterpolateScore(t,dt)
	if self.settings.interpolate_score then 
	--[[
		local start_score = self.info.score_interp_start
--		local current_score = self.info.score_interp
		local true_score = self.info.score
		local start_t = self.info.score_interp_t

		local progress = t - start_t
		
		local delta = true_score - start_score
		local interp_duration = self.settings.interp_duration
		
		local d_abs = math.abs(delta) --remember, when someone is being negative, d_abs on the haters
		if d_abs > 0 then 
			
			if (d_abs < 1) or (progress > interp_duration) then 
				self.info.score_interp = true_score
			else
				self.info.score_interp = start_score + (delta * progress / interp_duration)
			end
		else
			self.info.score_interp_start = true_score
			self.info.score_interp = true_score
		end
		--]]
	end
end

function MHP:UpdateInterpolateExperience(t,dt)
	local start_xp = self.info.xp_interp_start
	local true_xp = self.info.xp
	local start_t = self.info.xp_interp_t

	local progress = t - start_t
		
	local delta = true_xp - start_xp
	local interp_duration = self.settings.interp_duration
	local d_abs = math.abs(delta) --remember, when someone is being negative, d_abs on the haters
	if d_abs > 0 then 
		
		if (d_abs < 1) or (progress > interp_duration) then 
			self.info.xp_interp = true_xp
		else
			self.info.xp_interp = start_xp + (delta * progress / interp_duration)
		end
	else
		self.info.xp_interp_start = true_xp
		self.info.xp_interp = true_xp
	end
end

function MHP:UpdateExperience(t,dt)
	local xm = managers.experience
	local data = xm:next_level_data()
	local current_total = data.current_points + xm:mission_xp()
	
	if self.info.xp ~= current_total then
		self.info.xp_interp = self.info.xp
		self.info.xp = current_total
		self.info.interp_t = t
	end

	local xp_interp = self.info.xp_interp
	local lvlup_threshold = data.points
		
	self:SetMinecraftXP(xp_interp,lvlup_threshold)
end

function MHP:UpdateInterpolateMoney(t,dt)
	local start_money = self.info.money_interp_start
	local true_money = self.info.money
	local start_t = self.info.money_interp_t

	local progress = t - start_t
		
	local delta = true_money - start_money
	local interp_duration = self.settings.interp_duration
	local d_abs = math.abs(delta)
	if d_abs > 0 then 
		
		if (d_abs < 1) or (progress > interp_duration) then 
			self.info.money_interp_start = true_money
			self.info.money_interp = true_money
		else
			self.info.money_interp = start_money + (delta * progress / interp_duration)
		end
	else
		self.info.money_interp_start = true_money
		self.info.money_interp = true_money
	end
end

function MHP:UpdateMoney(t,dt)
	local money = self.info.money_interp
	self:SetStardewMoney(money)
	self:SetGTAMoney(money)
	self:SetBOICoins(money)
	--todo animate
end

function MHP:GetSetting(name)
	return self.settings[tostring(name)]
end

function MHP:SetValue(name,value) -- generic; not really used
	self.info[tostring(name)] = value
end

function MHP:GetValue(name,fallback)
	local value = self.info[tostring(name)]
	if value == nil then 
		return fallback
	end
	return value
end

function MHP:AddScore(n)
	n = tonumber(n)
	if n then 
		self:SetScore(self.info.score + n)
	end
end

function MHP:GetInterpolatedScore(t)
	t = t or Application:time()
	local i_t = self.info.score_interp_t
	local d_t = t - i_t
	local duration = self.info.score_interp_duration
	local s = self.info.score
	if d_t > duration then 
		self.info.score_interp = s
		return s
	end
	local i_s = self.info.score_interp
	local d_s = s - i_s
	return i_s + (d_s * d_t / duration)
end

function MHP:SetScore(n)
	if self.settings.interpolate_score then
--		self.info.score_interp_start = self.info.score_interp
		self.info.score_interp = self.info.score
		self.info.score_interp_t = Application:time()
	end
	self.info.score = n
end

function MHP:GetScore()
	if self.settings.interpolate_score then
		return self:GetInterpolatedScore()
	else
		return self.info.score
	end
end

function MHP:RegisterPlayerHitIndicator(damage_origin,damage_type,fixed_angle)
	table.insert(self.info.hit_indicators,{damage_origin = damage_origin,damage_type = damage_type,fixed_angle = fixed_angle,start_t = Application:time()})
end

function MHP.angle_from(a,b,c,d) -- converts to angle with ranges (-180 , 180); for result range 0-360, do +180 to result
--mvector3.angle() is a big fat meanie zucchini;
	a = a or "nil"
	b = b or "nil"
	c = c or "nil"
	d = d or "nil"
	local function do_angle(x1,y1,x2,y2)
		local angle = 0
		local x = x2 - x1 --x diff
		local y = y2 - y1 --y diff
		if x ~= 0 then 
			angle = math.atan(y / x) % 180
			if y == 0 then 
				if x > 0 then 
					angle = 180 --right
				else
					angle = 0 --left 
				end
			elseif y > 0 then 
				angle = angle - 180
			end
		else
			if y > 0 then
				angle = 270 --up
			else
				angle = 90 --down
			end
		end
		
		return angle
	end
	local vectype = type(Vector3())
	if (type(a) == vectype) and (type(b) == vectype) then  --vector pos diff
		return do_angle(a.x,a.y,b.x,b.y)
	elseif (type(a) == "number") and (type(b) == "number") and (type(c) == "number") and (type(d) == "number") then --manual x/y pos diff
		return do_angle(a,b,c,d)
	else
		return
	end
end

function MHP:AnimateWait(duration,done_cb,...)
	self._waits = self._waits + 1
	self:animate(self._waits,self.animate_wait,done_cb,duration,...)
	return self._waits
end

function MHP:animate(target,func,done_cb,...)
	if target then 
		if type(func) == "function" then 
		elseif type(self[tostring(func)]) == "function" then
			func = self[tostring(func)]
		else
			--error!
			return
		end
		if (type(target) == "number") or alive(target) then
			self._animate_targets[tostring(target)] = {
				func = func,
				target = target,
				start_t = Application:time(),
				done_cb = done_cb,
				params = {
					...
				}
			}
		end
	end
end

function MHP:animate_stop(name,do_cb)
	local item = self._animate_targets[tostring(name)]
	if item and do_cb and (type(item.done_cb) == "function") then 
		return item.done_cb(item.target,unpack(item.params))
	end
end

function MHP:UpdateAnimate(t,dt)
	for id,data in pairs(self._animate_targets) do 
		if data and data.target and ((type(data.target) == "number") or alive(data.target)) then 
			local result = data.func(data.target,t,dt,data.start_t,unpack(data.params or {}))
			if result then 
				if type(data.done_cb) == "function" then 
					local done_cb = data.done_cb
					local target = data.target
					local params = data.params
					self._animate_targets[id] = nil
					done_cb(target,unpack(params))
--					data.done_cb(data.target,unpack(data.params))
				else
					self._animate_targets[id] = nil
				end
			end
		else
			self._animate_targets[id] = nil
		end
	end
end

function MHP:AddDestinyValor(amount,override)
	amount = tonumber(amount)
	if amount then 
		if override then 
			self.info.valor = amount
		else
			self.info.valor = self.info.valor + amount
		end
	end
	return self.info.valor
end

function MHP:GetDestinyValor()
	return self.info.valor
end

function MHP:OnKillshot(killed_unit,variant,headshot,weapon_id)

	if not alive(killed_unit) then return end

	local base = killed_unit and killed_unit:base()
	local unit_type = base and tostring(base._tweak_table)
	local unit_data = self.enemy_values[unit_type] or {}
	local score_gain = unit_data.score
	local valor_gain = unit_data.valor
	if valor_gain then
		local valor = MHP:AddDestinyValor(valor_gain * 0.5)
		local valor_data = self._huds.destiny.get_rank(valor)
		if valor_data and valor_data.id > self.info.valor_rank_id then
			self.info.valor_rank_id = valor_data.id
			self:StartDestinyRankup(valor_data)
		end
	end
	if score_gain then

		Hooks:Call("MHP_SetScore_Builtin",score_gain * 100)
		if score_gain > 0 then
			self.info.hlm_combos.count = self.info.hlm_combos.count + 1

			self.info.hlm_combos.end_t = Application:time() + 2

			self.info.hlm_combos.last_pos = killed_unit:position()
		end

	end
end

Hooks:Register("MHP_SetScore_Builtin")
Hooks:Add("MHP_SetScore_Builtin","MHP_OnAddScore",function(score)
	MHP:AddScore(score)
end)

-- Destiny 2 Rank-Up screen animation

function MHP:_create_destiny_hud(hud)

	local destiny = hud:panel({
		name = "destiny",
		layer = -1
	})
	self._huds.destiny.panel = destiny
	local data = self._huds.destiny
	local blue = self.color_data.destiny_blue
	local orange = self.color_data.destiny_orange
	local stripe_angle = 90 + data.STRIPE_ANGLE
	local stripe_h = data.STRIPE_H
	
	
	
	local rankup_master = destiny:panel({
		name = "rankup_master",
		layer = 77
	})
	local center_x = rankup_master:w() / 2
	local center_y = rankup_master:h() / 2
	
	
	local bg_rotator_2 = rankup_master:bitmap({ --medium rotator
		name = "bg_rotator_2",
		layer = 6,
		texture = data.rotator_texture_2,
		w = data.ROTATOR_SIZE_2,
		h = data.ROTATOR_SIZE_2,
		alpha = 0, --data.ROTATOR_ALPHA_2,
		visible = true
	})
	bg_rotator_2:set_center(center_x,center_y)
	
	local bg_rotator_3 = rankup_master:bitmap({ --small rotator
		name = "bg_rotator_3",
		layer = 6,
		texture = data.rotator_texture_3,
		w = data.ROTATOR_SIZE_3,
		h = data.ROTATOR_SIZE_3,
		alpha = 0, --data.ROTATOR_ALPHA_1,
		visible = true
	})
	bg_rotator_3:set_center(center_x,center_y)
	
	local rank_frame_square = rankup_master:bitmap({ --small rotator
		name = "rank_frame_square",
		layer = 1,
		texture = data.frame_square_texture,
		w = data.FRAME_SQUARE_W,
		h = data.FRAME_SQUARE_H,
		alpha = 0, --data.FRAME_ALPHA,
		visible = true
	})
	local rank_frame_diamond = rankup_master:bitmap({ --small rotator
		name = "rank_frame_diamond",
		layer = 1,
		texture = data.frame_diamond_texture,
		w = data.FRAME_DIAMOND_W,
		h = data.FRAME_DIAMOND_H,
		alpha = 0, --data.FRAME_ALPHA,
		visible = true
	})
	rank_frame_square:set_center(center_x,center_y)
	rank_frame_diamond:set_center(center_x,center_y)
	
	local rankup_crucible_emblem = rankup_master:bitmap({
		name = "rankup_crucible_emblem",
		texture = data.crucible_texture,
		color = Color.white,
		layer = 8,
		w = data.EMBLEM_W,
		h = data.EMBLEM_H,
		x = center_x - (data.EMBLEM_W / 2),
		y = center_y - (data.EMBLEM_H / 2),
		alpha = 0
	})
	
	local rankup_bound = rankup_master:panel({ --box boundary (horizontal bar)
		name = "rankup_bound",
		h = data.RANKUP_HEIGHT,
		y = (rankup_master:h() - data.RANKUP_HEIGHT) / 2
	})
	local center_box_y = rankup_bound:h() / 2
	
	local bg_rotator_1 = rankup_bound:bitmap({ --big rotator
		name = "bg_rotator_1",
		layer = 6,
		texture = data.rotator_texture_1,
		w = data.ROTATOR_SIZE_1,
		h = data.ROTATOR_SIZE_1,
		alpha = 0, --data.ROTATOR_ALPHA_1,
		visible = true
	})
	bg_rotator_1:set_center(center_x,center_box_y)
	
	local orange_1 = rankup_bound:bitmap({ --left/top
		name = "orange_1",
		w = data.ORANGE_W,
		h = data.ORANGE_H,
		texture = data.orange_stripe_texture,
--		rotation = stripe_angle,
		color = orange,
		layer = 4,
		x = -data.ORANGE_W,
--		y = -stripe_h / 2,
		visible = true
	})
	local orange_2 = rankup_bound:bitmap({ --right/bottom
		name = "orange_2",
		w = -data.ORANGE_W,
		h = data.ORANGE_H,
		texture = data.orange_stripe_texture,
--		rotation = stripe_angle,
		color = orange,
		layer = 4,
		x = 2 * rankup_bound:w(),
--		y = -stripe_h / 2,
		visible = true
	})
	orange_2:set_y(orange_2:h())
	orange_2:set_h(-orange_2:h())
	
	local blue_stripe = rankup_bound:gradient({
		name = "blue_stripe",
--		valign = "scale",
--		orientation = "vertical",
--		halign = "scale",
		h = data.BLUE_STRIPE_H,
		layer = 7,
		y = (rankup_bound:h() - data.BLUE_STRIPE_H) / 2
	})
	blue_stripe:set_gradient_points({
		0,
		blue:with_alpha(0),
		0.5,
		blue:with_alpha(0),
		0.6,
		blue:with_alpha(0),
		1,
		blue:with_alpha(0)
	})
	
	local diag_stripe_1 = rankup_bound:bitmap({
		name = "diag_stripe_1",
--		rotation = stripe_angle,
--		h = stripe_h,
		color = Color.white,
		layer = 5,
		alpha = data.STRIPE_ALPHA,
		texture = data.stripe_texture,
		x = -1000,
--		y = -stripe_h / 2,
		visible = true
	})
	local diag_stripe_2 = rankup_bound:bitmap({
		name = "diag_stripe_2",
--		rotation = stripe_angle,
--		h = stripe_h,
		color = Color.white,
		layer = 5,
		alpha = data.STRIPE_ALPHA,
		texture = data.stripe_texture,
		x = -1000,
--		y = -stripe_h / 2,
		visible = true
	})
	local diag_stripe_3 = rankup_bound:bitmap({
		name = "diag_stripe_3",
--		rotation = stripe_angle,
--		h = stripe_h,
		layer = 5,
		color = Color.white,
		alpha = data.STRIPE_ALPHA,
		texture = data.stripe_texture,
		x = -1000,
--		y = -stripe_h / 2,
		visible = true
	})
	local diag_stripe_4 = rankup_bound:bitmap({
		name = "diag_stripe_4",
--		rotation = stripe_angle,
--		h = stripe_h,
		layer = 5,
		color = Color.white,
		alpha = data.STRIPE_ALPHA,
		texture = data.stripe_texture,
		x = -1000,
--		y = -stripe_h / 2,
		visible = true
	})
	local diag_stripe_5 = rankup_bound:bitmap({
		name = "diag_stripe_5",
--		rotation = stripe_angle,
--		h = stripe_h,
		layer = 5,
		color = Color.white,
		alpha = data.STRIPE_ALPHA,
		texture = data.stripe_texture,
		x = -1000,
--		y = -stripe_h / 2,
		visible = true
	})
	
	diag_stripe_1:set_size(diag_stripe_1:w() * data.STRIPE_S_SCALE,diag_stripe_1:h() * data.STRIPE_S_SCALE)
	diag_stripe_2:set_size(diag_stripe_2:w() * data.STRIPE_S_SCALE,diag_stripe_2:h() * data.STRIPE_S_SCALE)
	diag_stripe_3:set_size(diag_stripe_3:w() * data.STRIPE_M_SCALE,diag_stripe_3:h() * data.STRIPE_M_SCALE)
	diag_stripe_4:set_size(diag_stripe_4:w() * data.STRIPE_L_SCALE,diag_stripe_4:h() * data.STRIPE_L_SCALE)
	diag_stripe_5:set_size(diag_stripe_5:w() * data.STRIPE_XL_SCALE,diag_stripe_5:h() * data.STRIPE_XL_SCALE)

	local rank_title_box = rankup_bound:panel({
		name = "rank_title_box",
		w = data.RANKUP_TITLE_W,
		h = data.RANKUP_TITLE_H,
		x = center_x - (data.RANKUP_TITLE_W / 2),
		y = center_box_y - (data.RANKUP_TITLE_H / 2)
	})
	
	local rank_title_bg = rank_title_box:rect({
		name = "rank_title_bg",
		color = Color.black,
		layer = 9,
		w = 0,
		alpha = data.RANK_TITLE_BG_ALPHA,
	})
	
	local rank_title_bg_white = rank_title_box:rect({
		name = "rank_title_bg_white",
		color = Color.white,
		layer = 9,
		alpha = 0 --data.RANK_TITLE_BG_ALPHA,
	})
	
	local rankup_title = rank_title_box:text({
		name = "rankup_title",
		text = "VALOR SUB RANK UP!",
		font = self._fonts.destiny_bold,
		font_size = data.FONTSIZE_RANKUP_TITLE,
		layer = 10,
		alpha = 0,
		color = Color.white,
		vertical = "center",
		align = "center"
	})
	
	
	local rankup_infobox = rankup_bound:panel({
		name = "rankup_infobox",
		w = data.RANKUP_INFOBOX_W,
		x = data.RANKUP_INFOBOX_X + center_x + (data.RANKUP_INFOBOX_W / 2),
		alpha = data.RANKUP_INFOBOX_ALPHA,
		layer = 4 -- parented panel priority?
	})
	
	local season_title = rankup_infobox:text({
		name = "season_title",
		text = "SEASON 10",
		font = self._fonts.destiny_normal,
		font_size = data.FONTSIZE_SEASON_TITLE,
		layer = 3,
		alpha = 0, --1
		y = center_box_y + 8,
		color = Color.white,
		align = "center"
	})
	
	local info_div = rankup_infobox:rect({
		name = "info_div",
		w = data.RANKUP_INFOBOX_DIV_W,
		h = data.RANKUP_INFOBOX_DIV_H,
		alpha = 0, --data.RANKUP_INFOBOX_DIV_ALPHA,
		color = Color.white,
		x = (rankup_infobox:w() - data.RANKUP_INFOBOX_DIV_W) / 2,
		y = center_box_y - (data.RANKUP_INFOBOX_DIV_H / 2),
		layer = 3
	})
	
	local rank_title = rankup_infobox:text({
		name = "rank_title",
		text = "GUARDIAN III",
		font = self._fonts.destiny_serif,
		font_size = data.FONTSIZE_RANK_TITLE,
		layer = 3,
		alpha = 0,
		y = center_box_y - 22,
		color = Color.white,
		align = "center",
		kern = data.RANK_KERN
	})	
	
	local rank_icon = rankup_bound:bitmap({
		name = "rank_icon",
		texture = data.ranks_atlas,
		texture_rect = data.get_rect(1),
		alpha = 0, --1,
		w = data.RANK_ICON_W,
		h = data.RANK_ICON_H,
		x = (center_x - data.RANK_ICON_W) / 2,
		y = (center_box_y - data.RANK_ICON_H) / 2,
		layer = 13,
		visible = true
	})
	
	local debug_rankup_infobox = rankup_infobox:rect({
		name = "debug_rankup_infobox",
		color = Color.white,
		alpha = 0.1,
		visible = false
	})
	
	local bg_skybox = rankup_bound:bitmap({
		name = "bg_skybox",
		layer = -1,
		alpha = 0,
--		w = rankup_bound:w(),
--		h = data.RANKUP_HEIGHT,
		texture = data.skybox_texture
	})
	local bg_w,bg_h = bg_skybox:size()
	local bg_scale = bg_w / rankup_bound:w()
	bg_skybox:set_size(rankup_bound:w(),bg_h / bg_scale)
	--[[
	local bg_w,bg_h = bg_skybox:size()
	local bg_scale = bg_h / data.RANKUP_HEIGHT
	bg_skybox:set_size(bg_w / bg_scale,data.RANKUP_HEIGHT)
	--]]
	
end

function MHP:RecreateDestinyRankup()
	local panel = self._huds.destiny.panel
	local parent = panel:parent()
	parent:remove(panel)
	self._huds.destiny.panel = nil
	self:_create_destiny_hud(parent)
end

function MHP.animate_drift(o,t,dt,start_t,duration,start_x,to_x,a)
--you... shall drift.
	local ratio = (t - start_t) / duration	
	a = a or 10
	local f = (1 - (1/(a * ratio))) * ((a + 1)/a)
	o:set_x(start_x + ((to_x - start_x) * f))
--	o:set_alpha(math.clamp(ratio,0,1))
end

function MHP.animate_fade(o,t,dt,start_t,duration,start_alpha,end_alpha,start_x,end_x,start_y,end_y,power)
	duration = duration or 1
	start_alpha = start_alpha or 1
	end_alpha = end_alpha or start_alpha
	
	local ratio = math.pow((t - start_t) / duration,tonumber(power) or 2)
	
	if ratio >= 1 then 
		o:set_alpha(end_alpha)
		if end_x then 
			o:set_x(end_x)
		end 
		if end_y then 
			o:set_y(end_y)
		end
		return true
	end
	o:set_alpha(start_alpha + (ratio * (end_alpha - start_alpha)))
	if start_x and end_x then 
		o:set_x(start_x + ((end_x - start_x) * ratio))
	end
	if start_y and end_y then 
		o:set_y(start_y + ((end_y - start_y) * ratio))
	end
end

function MHP.animate_wait(o,t,dt,start_t,duration)
	if t >= start_t + duration then 
		return true
	end
end

function MHP.animate_fade_resize(o,t,dt,start_t,duration,start_w,to_w,start_h,to_h,start_alpha,to_alpha,center_x,center_y,power)
	local ratio = math.pow((t - start_t) / duration,tonumber(power) or 2)	
--	local ratio = math.min(math.pow((t - start_t) / duration,power or 2),1)
	if start_h and to_h then 
		o:set_h(start_h + ((to_h - start_h) * ratio))
	end
	if start_w and to_w then 
		o:set_w(start_w + ((to_w - start_w) * ratio))
	end
	if start_alpha and to_alpha then 
		o:set_alpha(start_alpha + ((to_alpha - start_alpha) * ratio))
	end
	if center_x and center_y then 
		o:set_center(center_x,center_y)
	end
	if t >= start_t + duration then 
		return true
	end
end

function MHP.animate_gradient_progress_simple(o,t,dt,start_t,duration,color,color_2,spacer)
	color = color or MHP.color_data.destiny_blue
	color_2 = color_2 or Color(0,0,0):with_alpha(0)
	if t >= start_t + duration then 
		o:set_gradient_points({
			0,
			color,
			1,
			color
		})
		return true
	else
		spacer = spacer or 0.01
		local ratio = math.pow((t - start_t) / duration,2)
		o:set_gradient_points({
			0,
			color,
			math.clamp(ratio,0,1),
			color,
			math.clamp(ratio + spacer,0,1),
			color_2:with_alpha(0),
			1,
			color_2:with_alpha(0)			
		})
	end
end

--here be dragons
function MHP:StartDestinyRankup(rank_data)
	if self.info.is_animating_d2 or not (rank_data and rank_data.icon and rank_data.name) then 
		return
	end
	self.info.is_animating_d2 = true --set animating flag
	self:RecreateDestinyRankup()
	local data = self._huds.destiny
	local rankup_master = data.panel:child("rankup_master")
	local rankup_bound = rankup_master:child("rankup_bound")
	
	local center_x = rankup_master:w() / 2
	local center_y = rankup_master:h() / 2
	local center_box_y = rankup_bound:h() / 2
	
	
	local rank_icon = rankup_bound:child("rank_icon")
	
	rank_icon:set_alpha(0)
	rank_icon:set_image(data.ranks_atlas,unpack(data.get_rect(rank_data.icon)))
	rank_icon:set_size(data.RANK_ICON_W,data.RANK_ICON_H)
	rank_icon:set_position(center_x - (rank_icon:w() / 2),center_box_y - ((rank_icon:h() / 2) + 16))
	
	local stripe_1 = rankup_bound:child("diag_stripe_1")
	local stripe_2 = rankup_bound:child("diag_stripe_2")
	local stripe_3 = rankup_bound:child("diag_stripe_3")
	local stripe_4 = rankup_bound:child("diag_stripe_4")
	local stripe_5 = rankup_bound:child("diag_stripe_5")
	
	local orange_1 = rankup_bound:child("orange_1")
	local orange_2 = rankup_bound:child("orange_2")
	
	local bg_rotator_1 = rankup_bound:child("bg_rotator_1")
	local bg_rotator_2 = rankup_master:child("bg_rotator_2")
	local bg_rotator_3 = rankup_master:child("bg_rotator_3")
	
	
	local frame_square = rankup_master:child("rank_frame_square")
	local frame_diamond = rankup_master:child("rank_frame_diamond")
	
	local crucible_icon = rankup_master:child("rankup_crucible_emblem")
	local blue_stripe = rankup_bound:child("blue_stripe")
	
	local rank_title_box = rankup_bound:child("rank_title_box")
	local rankup_title = rank_title_box:child("rankup_title")
	local rank_title_bg = rank_title_box:child("rank_title_bg")
	local rank_title_bg_white = rank_title_box:child("rank_title_bg_white")
	
	local rankup_infobox = rankup_bound:child("rankup_infobox")
	local season_title = rankup_infobox:child("season_title")
	season_title:set_text(string.gsub("SEASON $num","$num",string.format("%d",10 + math.max((24242 - (tonumber(os.date("%m")) + (12 * tonumber(os.date("%Y"))))) / 3,0))))
	--show approximate season based on time (new seasons come out roughly every three months)
	--i figure it won't matter anyway since i don't think anyone will unironically use this mod
	
	if rank_data.id == 17 then 
--		season_title:set_text("VALOR RESET AVAILABLE")
	end
	local info_div = rankup_infobox:child("info_div")
	local rank_title = rankup_infobox:child("rank_title")
	rank_title:set_text(utf8.to_upper(rank_data.name))
	
	local bg_skybox = rankup_bound:child("bg_skybox")
	
	local stripe_alpha = data.STRIPE_ALPHA
	
	local title_box_center_x = rank_title_box:w() / 2
	local title_box_center_y = rank_title_box:h() / 2
	
-- t 0:00
	self:animate(orange_1,"animate_fade",nil,0.5,1,1,-orange_1:w(),0,nil,nil)
	self:animate(orange_2,"animate_fade",nil,0.5,1,1,2 * rankup_bound:w(),rankup_bound:w(),nil,nil)

	self:animate(blue_stripe,"animate_gradient_progress_simple",nil,0.75,self.color_data.destiny_blue,nil,0.1)
	
	--0.75?
	self:animate(stripe_1,"animate_drift",nil,0.25,0,50,1.5)
	self:animate(stripe_2,"animate_drift",nil,0.25,0,200,1.5)
	self:animate(stripe_3,"animate_drift",nil,0.25,0,800,1.5)
	self:animate(stripe_4,"animate_drift",nil,0.25,0,500,1.5)
	self:animate(stripe_5,"animate_drift",nil,0.25,0,25,1.5)



	self:AnimateWait(2/3,function()
		self:animate(rankup_title,"animate_fade",nil,0.5,0,1) 
	end)
	self:AnimateWait(0.5,function()
		self:animate(crucible_icon,"animate_fade",nil,0.75,0,1)
	
		self:animate(rank_title_bg,"animate_fade_resize",nil,1/3,0,data.RANKUP_TITLE_W,nil,nil,data.RANK_TITLE_BG_ALPHA,data.RANK_TITLE_BG_ALPHA,title_box_center_x,title_box_center_y,3) --center_x,center_box_y)
		self:AnimateWait(0.2,function()
			self:animate(rank_title_bg_white,"animate_fade_resize",nil,0.8,0,data.RANKUP_TITLE_W,nil,nil,data.RANK_TITLE_BG_ALPHA,0,title_box_center_x,title_box_center_y,3)--center_x,center_box_y)
		end)
		self:animate(bg_rotator_1,"animate_fade",nil,0.5,0,data.ROTATOR_ALPHA_1)
		self:animate(bg_skybox,"animate_fade",nil,0.5,0,1)
	end)

	self:AnimateWait(2,function()
		self:animate(rank_title_bg_white,"animate_fade",function() --fadein quick
			self:animate(rank_title_bg_white,"animate_fade",nil,0.25,data.RANK_TITLE_BG_ALPHA,0) --fadeout quick
		end,0.0625,0,data.RANK_TITLE_BG_ALPHA)
		--0.25 instead of 0.0625?
	end)
	
	self:AnimateWait(2.25,function()
		self:animate(rank_title_box,"animate_fade_resize",function(o) o:hide() end,0.5,nil,nil,data.RANKUP_TITLE_H,0,nil,nil,center_x,center_box_y,3)
		self:animate(crucible_icon,"animate_fade",nil,0.5,1,0)
		
	end)
	
	self:AnimateWait(2.5,function()
		--todo cubic
		self:animate(stripe_1,"animate_fade",nil,0.5125,stripe_alpha,0,stripe_1:x(),rankup_bound:w()+10)
		self:animate(stripe_2,"animate_fade",nil,0.5125,stripe_alpha,0,stripe_2:x(),rankup_bound:w()+10)
		self:animate(stripe_3,"animate_fade",nil,0.5125,stripe_alpha,0,stripe_3:x(),rankup_bound:w()+10)
		self:animate(stripe_4,"animate_fade",nil,0.5125,stripe_alpha,0,stripe_4:x(),rankup_bound:w()+10)
		self:animate(stripe_5,"animate_fade",nil,0.5125,stripe_alpha,0,stripe_5:x(),rankup_bound:w()+10)
		
		self:animate(bg_rotator_2,"animate_fade_resize",nil,0.75,data.ROTATOR_SIZE_2 * data.ROTATOR_SIZE_MUL,data.ROTATOR_SIZE_2,data.ROTATOR_SIZE_2 * data.ROTATOR_SIZE_MUL,data.ROTATOR_SIZE_2,0,data.ROTATOR_ALPHA_2,center_x,center_y,0.25)
	end)
	
	self:AnimateWait(8/3,function()
			--split orange
			orange_1:set_size(rankup_bound:w() * 1.1,data.RANKUP_HEIGHT/2)
			orange_1:set_position(0,0)
			orange_2:set_size(rankup_bound:w() * 1.1,data.RANKUP_HEIGHT/2)
			orange_2:set_position(0,data.RANKUP_HEIGHT/2)
			orange_1:set_image(data.orange_stripe_texture,100,100,1,1)
			orange_2:set_image(data.orange_stripe_texture,100,100,1,1)
			self:animate(orange_1,"animate_fade",nil,2/3,nil,nil,nil,nil,orange_1:y(),-orange_1:h())
			self:animate(orange_2,"animate_fade",nil,2/3,nil,nil,nil,nil,orange_2:y(),data.RANKUP_HEIGHT)
	end)
	self:AnimateWait(2.75,function()
		self:animate(blue_stripe,"animate_fade",nil,0.25,blue_stripe:alpha(),0)
	end)
	
	self:AnimateWait(2.85,function()
		self:animate(bg_rotator_3,"animate_fade_resize",nil,2/3,data.ROTATOR_SIZE_3 * data.ROTATOR_SIZE_MUL,data.ROTATOR_SIZE_3,data.ROTATOR_SIZE_3 * data.ROTATOR_SIZE_MUL,data.ROTATOR_SIZE_3,0,data.ROTATOR_ALPHA_2,center_x,center_y,0.25)
		self:animate(frame_diamond,"animate_fade_resize",nil,0.5,data.FRAME_DIAMOND_W * data.ROTATOR_SIZE_MUL,data.FRAME_DIAMOND_W,data.FRAME_DIAMOND_H * data.ROTATOR_SIZE_MUL,data.FRAME_DIAMOND_H,0,data.FRAME_ALPHA,center_x,center_y,0.5)
		self:animate(rank_icon,"animate_fade",nil,2/3,0,1,nil,nil,rank_icon:y(),center_box_y - (rank_icon:h() / 2),0.5)
		
		self:animate(season_title,"animate_fade",nil,0.75,0,1,nil,nil,center_box_y - 2,center_box_y + 8)
		self:animate(info_div,"animate_fade",nil,0.75,0,1,nil,nil,center_box_y - ((data.RANKUP_INFOBOX_DIV_H / 2) + 10),center_box_y - (data.RANKUP_INFOBOX_DIV_H / 2))
		--season 10 + div drop fadein here (exp 0.5) (~0.66s)
	end)
	
	self:AnimateWait(3,function()
		self:animate(frame_square,"animate_fade_resize",nil,0.5,data.FRAME_SQUARE_W * data.ROTATOR_SIZE_MUL,data.FRAME_SQUARE_W,data.FRAME_SQUARE_H * data.ROTATOR_SIZE_MUL,data.FRAME_SQUARE_H,0,data.FRAME_ALPHA,center_x,center_y,0.5)
	end)
	
	self:AnimateWait(3.25,function()		
		self:animate(rank_title,"animate_fade",nil,0.75,0,1,nil,nil,center_box_y - 32,center_box_y - 22)
	end)

	self:AnimateWait(6.5,function()					
		self:animate(rank_icon,"animate_fade",nil,0.5,1,0,nil,nil,rank_icon:y(),rank_icon:y() + 32)
	end)
	
	self:AnimateWait(20/3,function()
		self:animate(frame_square,"animate_fade_resize",nil,1/3,frame_square:w(),frame_square:w() * data.ROTATOR_SIZE_MUL,data.FRAME_SQUARE_H,data.FRAME_SQUARE_H * data.ROTATOR_SIZE_MUL,frame_square:alpha(),0,center_x,center_y,2)
	end)
	
	self:AnimateWait(6.75,function()
		self:animate(bg_rotator_2,"animate_fade_resize",nil,0.5,data.ROTATOR_SIZE_2,data.ROTATOR_SIZE_2 * data.ROTATOR_SIZE_MUL,data.ROTATOR_SIZE_2,data.ROTATOR_SIZE_2 * data.ROTATOR_SIZE_MUL,data.FRAME_ALPHA,0,center_x,center_y,2)
		--season 10 + div drop fadeout here (0.75s)
		self:animate(season_title,"animate_fade",nil,0.75,1,0,nil,nil,season_title:y(),season_title:y() + 32)
		self:animate(info_div,"animate_fade",nil,0.75,1,0,nil,nil,info_div:y(),info_div:y() + 32)
	end)
	
	self:AnimateWait(6.85,function()
		self:animate(frame_diamond,"animate_fade_resize",nil,0.5,frame_diamond:w(),frame_diamond:w() * data.ROTATOR_SIZE_MUL,data.FRAME_DIAMOND_H,data.FRAME_DIAMOND_H * data.ROTATOR_SIZE_MUL,frame_diamond:alpha(),0,center_x,center_y,2)
	end)
	
	self:AnimateWait(7,function()
		self:animate(bg_rotator_3,"animate_fade_resize",nil,0.25,data.ROTATOR_SIZE_3,data.ROTATOR_SIZE_3 * data.ROTATOR_SIZE_MUL,data.ROTATOR_SIZE_3,data.ROTATOR_SIZE_3 * data.ROTATOR_SIZE_MUL,data.FRAME_ALPHA,0,center_x,center_y,2)				
		self:animate(rankup_master,"animate_fade",Panel.hide,0.5,rankup_master:alpha(),0)
	end)
	
	self:AnimateWait(7.1,function()
		self:animate(rank_title,"animate_fade",
			function ()
				self.info.is_animating_d2 = false --set flag
			end
		,0.75,1,0,nil,nil,rank_title:y(),rank_title:y() + 32)
	end)
end

function MHP:StartDestinyRankupOld(rank) --obsolete
	self:RecreateDestinyRankup()
	local data = self._huds.destiny
	local rankup_master = data.panel:child("rankup_master")
	local rankup_bound = rankup_master:child("rankup_bound")
	
	local center_x = rankup_master:w() / 2
	local center_y = rankup_master:h() / 2
	local center_box_y = rankup_bound:h() / 2
	
	
	local rank_icon = rankup_bound:child("rank_icon")
	
	rank_icon:set_alpha(0)
	rank_icon:set_image(data.ranks_atlas,unpack(data.get_rect(rank)))
	rank_icon:set_size(data.RANK_ICON_W,data.RANK_ICON_H)
	rank_icon:set_position(center_x - (rank_icon:w() / 2),center_box_y - ((rank_icon:h() / 2) + 16))
	
	local stripe_1 = rankup_bound:child("diag_stripe_1")
	local stripe_2 = rankup_bound:child("diag_stripe_2")
	local stripe_3 = rankup_bound:child("diag_stripe_3")
	local stripe_4 = rankup_bound:child("diag_stripe_4")
	local stripe_5 = rankup_bound:child("diag_stripe_5")
	
	local orange_1 = rankup_bound:child("orange_1")
	local orange_2 = rankup_bound:child("orange_2")
	
	local bg_rotator_1 = rankup_bound:child("bg_rotator_1")
	local bg_rotator_2 = rankup_master:child("bg_rotator_2")
	local bg_rotator_3 = rankup_master:child("bg_rotator_3")
	
	bg_rotator_2:set_alpha(0)
	bg_rotator_3:set_alpha(0)
	
	local frame_square = rankup_master:child("rank_frame_square")
	local frame_diamond = rankup_master:child("rank_frame_diamond")
	
	local crucible_icon = rankup_master:child("rankup_crucible_emblem")
	local blue_stripe = rankup_bound:child("blue_stripe")
	
	local rank_title_box = rankup_bound:child("rank_title_box")
	local rank_title_bg = rank_title_box:child("rank_title_bg")
	local rank_title_bg_white = rank_title_box:child("rank_title_bg_white")
	
	local rank_title = rank_title_box:child("rank_title")
	
	local rankup_infobox = rankup_bound:child("rankup_infobox")
	local season_title = rankup_infobox:child("season_title")
	local info_div = rankup_infobox:child("info_div")
	local rank_title = rankup_infobox:child("rank_title")
	
--	local rank_icon = rankup_bound:child("rankup_bound")
	
	local bg_skybox = rankup_bound:child("bg_skybox")
	
	local stripe_alpha = data.STRIPE_ALPHA
	
	local title_box_center_x = rank_title_box:w() / 2
	local title_box_center_y = rank_title_box:h() / 2
	
	
	--1
	self:animate(stripe_1,"animate_drift",nil,0.25,0,50,1.5)
	self:animate(stripe_2,"animate_drift",nil,0.25,0,200,1.5)
	self:animate(stripe_3,"animate_drift",nil,0.25,0,800,1.5)
	self:animate(stripe_4,"animate_drift",nil,0.25,0,500,1.5)
	self:animate(stripe_5,"animate_drift",nil,0.25,0,25,1.5)

	self:animate(orange_1,"animate_fade",nil,0.5,1,1,-orange_1:w(),0,nil,nil)
	self:animate(orange_2,"animate_fade",nil,0.5,1,1,2 * rankup_bound:w(),rankup_bound:w(),nil,nil)

	self:animate(crucible_icon,"animate_fade",nil,0.85,0,1)




	self:animate(blue_stripe,"animate_gradient_progress_simple",nil,0.5,self.color_data.destiny_blue,nil,0.1)
	
	self:animate(rank_title_bg,"animate_fade_resize",pulse_white,0.5,0,data.RANKUP_TITLE_W,nil,nil,data.RANK_TITLE_BG_ALPHA,data.RANK_TITLE_BG_ALPHA,title_box_center_x,title_box_center_y,3) --center_x,center_box_y)
	
	self:AnimateWait(0.4,function()
			--simple fadein "VALOR SUBRANK UP!"
		self:animate(rank_title,"animate_fade",nil,0.5,0,1) 
		
		--title bg fadein and grow
		self:AnimateWait(0.5,function()
			if alive(rank_title_bg_white) then 
				self:animate(rank_title_bg_white,"animate_fade_resize",nil,0.5,0,data.RANKUP_TITLE_W,nil,nil,data.RANK_TITLE_BG_ALPHA,0,title_box_center_x,title_box_center_y,3)--center_x,center_box_y)
			end	
		end)
		
		self:AnimateWait(2.75,function()
			if alive(rank_title_bg_white) then 
				self:animate(rank_title_bg_white,"animate_fade",function() --fadein quick
					self:animate(rank_title_bg_white,"animate_fade",nil,0.0625,data.RANK_TITLE_BG_ALPHA,0) --fadeout quick
				end,0.0625,0,data.RANK_TITLE_BG_ALPHA)
			end
		end)
		
	end)
	
	self:AnimateWait(1.66,function()
		self:animate(crucible_icon,"animate_fade",nil,0.75,1,0)
	end)
	
	self:AnimateWait(3,function()
		if alive(stripe_1) then 
		--todo cubic
			self:animate(stripe_1,"animate_fade",nil,0.5,stripe_alpha,0,stripe_1:x(),rankup_bound:w()+100)
			self:animate(stripe_2,"animate_fade",nil,0.5,stripe_alpha,0,stripe_2:x(),rankup_bound:w()+100)
			self:animate(stripe_3,"animate_fade",nil,0.5,stripe_alpha,0,stripe_3:x(),rankup_bound:w()+100)
			self:animate(stripe_4,"animate_fade",nil,0.5,stripe_alpha,0,stripe_4:x(),rankup_bound:w()+100)
			self:animate(stripe_5,"animate_fade",nil,0.5,stripe_alpha,0,stripe_5:x(),rankup_bound:w()+100)
		end
		
		--fadein rank icon from top
		self:AnimateWait(0.25,function()
			self:animate(rank_icon,"animate_fade",function() --fadein
				self:AnimateWait(3,function()
				
					--fadeout rank, frames, rotators
					--and then final panel
					self:animate(rank_icon,"animate_fade",nil,0.5,1,0,nil,nil,rank_icon:y(),rank_icon:y() + 32)
					
					self:AnimateWait(0.1,function()
						self:animate(frame_square,"animate_fade_resize",nil,0.5,frame_square:w(),frame_square:w() * data.ROTATOR_SIZE_MUL,data.FRAME_SQUARE_H,data.FRAME_SQUARE_H * data.ROTATOR_SIZE_MUL,frame_square:alpha(),0,center_x,center_y,2)
					end)
					self:AnimateWait(0.2,function()
						self:animate(bg_rotator_2,"animate_fade_resize",nil,1,data.ROTATOR_SIZE_2,data.ROTATOR_SIZE_2 * data.ROTATOR_SIZE_MUL,data.ROTATOR_SIZE_2,data.ROTATOR_SIZE_2 * data.ROTATOR_SIZE_MUL,data.FRAME_ALPHA,0,center_x,center_y,2)
					end)
					self:AnimateWait(0.33,function()
						self:animate(frame_diamond,"animate_fade_resize",nil,0.5,frame_diamond:w(),frame_diamond:w() * data.ROTATOR_SIZE_MUL,data.FRAME_DIAMOND_H,data.FRAME_DIAMOND_H * data.ROTATOR_SIZE_MUL,frame_diamond:alpha(),0,center_x,center_y,2)
					end)
					self:AnimateWait(0.5,function()
						self:animate(bg_rotator_3,"animate_fade_resize",nil,0.5,data.ROTATOR_SIZE_3,data.ROTATOR_SIZE_3 * data.ROTATOR_SIZE_MUL,data.ROTATOR_SIZE_3,data.ROTATOR_SIZE_3 * data.ROTATOR_SIZE_MUL,data.FRAME_ALPHA,0,center_x,center_y,2)				
						self:animate(rankup_master,"animate_fade",Panel.hide,0.66,rankup_master:alpha(),0)
					end)
				end)
			end
			,1,0,1,nil,nil,rank_icon:y(),center_box_y - (rank_icon:h() / 2),0.5)
		end)
		
		--fadein rotators and frames
		self:animate(bg_rotator_2,"animate_fade_resize",nil,1,data.ROTATOR_SIZE_2 * data.ROTATOR_SIZE_MUL,data.ROTATOR_SIZE_2,data.ROTATOR_SIZE_2 * data.ROTATOR_SIZE_MUL,data.ROTATOR_SIZE_2,0,data.ROTATOR_ALPHA_2,center_x,center_y,0.25)
		self:AnimateWait(0.5,function()
			self:animate(bg_rotator_3,"animate_fade_resize",nil,1,data.ROTATOR_SIZE_3 * data.ROTATOR_SIZE_MUL,data.ROTATOR_SIZE_3,data.ROTATOR_SIZE_3 * data.ROTATOR_SIZE_MUL,data.ROTATOR_SIZE_3,0,data.ROTATOR_ALPHA_2,center_x,center_y,0.25)
			self:animate(frame_diamond,"animate_fade_resize",nil,1,data.FRAME_DIAMOND_W * data.ROTATOR_SIZE_MUL,data.FRAME_DIAMOND_W,data.FRAME_DIAMOND_H * data.ROTATOR_SIZE_MUL,data.FRAME_DIAMOND_H,0,data.FRAME_ALPHA,center_x,center_y,0.5)
		end)
		self:AnimateWait(1,function()
			self:animate(frame_square,"animate_fade_resize",nil,0.5,data.FRAME_SQUARE_W * data.ROTATOR_SIZE_MUL,data.FRAME_SQUARE_W,data.FRAME_SQUARE_H * data.ROTATOR_SIZE_MUL,data.FRAME_SQUARE_H,0,data.FRAME_ALPHA,center_x,center_y,0.5)			
		end)
	end)
	
	self:AnimateWait(3,function()
		
		--title bg fade/shrink
		self:AnimateWait(0.1,function() 
			if alive(rank_title_box) then 
				self:animate(rank_title_box,"animate_fade_resize",function(o)
					o:hide()
				end
				,0.33,nil,nil,data.RANKUP_TITLE_H,0,nil,nil,center_x,center_box_y,3)
			end

			
			
			--split orange
			orange_1:set_image("",1,1,1,1)
			orange_1:set_size(rankup_bound:w(),data.RANKUP_HEIGHT/2)
			orange_1:set_position(0,0)
			orange_1:set_color(self.color_data.destiny_orange)
			
			orange_2:set_image("",1,1,1,1)
			orange_2:set_size(rankup_bound:w(),data.RANKUP_HEIGHT/2)
			orange_2:set_position(0,data.RANKUP_HEIGHT/2)
			orange_2:set_color(self.color_data.destiny_orange)
			
			self:animate(blue_stripe,"animate_fade",nil,0.5,blue_stripe:alpha(),0)
			self:animate(orange_1,"animate_fade",nil,0.5,nil,nil,nil,nil,orange_1:y(),-orange_1:h())
			self:animate(orange_2,"animate_fade",nil,0.5,nil,nil,nil,nil,orange_2:y(),data.RANKUP_HEIGHT)

		end)
	end)
	
	--2

	
	--[[
--duration,start_w,to_w,start_h,to_h,start_alpha,to_alpha,center_x,center_y,power)
	
		phase 1:
			-white stripes move from left (quadratic movement, variable speed)
			-blue stripe gradient progress left to right (quadratic movement)
			*orange bars from left/right (cubic movement)
		phase 2:
			"subrank" bg rect grows horizontally from center
			crucible icon fades in 
				white "pulse" rect fades out & grows horizontally from center
				"subrank" title fades in
			(hold for ~2s)
		phase 3:
			white "pulse" fades in and back out immediately
				"subrank" bg shrinks vertically from center
				"subrank" title fades out
				crucible icon fades out
				blue stripe fades out
				orange stripes separate vertically (exit up/down)
				white stripes exit right (quadratic movement, variable speed)
		phase 4: 
			rotator 2 fades in and shrinks from 110% to 100% size
				rotator 3 fades in from 110% to 100% size
					rotators 2 and 3 begin rotating
				diamond and square frames fade in from 110% to 100% size
				season title, rank title, and info div fade in and drop
				rank icon fades in and drops 
			(hold for ~3s)
		phase 5
			rank icon fades out and drops
			square frame grows and fades out
				rotator 2 grows and fades out
				diamond frame grows and fades out
					rotator 3 grows and fades out
						
						season title fades out + drops
						info div fades out + drops
						rank title fades out + drops
						bg fades out (and rotator 1)
						
	
	rankup_panel:child("")
	--]]
	
	
	
end

-- Misc cosmetic hud elements

function MHP:_create_misc(hud)

	local misc = hud:panel({
		name = "misc",
		layer = -1
	})
	self._huds.misc.panel = misc
	local data = self._huds.misc
	
	local eurotruck_scale = 0.5
	local eurotruck = misc:bitmap({
		name = "eurotruck",
		texture = "textures/misc_eurotruck",
		x = 0,
		y = 300,
		layer = -1
	})
	eurotruck:set_size(-eurotruck:w() * eurotruck_scale,eurotruck:h() * eurotruck_scale)	
	eurotruck:set_x(math.abs(eurotruck:w()))
--accidentally flipped the texture horizontally so the mirror is facing the wrong way, too lazy to re-export it	
--i'll just flip the width
	
	misc:bitmap({
		name = "civ_left",
		texture = "textures/misc_civ_left",
		x = 0,
		y = 0,
		layer = -1
	})

	local civ_right = misc:bitmap({
		name = "civ_right",
		texture = "textures/misc_civ_right",
		x = 0,
		y = 0,
		layer = -1
	})
	civ_right:set_x(misc:w() - civ_right:w())

	local bloons_scale = 0.5
	local bloons = misc:bitmap({
		name = "bloons",
		texture = "textures/misc_bloons",
		layer = 0
	})
	bloons:set_size(bloons:w() * bloons_scale,bloons:h() * bloons_scale)
	bloons:set_y(misc:h() - (bloons:h() + 150))
	bloons:set_x(misc:w() - (bloons:w() + 100))
	
	local terraria_hotbar = misc:bitmap({
		name = "terraria_hotbar",
		texture = "textures/terraria_hotbar",
		x = 210,
		y = 50,
		layer = 0
	})
	terraria_hotbar:set_size(terraria_hotbar:w() * 0.5,terraria_hotbar:h() * 0.5)
	
end


-- FTL: Faster Than Light crew info (just name + hp and a random FTL race icon)

function MHP:_create_ftl(hud)
	local data = self._huds.ftl
	local ftl = hud:panel({
		name = "ftl",
		layer = 3,
		x = data.hud_x,
		y = data.hud_y
	})
	self._huds.ftl.panel = ftl
--[[
	for i=1,4 do 
		local teammate = self:AddFTLTeammate(i)
		teammate:hide()
	end
--]]	
end

function MHP:AddFTLTeammate(i)
	local data = self._huds.ftl
	local ftl = data.panel
	
	if i and ftl and alive(ftl) then 
		local result = ftl:child("teammate_" .. tostring(i))
		if result and alive(result) then 
			result:show()
			return result
		end
	else
		return
	end
	
	local scale = data.scale
	local health_w = data.health_w * scale
	local health_h = data.health_h * scale
	local health_x = data.health_x * scale
	local health_y = data.health_y * scale
	
	local icon_size = data.icon_size * scale
	local icon_x = data.icon_x * scale
	local icon_y = data.icon_y * scale
	
	local teammate_w = data.teammate_w * scale
	local teammate_h = data.teammate_h * scale
	
	local teammate_margin_v = data.teammate_margin_v * scale
	
	local name_x = data.name_x * scale
	local name_y = data.name_y * scale
	local font_size = data.font_size * scale
	
	local teammate_panel = ftl:panel({
		name = "teammate_" .. tostring(i),
		layer = 3,
		w = teammate_w,
		h = teammate_h,
		y = (i - 1) * (teammate_h + teammate_margin_v)
	})
	local nameplate = teammate_panel:bitmap({
		name = "nameplate",
		layer = 1,
		texture = "textures/ftl_crew_plate",
		w = teammate_w,
		h = teammate_h
	})
	
	--ftl race icon;
--races are selected randomly from variants but distributed evenly among races
--the chance of getting a human is the same as getting an engi,
--even though there are 6 human variants and 1 engi variant
	local icon = teammate_panel:bitmap({
		name = "icon",
		layer = 2,
		texture = data.atlas_name,
		texture_rect = data.get_rect(),
		w = icon_size,
		h = icon_size,
		x = icon_x,
		y = icon_y
	})
	
	local name = teammate_panel:text({
		name = "name",
		layer = 4,
		text = "Bomfy M.",
		x = name_x,
		y = name_y,
		font = self._fonts.ftl,
		font_size = font_size,
		color = Color.white,
		visible = true
	})
	
	local health_bar = teammate_panel:rect({
		name = "health_bar",
		layer = 3,
		w = health_w,
		h = health_h,
		x = health_x + (teammate_panel:w() - health_w),
		y = health_y + (teammate_panel:h() - health_h),
		color = Color.green
	})
	
	local debug_ = teammate_panel:rect({
		name = "debug",
		color = Color(i/4,4/i,(i-4)/4),
		alpha = 0.5,
		visible = false
	})
	return teammate_panel
end

function MHP:RemoveFTLTeammate(i)
	local data = self._huds.ftl
	local ftl = data.panel
	if i and ftl and alive(ftl) then 
		local panel = ftl:child("teammate_" .. tostring(i))
		if panel and alive(panel) then 
			ftl:remove(panel)
			return true
		end
	end
	return false
end

function MHP:SetFTLHealth(i,current,total)
	local data = self._huds.ftl
	local ftl = data.panel
	if i and current and total and ftl and alive(ftl) then 
		local teammate = ftl:child("teammate_" .. tostring(i))
		if teammate and alive(teammate) then 
--			teammate:show()
			local ratio = current/total
			local hp_bar = teammate:child("health_bar")
			hp_bar:set_w(data.health_w * data.scale * ratio)
			if ratio <= data.health_threshold_empty then 
				hp_bar:set_color(self.color_data.ftl_bar_empty)
			elseif ratio <= data.health_threshold_low then 
				hp_bar:set_color(self.color_data.ftl_bar_low)
			else
				hp_bar:set_color(self.color_data.ftl_bar_full)
			end
		end
	end
end

function MHP:SetFTLTeammateName(i,raw_name)
	local data = self._huds.ftl
	local ftl = data.panel
	if i and raw_name and ftl and alive(ftl) then 
		local teammate = ftl:child("teammate_" .. tostring(i))
		if teammate and alive(teammate) then 
			local name = raw_name
			if string.len(raw_name) > data.name_max_len then
				name = string.sub(raw_name,1,data.name_max_len) .. "."
			end
			teammate:child("name"):set_text(name)
		end
	end
end


Hooks:Add("BaseNetworkSessionOnLoadComplete","MHP_OnLoadComplete",callback(MHP,MHP,"Init"))
Hooks:Add("JoyScoreCounter_SetScore","MHP_SetScore_JoyScore",function(...)
	Hooks:Remove("MHP_SetScore_NobleHUD")
	Hooks:Remove("MHP_SetScore_Builtin")
	MHP:SetScore(...)
end)
Hooks:Add("NobleHUD_OnAddScore","MHP_SetScore_NobleHUD",function(...)
	Hooks:Remove("MHP_SetScore_Builtin")
	MHP:SetScore(...)
end)
