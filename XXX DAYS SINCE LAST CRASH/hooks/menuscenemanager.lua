local ThisModPath = ModPath
local ThisModSave = io.open(ThisModPath.."__record.json", "r")
local ThisModJson = {Hash = 'none', Since = os.time()}
if ThisModSave then
	ThisModJson = json.decode(ThisModSave:read("*all"))
	ThisModSave:close()
	ThisModSave = nil
else
	ThisModSave = io.open(ThisModPath.."__record.json", "w+")
	if ThisModSave then
		ThisModJson.Hash = "none"
		ThisModSave:write(json.encode(ThisModJson))
		ThisModSave:close()
		ThisModSave = nil
	end
end

local ThisUnitLinkToWep = {}
local logger_unit = "units/mods/chl_prop_workshop_scorer/chl_prop_workshop_scorer"
local logger_unit_ids = Idstring(logger_unit)

local banner_unit = "units/mods/chl_prop_workshop_scorer/editable_text_short/editable_text_short"
local banner_unit_ids = Idstring(banner_unit)

local crashlog_path = Application:nice_path(os.getenv("LOCALAPPDATA")..'/PAYDAY 2/', true)..'crashlog.txt'

local function ThisModSpawnCounter()
	if not managers.dyn_resource:is_resource_ready(Idstring("unit"), logger_unit_ids, managers.dyn_resource.DYN_RESOURCES_PACKAGE) then
		return
	end
	local __logger = World:spawn_unit(logger_unit_ids, Vector3(70, 200, 0), Rotation())
	if __logger then
		ThisUnitLinkToWep.__logger_unit = __logger
		if __logger.digital_gui and __logger:digital_gui() then
			local __NumDays = math.round( math.abs( (os.time()-ThisModJson.Since)/(3600*24) ) )
			__logger:digital_gui():number_set( math.min(__NumDays, 99999) )
		end
	end
	return
end

local function ThisModSpawnBanner()
	if not managers.dyn_resource:is_resource_ready(Idstring("unit"), banner_unit_ids, managers.dyn_resource.DYN_RESOURCES_PACKAGE) then
		return
	end
	local __banner = World:spawn_unit(banner_unit_ids, Vector3(24, 150, 45), Rotation(0, 90, 0))
	if __banner then
		ThisUnitLinkToWep.__banner_unit = __banner
		if __banner.editable_gui and __banner:editable_gui() then
			__banner:editable_gui():set_text("XXX DAYS SINCE LAST CRASH")
			__banner:editable_gui():set_font_size(0.87)
			__banner:editable_gui():set_font_color(Vector3(1, 1, 1))
			__banner:editable_gui():set_font("fonts/font_eroded")
			__banner:editable_gui():set_align("left")
			__banner:editable_gui():set_vertical("center")
			__banner:editable_gui():set_blend_mode("normal")
			__banner:editable_gui():set_render_template("diffuse_vc_decal")
			__banner:editable_gui():set_wrap(false)
			__banner:editable_gui():set_word_wrap(false)
			__banner:editable_gui():set_alpha(1)
			__banner:editable_gui():set_shape({0, 0, 1, 1})
		end
	end
	local __desc_since = World:spawn_unit(banner_unit_ids, Vector3(55, 150, 5), Rotation(0, 90, 0))
	if __desc_since then
		ThisUnitLinkToWep.__desc_since_unit = __desc_since
		if __desc_since.editable_gui and __desc_since:editable_gui() then
			__desc_since:editable_gui():set_text("DAYS SINCE LAST CRASH")
			__desc_since:editable_gui():set_font_size(0.40)
			__desc_since:editable_gui():set_font_color(Vector3(1, 1, 1))
			__desc_since:editable_gui():set_font("fonts/font_eroded")
			__desc_since:editable_gui():set_align("left")
			__desc_since:editable_gui():set_vertical("center")
			__desc_since:editable_gui():set_blend_mode("normal")
			__desc_since:editable_gui():set_render_template("diffuse_vc_decal")
			__desc_since:editable_gui():set_wrap(false)
			__desc_since:editable_gui():set_word_wrap(false)
			__desc_since:editable_gui():set_alpha(1)
			__desc_since:editable_gui():set_shape({0, 0, 1, 1})
		end
	end
	return
end

Hooks:Add("MenuManagerOnOpenMenu", "F_"..Idstring("XXX DAYS SINCE LAST CRASH::logger"):key(), function(self, menu)
	if menu == "menu_main" then
		DelayedCalls:Add("F_"..Idstring("DelayedCalls:XXX DAYS SINCE LAST CRASH::logger"):key(), 3, function()
			if io.file_is_readable(crashlog_path) then
				local __crash_log_text_ids = file.FileHash(crashlog_path)
				if __crash_log_text_ids ~= ThisModJson.Hash then
					ThisModJson.Since = os.time()
					ThisModJson.Hash = __crash_log_text_ids
					ThisModSave = io.open(ThisModPath.."__record.json", "w+")
					if ThisModSave then
						ThisModSave:write(json.encode(ThisModJson))
						ThisModSave:close()
					end
				end
			end
			if ThisUnitLinkToWep.__logger_unit and alive(ThisUnitLinkToWep.__logger_unit) then
				World:delete_unit(ThisUnitLinkToWep.__logger_unit)
				ThisUnitLinkToWep.__logger_unit = nil
			end
			if ThisUnitLinkToWep.__banner_unit and alive(ThisUnitLinkToWep.__banner_unit) then
				World:delete_unit(ThisUnitLinkToWep.__banner_unit)
				ThisUnitLinkToWep.__banner_unit = nil
			end
			if ThisUnitLinkToWep.__desc_since_unit and alive(ThisUnitLinkToWep.__desc_since_unit) then
				World:delete_unit(ThisUnitLinkToWep.__desc_since_unit)
				ThisUnitLinkToWep.__desc_since_unit = nil
			end
			if DB:has("unit", logger_unit) and managers.dyn_resource then
				managers.dyn_resource:load(Idstring("unit"), logger_unit_ids, managers.dyn_resource.DYN_RESOURCES_PACKAGE, ThisModSpawnCounter)
			end
			if DB:has("unit", banner_unit) and managers.dyn_resource then
				managers.dyn_resource:load(Idstring("unit"), banner_unit_ids, managers.dyn_resource.DYN_RESOURCES_PACKAGE, ThisModSpawnBanner)
			end
		end)
	end
end)

Hooks:PostHook(MenuSceneManager, "update", "F_"..Idstring("XXX DAYS SINCE LAST CRASH::RGB::update"):key(), function(self, t, dt)
	if type(ThisUnitLinkToWep) == "table" and ThisUnitLinkToWep.__banner_unit then
		local __banner = ThisUnitLinkToWep and alive(ThisUnitLinkToWep.__banner_unit) and ThisUnitLinkToWep.__banner_unit
		if __banner and __banner.editable_gui and __banner:editable_gui() then
			local __red = math.sin(135 * t) / 2 + 0.5
			local __green = math.sin(140 * t + 60) / 2 + 0.5
			local __blue = math.sin(145 * t + 120) / 2 + 0.5
			__banner:editable_gui():set_font_color(Vector3(__red, __green, __blue))
		end
	end
end)