ToDReborn = ToDReborn or 
{
	 mod_path 	= ModPath
	,save_path 	= SavePath .. "ToDReborn2.json"
	,main_menu 	= "todreborn_menu"
	,heists_node = "heists_node"
	,options 	= { random_table = {}, level_ids = {} }
	,levels		= {}
	,levels_data= {}
	,contracts	= { ["unknow"] = 0 }
	,level_id = {}
	,override_all_value = {}
    ,override_all = {}
}

dofile(ToDReborn.mod_path .. "hede.lua")

Hooks:Add("GameSetupUpdate", "ToDGameSetupUpdate", function( t, dt )
	ToDReborn:update(t, dt)
	ToDReborn:UpdateEnvironment(t, dt)
end)

function ToDReborn:UpdateEnvironment(t, dt)
    if managers.viewport and managers.viewport:viewports() and self.NewEnvData then
        for key, data in pairs(self.NewEnvData) do
            for _, viewport in pairs(managers.viewport:viewports()) do
                local handler = viewport._env_handler
                local value = viewport:get_environment_value(key)
                local val_to_save = data.value
                
                if CoreClass.type_name(value) == "Vector3" then
                    local new_value
                    if CoreClass.type_name(data.value) == "number" then
                        new_value = Vector3(data.vtype == "x" and data.value or value.x, data.vtype == "y" and data.value or value.y, data.vtype == "z" and data.value or value.z)
                    else
                        new_value = Vector3(data.value.x or value.x, data.value.y or value.y, data.value.z or value.z)
                    end
                    handler:editor_set_value(key, new_value)
                    val_to_save = new_value
                else
                    handler:editor_set_value(key, data.value)
                end
                
                if data.save then
                    self.ModdedData = self.ModdedData or {}
                    self.ModdedData[data.path] = tostring(val_to_save)
                end                
            end
            self.NewEnvData[key] = nil
        end
	end
end

function ToDReborn:Load(settings)
	local file = io.open(self.save_path, "r")
	if file then
		for k, v in pairs(json.decode(file:read("*all")) or {}) do
			self.options[k] = v
		end
		file:close()
	end
end

function ToDReborn:Save(settings)
    local file = io.open(self.save_path, "w+")
    if file then
		local crash_fix = json.encode(self.options)
        file:write( crash_fix ~= "[]" and crash_fix or "{}" )
        file:close()
    end
end

ToDReborn:Load(ToDReborn.options.level_ids)

--------------------------------------------------------------------------------------------------------------

function GetTableValue(table,value)
	if table ~= nil then return table[value] end
	return nil
end

function ParseJob(data)
	for i , v in pairs( data.tables or {} ) do
		if v.level_id ~= nil then --log("level_id " ..tostring(v.level_id))
			--log("/ " .. v.level_id )
			ToDReborn.levels_data[ v.level_id ] = ToDReborn.levels_data[ v.level_id ] or 
			{
				 level_id 		= v.level_id
				,job_id 		= data.job_id
				,job_name_id	= GetTableValue(tweak_data.narrative.jobs[ data.job_id ], "name_id")
				,stage			= i + ( ( data.i and data.i - 1 ) or 0 )
				,contact		= GetTableValue(tweak_data.narrative.jobs[ data.job_id ], "contact") or "unknow"
			}
		elseif type(v) == "table" and v.level_id == nil then 
			ParseJob({ tables = v or {} , job_id = data.job_id , i = i })
		end
	end
end

function create_weather_table()
    for k, v in pairs(ToDReborn.weather_table) do
        ToDReborn.override_all_value[k] = v.text_id
		ToDReborn.override_all[k] = v.value
    end
    return ToDReborn.override_all_value, ToDReborn.override_all
end

function create_day_start_table()
    local start_t = {}
	local start_v = {}
    for k, v in pairs(ToDReborn.day_start_table) do
        start_t[k] = v.text_id
		start_v[k] = v.value
    end
    return start_t, start_v
end

function create_day_length_table()
	local length_t = {}
	local length_v = {}
    for k, v in pairs(ToDReborn.day_length_table) do
        length_t[k] = v.text_id
		length_v[k] = v.value
    end
    return length_t, length_v
end

function create_night_start_table()
    local start_t = {}
	local start_v = {}
    for k, v in pairs(ToDReborn.night_start_table) do
        start_t[k] = v.text_id
		start_v[k] = v.value
    end
    return start_t, start_v
end

function create_night_length_table()
	local length_t = {}
	local length_v = {}
    for k, v in pairs(ToDReborn.night_length_table) do
        length_t[k] = v.text_id
		length_v[k] = v.value
    end
    return length_t, length_v
end

ToDReborn.weather_table = {
	{
		value = "1",
		text_id = "tod_default_w"
	},
	{
		value = "2",
		text_id = "tod_raining_w"
	},
	{
		value = "3",
		text_id = "tod_snowing_w"
	}
}

ToDReborn.day_start_table = {
	{
		value = "1",
		text_id = "tod_num_1"
	},
	{
		value = "2",
		text_id = "tod_num_2"
	},
	{
		value = "3",
		text_id = "tod_num_3"
	},
	{
		value = "4",
		text_id = "tod_num_4"
	},
	{
		value = "5",
		text_id = "tod_num_5"
	},
{
		value = "6",
		text_id = "tod_num_6"
	},
	{
		value = "7",
		text_id = "tod_num_7"
	},
	{
		value = "8",
		text_id = "tod_num_8"
	},
	{
		value = "9",
		text_id = "tod_num_9"
	},
	{
		value = "10",
		text_id = "tod_num_10"
	},
	{
		value = "11",
		text_id = "tod_num_11"
	},
	{
		value = "12",
		text_id = "tod_num_12"
	},
	{
		value = "13",
		text_id = "tod_num_13"
	},
	{
		value = "14",
		text_id = "tod_num_14"
	},
	{
		value = "15",
		text_id = "tod_num_15"
	},
	{
		value = "16",
		text_id = "tod_num_16"
	},
	{
		value = "17",
		text_id = "tod_num_17"
	},
	{
		value = "18",
		text_id = "tod_num_18"
	},
	{
		value = "19",
		text_id = "tod_num_19"
	},
	{
		value = "20",
		text_id = "tod_num_20"
	},
	{
		value = "21",
		text_id = "tod_num_21"
	}
}

ToDReborn.day_length_table = {
	{
		value = "1",
		text_id = "tod_num_1"
	},
	{
		value = "2",
		text_id = "tod_num_2"
	},
	{
		value = "3",
		text_id = "tod_num_3"
	},
	{
		value = "4",
		text_id = "tod_num_4"
	},
	{
		value = "5",
		text_id = "tod_num_5"
	},
{
		value = "6",
		text_id = "tod_num_6"
	},
	{
		value = "7",
		text_id = "tod_num_7"
	},
	{
		value = "8",
		text_id = "tod_num_8"
	},
	{
		value = "9",
		text_id = "tod_num_9"
	},
	{
		value = "10",
		text_id = "tod_num_10"
	},
	{
		value = "11",
		text_id = "tod_num_11"
	},
	{
		value = "12",
		text_id = "tod_num_12"
	},
	{
		value = "13",
		text_id = "tod_num_13"
	},
	{
		value = "14",
		text_id = "tod_num_14"
	},
	{
		value = "15",
		text_id = "tod_num_15"
	},
	{
		value = "16",
		text_id = "tod_num_16"
	},
	{
		value = "17",
		text_id = "tod_num_17"
	},
	{
		value = "18",
		text_id = "tod_num_18"
	},
	{
		value = "19",
		text_id = "tod_num_19"
	},
	{
		value = "20",
		text_id = "tod_num_20"
	},
	{
		value = "21",
		text_id = "tod_num_21"
	},
	{
		value = "22",
		text_id = "tod_num_22"
	},
	{
		value = "23",
		text_id = "tod_num_23"
	},
	{
		value = "24",
		text_id = "tod_num_24"
	}
}
ToDReborn.night_start_table = {
	{
		value = "1",
		text_id = "tod_num_1"
	},
	{
		value = "2",
		text_id = "tod_num_2"
	},
	{
		value = "3",
		text_id = "tod_num_3"
	},
	{
		value = "4",
		text_id = "tod_num_4"
	},
	{
		value = "5",
		text_id = "tod_num_5"
	},
{
		value = "6",
		text_id = "tod_num_6"
	},
	{
		value = "7",
		text_id = "tod_num_7"
	},
	{
		value = "8",
		text_id = "tod_num_8"
	},
	{
		value = "9",
		text_id = "tod_num_9"
	},
	{
		value = "10",
		text_id = "tod_num_10"
	},
	{
		value = "11",
		text_id = "tod_num_11"
	},
	{
		value = "12",
		text_id = "tod_num_12"
	},
	{
		value = "13",
		text_id = "tod_num_13"
	},
	{
		value = "14",
		text_id = "tod_num_14"
	},
	{
		value = "15",
		text_id = "tod_num_15"
	},
	{
		value = "16",
		text_id = "tod_num_16"
	},
	{
		value = "17",
		text_id = "tod_num_17"
	},
	{
		value = "18",
		text_id = "tod_num_18"
	},
	{
		value = "19",
		text_id = "tod_num_19"
	},
	{
		value = "20",
		text_id = "tod_num_20"
	},
	{
		value = "21",
		text_id = "tod_num_21"
	}
}

ToDReborn.night_length_table = {
	{
		value = "1",
		text_id = "tod_num_1"
	},
	{
		value = "2",
		text_id = "tod_num_2"
	},
	{
		value = "3",
		text_id = "tod_num_3"
	},
	{
		value = "4",
		text_id = "tod_num_4"
	},
	{
		value = "5",
		text_id = "tod_num_5"
	},
{
		value = "6",
		text_id = "tod_num_6"
	},
	{
		value = "7",
		text_id = "tod_num_7"
	},
	{
		value = "8",
		text_id = "tod_num_8"
	},
	{
		value = "9",
		text_id = "tod_num_9"
	},
	{
		value = "10",
		text_id = "tod_num_10"
	},
	{
		value = "11",
		text_id = "tod_num_11"
	},
	{
		value = "12",
		text_id = "tod_num_12"
	},
	{
		value = "13",
		text_id = "tod_num_13"
	},
	{
		value = "14",
		text_id = "tod_num_14"
	},
	{
		value = "15",
		text_id = "tod_num_15"
	},
	{
		value = "16",
		text_id = "tod_num_16"
	},
	{
		value = "17",
		text_id = "tod_num_17"
	},
	{
		value = "18",
		text_id = "tod_num_18"
	},
	{
		value = "19",
		text_id = "tod_num_19"
	},
	{
		value = "20",
		text_id = "tod_num_20"
	},
	{
		value = "21",
		text_id = "tod_num_21"
	},
	{
		value = "22",
		text_id = "tod_num_22"
	},
	{
		value = "23",
		text_id = "tod_num_23"
	},
	{
		value = "24",
		text_id = "tod_num_24"
	}
}
--[[
function PrintTableNameList(table)
	for k , v in pairs(table) do
		log("/ " .. tostring(k) .. " /// " .. tostring(v) )
	end
end
--]]
--------------------------------------------------------------------------------------------------------------

Hooks:Add("MenuManagerInitialize", "ToDReborn_MMI", function(menu_manager)
	
	for i, level_id in pairs( tweak_data.levels._level_index ) do
        local cb_name_start = "StartAtDayCLBK_" .. tostring(level_id)
		local cb_name_disable = "DisableToDCLBK_" .. tostring(level_id)
		local cb_name_weather = "WeatherSelectorCLBK_" .. tostring(level_id)
		local cb_name_day_start_time = "TodRebornDayStartTimeCLBK_" .. tostring(level_id)
		local cb_name_day_length = "TodDayLengthCLBK_" .. tostring(level_id)
		local cb_name_night_start_time = "TodRebornNightStartTimeCLBK_" .. tostring(level_id)
		local cb_name_night_length = "TodNightLengthCLBK_" .. tostring(level_id)
		local cb_reset = "ToD_Config_Reset_" .. tostring(level_id)
        MenuCallbackHandler[cb_name_start] = function(self,item)
            ToDReborn.options.level_ids[level_id].start_at_day = item:value() == "on" and true or false
			ToDReborn._set_start_at_day = false
			ToDReborn:Save(ToDReborn.options.level_ids)
        	managers.environment_controller:refresh_render_settings()
        end
		MenuCallbackHandler[cb_name_disable] = function(self,item)
            ToDReborn.options.level_ids[level_id].disable_ToD = item:value() == "on" and true or false
			ToDReborn:Save(ToDReborn.options.level_ids)
        end
		MenuCallbackHandler[cb_name_weather] = function(self,item)
            ToDReborn.options.level_ids[level_id].weathersel = item:value()
			ToDReborn:Save(ToDReborn.options.level_ids)
        end
		MenuCallbackHandler[cb_name_day_start_time] = function(self,item)
            ToDReborn.options.level_ids[level_id].day_start_time = item:value()
			ToDReborn:Save(ToDReborn.options.level_ids)
        end
		MenuCallbackHandler[cb_name_day_length] = function(self,item)
            ToDReborn.options.level_ids[level_id].day_length = item:value()
			ToDReborn:Save(ToDReborn.options.level_ids)
        end
		MenuCallbackHandler[cb_name_night_start_time] = function(self,item)
            ToDReborn.options.level_ids[level_id].night_start_time = item:value()
			ToDReborn:Save(ToDReborn.options.level_ids)
        end
		MenuCallbackHandler[cb_name_night_length] = function(self,item)
            ToDReborn.options.level_ids[level_id].night_length = item:value()
			ToDReborn:Save(ToDReborn.options.level_ids)
        end
		MenuCallbackHandler[cb_reset] = function(self,item)
            local reset_start_at_day_val = true
			local heist_name = managers.job:current_level_id()
			local items_to_reset_start = {
				["ToDRebornStartAtDay_" .. tostring(level_id)] = true
			}
			local items_to_reset_disable = {
				["ToDRebornDisableToD_" .. tostring(level_id)] = true
			}
			local items_to_reset_weather = {
				["ToDRebornWeather_" .. tostring(level_id)] = true
			}
			local items_to_reset_day_start_time = {
				["ToDRebornDayStart_" .. tostring(level_id)] = true
			}
			local items_to_reset_day_length = {
				["ToDRebornDayLength_" .. tostring(level_id)] = true
			}
			local items_to_reset_night_start_time = {
				["ToDRebornNightStart_" .. tostring(level_id)] = true
			}
			local items_to_reset_night_length = {
				["ToDRebornNightLength_" .. tostring(level_id)] = true
			}

			local default_day_start_time = 3
			local default_day_length_time = 18
			local default_night_start_time = 21
			local default_night_length_time = 6
			
			if ToDReborn.HeistSpecificValues[level_id] and ToDReborn.HeistSpecificValues[level_id].start_at_day ~= nil then
				reset_start_at_day_val = ToDReborn.HeistSpecificValues[level_id].start_at_day
			end

			if ToDReborn.HeistSpecificValues[level_id] and ToDReborn.HeistSpecificValues[level_id].underlays and ToDReborn.HeistSpecificValues[level_id].underlays[1] ~= nil then 
				default_day_start_time = ToDReborn.HeistSpecificValues[level_id].underlays[1].day_start_time
				default_day_length_time = ToDReborn.HeistSpecificValues[level_id].underlays[1].day_length
			end

			if ToDReborn.HeistSpecificValues[level_id] and ToDReborn.HeistSpecificValues[level_id].underlays and ToDReborn.HeistSpecificValues[level_id].underlays[2] ~= nil then 
				default_night_start_time = ToDReborn.HeistSpecificValues[level_id].underlays[2].night_start_time
				default_night_length_time = ToDReborn.HeistSpecificValues[level_id].underlays[2].night_length
			end

			local default_disable_value = false
			local default_weather_value = 1
			
			MenuHelper:ResetItemsToDefaultValue( item, items_to_reset_start, reset_start_at_day_val )
			MenuHelper:ResetItemsToDefaultValue( item, items_to_reset_disable, default_disable_value )
			MenuHelper:ResetItemsToDefaultValue( item, items_to_reset_weather, default_weather_value )
			MenuHelper:ResetItemsToDefaultValue( item, items_to_reset_day_start_time, default_day_start_time )
			MenuHelper:ResetItemsToDefaultValue( item, items_to_reset_day_length, default_day_length_time )
			MenuHelper:ResetItemsToDefaultValue( item, items_to_reset_night_start_time, default_night_start_time )
			MenuHelper:ResetItemsToDefaultValue( item, items_to_reset_night_length, default_night_length_time )
        end
    end
	
    ToDReborn:Load(ToDReborn.options.level_ids)

end)

Hooks:Add("MenuManagerSetupCustomMenus", "ToDReborn_MMSC", function( menu_manager, nodes )
	MenuHelper:NewMenu( ToDReborn.main_menu )
	MenuHelper:NewMenu( ToDReborn.main_menu .. "_unknow" )
	MenuHelper:NewMenu( ToDReborn.heists_node )
	
	local function init_options()
		for i, level_id in pairs( tweak_data.levels._level_index ) do
			local heist_name = managers.job and managers.job:current_level_id()
			local underlays = deep_clone(ToDReborn.Underlays)
			ToDReborn.options.level_ids[level_id] = ToDReborn.options.level_ids[level_id] or {}
			if ToDReborn.options.level_ids[level_id] and ToDReborn.options.level_ids[level_id].disable_ToD == nil then
				ToDReborn.options.level_ids[level_id].disable_ToD = false
				ToDReborn:Save(ToDReborn.options.level_ids)
			end
			if ToDReborn.options.level_ids[level_id] and ToDReborn.options.level_ids[level_id].weathersel == nil then
				ToDReborn.options.level_ids[level_id].weathersel = 1
				ToDReborn:Save(ToDReborn.options.level_ids)
			end
			
			if ToDReborn.options.level_ids[level_id] and ToDReborn.options.level_ids[level_id].start_at_day == nil then
				if ToDReborn.HeistSpecificValues[level_id] and ToDReborn.HeistSpecificValues[level_id].start_at_day ~= nil then
					ToDReborn.options.level_ids[level_id].start_at_day = ToDReborn.HeistSpecificValues[level_id].start_at_day
					ToDReborn:Save(ToDReborn.options.level_ids)
				else
					ToDReborn.options.level_ids[level_id].start_at_day = true
				end
			end
			if ToDReborn.options.level_ids[level_id] and ToDReborn.options.level_ids[level_id].day_start_time == nil then
				if ToDReborn.HeistSpecificValues[level_id] and ToDReborn.HeistSpecificValues[level_id].underlays and ToDReborn.HeistSpecificValues[level_id].underlays[1] and ToDReborn.HeistSpecificValues[level_id].underlays[1].day_start_time ~= nil then
					ToDReborn.options.level_ids[level_id].day_start_time = ToDReborn.HeistSpecificValues[level_id].underlays[1].day_start_time
					ToDReborn:Save(ToDReborn.options.level_ids)
				else
					ToDReborn.options.level_ids[level_id].day_start_time = 3
				end
			end
			if ToDReborn.options.level_ids[level_id] and ToDReborn.options.level_ids[level_id].day_length == nil then
				if ToDReborn.HeistSpecificValues[level_id] and ToDReborn.HeistSpecificValues[level_id].underlays and ToDReborn.HeistSpecificValues[level_id].underlays[1] and ToDReborn.HeistSpecificValues[level_id].underlays[1].day_length ~= nil then
					ToDReborn.options.level_ids[level_id].day_length = ToDReborn.HeistSpecificValues[level_id].underlays[1].day_length
					ToDReborn:Save(ToDReborn.options.level_ids)
				else
					ToDReborn.options.level_ids[level_id].day_length = 18
				end
			end
			if ToDReborn.options.level_ids[level_id] and ToDReborn.options.level_ids[level_id].night_start_time == nil then
				if ToDReborn.HeistSpecificValues[level_id] and ToDReborn.HeistSpecificValues[level_id].underlays and ToDReborn.HeistSpecificValues[level_id].underlays[2] and ToDReborn.HeistSpecificValues[level_id].underlays[2].night_start_time ~= nil then
					ToDReborn.options.level_ids[level_id].night_start_time = ToDReborn.HeistSpecificValues[level_id].underlays[2].night_start_time
					ToDReborn:Save(ToDReborn.options.level_ids)
				else
					ToDReborn.options.level_ids[level_id].night_start_time = 21
				end
			end
			if ToDReborn.options.level_ids[level_id] and ToDReborn.options.level_ids[level_id].night_length == nil then
				if ToDReborn.HeistSpecificValues[level_id] and ToDReborn.HeistSpecificValues[level_id].underlays and ToDReborn.HeistSpecificValues[level_id].underlays[2] and ToDReborn.HeistSpecificValues[level_id].underlays[2].night_length ~= nil then
					ToDReborn.options.level_ids[level_id].night_length = ToDReborn.HeistSpecificValues[level_id].underlays[2].night_length
					ToDReborn:Save(ToDReborn.options.level_ids)
				else
					ToDReborn.options.level_ids[level_id].night_length = 6
				end
			end
		end
	end
	init_options()
	
	for k , v in pairs( tweak_data.narrative.contacts ) do 
		ToDReborn.contracts[k] = 0

		MenuHelper.menus = MenuHelper.menus or {}

		local new_menu = deep_clone( MenuHelper.menu_to_clone )
		new_menu._items = {}
		MenuHelper.menus[ToDReborn.main_menu .. "_" .. k] = new_menu
	end
	
	for level_id , name_id in pairs( ToDReborn.levels ) do
		local level_menu_name = ToDReborn.heists_node .. "_" .. tostring(level_id)
		MenuHelper:NewMenu(level_menu_name)
	end
end)

Hooks:Add("MenuManagerBuildCustomMenus", "ToDReborn_MMBCM", function( menu_manager, nodes )
	
	local function populate_level_menu_from_template(level_id,parent_menu_id)
		
		MenuHelper:AddButton({
			id 			= "todrebornID_Reset_" 	.. level_id,
			title 		= "todreborn_Reset_all",
			desc 		= "todrebornDesc_Resetall",
			callback 	= "ToD_Config_Reset_" .. level_id,
			menu_id 	= parent_menu_id,
			localized	= true
		})
		
		MenuHelper:AddToggle( {
			id 			= "ToDRebornStartAtDay_" 		.. level_id,
			title 		= "ToDRebornStartAtDay",
			desc 		= "ToDRebornStartAtDayDesc",
			callback 	= "StartAtDayCLBK_" .. level_id,
			menu_id 	= parent_menu_id,
			value 		= ToDReborn.options.level_ids[level_id].start_at_day,
			localized	= true
		})

		MenuHelper:AddToggle( {
			id 			= "ToDRebornDisableToD_" 		.. level_id,
			title 		= "ToDRebornDisableToD",
			desc 		= "ToDRebornDisableToDDesc",
			callback 	= "DisableToDCLBK_" .. level_id,
			menu_id 	= parent_menu_id,
			value 		= ToDReborn.options.level_ids[level_id].disable_ToD,
			localized	= true
		})

		MenuHelper:AddMultipleChoice( {
			id 			= "ToDRebornWeather_" .. level_id,
			title 		= "menu_weather_sel",
			desc 		= "todrebornDesc_weather_sel",
			callback 	= "WeatherSelectorCLBK_" .. level_id,
			items 		= create_weather_table(),
			menu_id 	= parent_menu_id,
			value 		= ToDReborn.options.level_ids[level_id].weathersel,
			localized	= true
		})
		
		MenuHelper:AddMultipleChoice( {
			id 			= "ToDRebornDayStart_" .. level_id,
			title 		= "menu_tod_day_start_time",
			desc 		= "menu_tod_day_start_time_desc",
			callback 	= "TodRebornDayStartTimeCLBK_" .. level_id,
			items 		= create_day_start_table(),
			menu_id 	= parent_menu_id,
			value 		= ToDReborn.options.level_ids[level_id].day_start_time,
			localized	= true
		})

		MenuHelper:AddMultipleChoice( {
			id 			= "ToDRebornDayLength_" .. level_id,
			title 		= "menu_tod_day_length_time",
			desc 		= "menu_tod_day_length_time_desc",
			callback 	= "TodDayLengthCLBK_" .. level_id,
			items 		= create_day_length_table(),
			menu_id 	= parent_menu_id,
			value 		= ToDReborn.options.level_ids[level_id].day_length,
			localized	= true
		})

		MenuHelper:AddMultipleChoice( {
			id 			= "ToDRebornNightStart_" .. level_id,
			title 		= "menu_tod_night_start_time",
			desc 		= "menu_tod_night_start_time_desc",
			callback 	= "TodRebornNightStartTimeCLBK_" .. level_id,
			items 		= create_night_start_table(),
			menu_id 	= parent_menu_id,
			value 		= ToDReborn.options.level_ids[level_id].night_start_time,
			localized	= true
		})

		MenuHelper:AddMultipleChoice( {
			id 			= "ToDRebornNightLength_" .. level_id,
			title 		= "menu_tod_night_length_time",
			desc 		= "menu_tod_night_length_time_desc",
			callback 	= "TodNightLengthCLBK_" .. level_id,
			items 		= create_night_length_table(),
			menu_id 	= parent_menu_id,
			value 		= ToDReborn.options.level_ids[level_id].night_length,
			localized	= true
		})
	end
	
	for level_id , name_id in pairs( ToDReborn.levels ) do
	
		local contract	= GetTableValue(ToDReborn.levels_data[ level_id ],"contact") or "unknow"
		local menu_id 	= ToDReborn.main_menu .. "_" .. contract

		ToDReborn.contracts[contract] = true
		
		local level_menu_id = ToDReborn.heists_node .. "_" .. level_id
		if MenuHelper:GetMenu(menu_id) then 
			populate_level_menu_from_template(level_id,level_menu_id)
			nodes[level_menu_id] = MenuHelper:BuildMenu	( level_menu_id )
		-- else
		-- 	log("No menu by id " .. tostring(menu_id) .. " found")
		end
	
		local contract	= GetTableValue(ToDReborn.levels_data[ level_id ],"contact") or "unknow"
		local menu_id 	= ToDReborn.main_menu .. "_" .. contract
		
		MenuHelper:AddButton({
			id 			= "todrebornid_" .. level_id,
			title 		= "todreborn_" .. level_id,
			desc 		= "todrebornDesc_" .. level_id,
			next_node 	= level_menu_id,
			menu_id 	= menu_id,
			priority 	= 100,
			localized	= true
		})

		if tweak_data.levels[level_id] and ToDReborn.options.level_ids[ level_id ] then
            if ToDReborn.options.level_ids[ level_id ].weathersel == 1 then
                
            elseif ToDReborn.options.level_ids[ level_id ].weathersel == 2 and not ToDReborn.options.level_ids[level_id].disable_ToD then
                if not PackageManager:loaded("packages/narr_glace") then
                    PackageManager:load( "packages/narr_glace" )
                end
                
                tweak_data.levels[level_id].player_style = "raincoat"
            elseif ToDReborn.options.level_ids[ level_id ].weathersel == 3 and not ToDReborn.options.level_ids[level_id].disable_ToD then
                if not PackageManager:loaded("packages/lvl_wwh") then
                    PackageManager:load( "packages/lvl_wwh" )
                end
                
                tweak_data.levels[level_id].player_style = "winter_suit"
            end
        end
	end
	
	nodes[ToDReborn.main_menu] = 
		MenuHelper:BuildMenu	( ToDReborn.main_menu )  
		MenuHelper:AddMenuItem	( nodes.blt_options, ToDReborn.main_menu, "todreborn_menuTitle", "todreborn_menuDesc")
	
	for k , v in pairs( ToDReborn.contracts ) do
		if v == true then
			local menu_id2 = ToDReborn.main_menu .. "_" .. k
			
			nodes[menu_id2] = 
			MenuHelper:BuildMenu	( menu_id2 )  
			MenuHelper:AddMenuItem	( nodes[ToDReborn.main_menu], menu_id2, menu_id2, "todreborn_menuDesc")
			
		end
	end
end)

--------------------------------------------------------------------------------------------------------------

Hooks:Add( "LocalizationManagerPostInit" , "todrebornLocalization" , function( self )
	self:add_localized_strings({
		 ["todreborn_menuTitle"] 			= "Time Of Day Reborn"
		,["todreborn_menuDesc"] 			= "Set the time of day and weather for each heist"
		
		,["tod_default_w"] = "Default"
		,["tod_raining_w"] 	= "Rain"
		,["tod_snowing_w"] = "Snow"
		
		,["todreborn_menu_unknow"]		= "Unknown Contracts"
		,["todreborn_Reset_all"]			= "Reset Level Settings"
		,["todrebornDesc_Resetall"]		= "Sets level settings to default"

		,["menu_weather_sel"] = "Weather"
		,["todrebornDesc_weather_sel"] = "Sets the weather for the heist (Requires a restart to take effect)"
		
		,["ToDRebornStartAtDay"] = "Start at day"
		,["ToDRebornStartAtDayDesc"] = "If selected the heist will start in the day"
		,["ToDRebornDisableToD"] = "Disable Time Of Day"
		,["ToDRebornDisableToDDesc"] = "Disables time of day per level"
		
		,["menu_tod_day_start_time"] = "Day Start Time"
		,["menu_tod_day_start_time_desc"] = "Sets the start time of the heist 1 is morning 21 is Day (Not Available ATM)"
		,["menu_tod_night_start_time"] = "Night Start Time"
		,["menu_tod_night_start_time_desc"] = "Sets the start time of the heist 1 is morning 21 is Night (Not Available ATM)"
		,["menu_tod_day_length_time"] = "Day Transition"
		,["menu_tod_day_length_time_desc"] = "Sets the length of the time it takes to transition from Day to Night"
		,["menu_tod_night_length_time"] = "Night Transition"
		,["menu_tod_night_length_time_desc"] = "Sets the length of the time it takes to transition from Night to Day"
	})
	
		for job_id , v in pairs( tweak_data.narrative.jobs ) do 
			for i , job_id2 in pairs( tweak_data.narrative.jobs[job_id].job_wrapper or {} ) do
				if tweak_data.narrative.jobs[ job_id2 ].name_id == nil then 
					ParseJob({ tables = tweak_data.narrative.jobs[job_id2].chain or {} , job_id = job_id })
				end
			end
		end
		
		for job_id , v in pairs( tweak_data.narrative.jobs ) do 
			ParseJob({ tables = tweak_data.narrative.jobs[job_id].chain or {} , job_id = job_id })
		end

		local 	CustomLoaded = 0
			for i , level_id in pairs( tweak_data.levels._level_index ) do
				-- Get levels id
				if 		tweak_data.levels[ level_id ] 
				and 	tweak_data.levels[ level_id ].name_id 
				--and not self[ level_id ].env_params 
				then	ToDReborn.levels[ level_id ] = tweak_data.levels[ level_id ].name_id end
			end
		
	for k , v in pairs( tweak_data.narrative.contacts ) do 
		self:add_localized_strings({ [ToDReborn.main_menu .. "_" .. k] = k .. " Contracts" })
	end

	for i = 1, 24 do
		self:add_localized_strings({ ["tod_num_" .. i] = tostring(i) })
	end
	
	for level_id , name_id in pairs( ToDReborn.levels ) do
	
		if ToDReborn.levels_data[ level_id ] then
			local job_name_id 	= ToDReborn.levels_data[ level_id ].job_name_id 	or ""
			local stage			= ToDReborn.levels_data[ level_id ].stage			or 0
			local LocText		= level_id
			local LocTextFull	= self:text(job_name_id)
			
			if Localizer:exists(Idstring(job_name_id)) then LocText = Localizer:lookup(Idstring(job_name_id)) end
			LocText = LocText .. " [" .. stage .. "]"
			
			self:add_localized_strings({ 
				 ["todreborn_"		.. level_id] = LocText
				,["todrebornDesc_" 	.. level_id] = level_id .. " :level_id\n" .. LocTextFull
			}) 
			
		else
			self:add_localized_strings({ 
				 ["todreborn_"		.. level_id] = level_id .. " [?]"
				,["todrebornDesc_" 	.. level_id] = level_id .. " : unknow"
			}) 
		end
	end
end )

--------------------------------------------------------------------------------------------------------------
-- From BeardLib
function table.merge(og_table, new_table)
    if not new_table then
        return og_table
    end

    for i, data in pairs(new_table) do
        i = type(data) == "table" and data.index or i
        if type(data) == "table" and type(og_table[i]) == "table" then
            og_table[i] = table.merge(og_table[i], data)
        else
            og_table[i] = data
        end
    end
    return og_table
end

-- function ToDReborn:TimeCheck(CurrentTime, NightStartTime, NightLength)
-- 	if not DayStartTime or DayLength then return end
-- 	if (NightStartTime + NightLength) > 24 and (((NightStartTime + NightLength) - 24) > CurrentTime or CurrentTime > NightStartTime) then
-- 		return true
-- 	elseif (NightStartTime + NightLength) <= 24 and CurrentTime > NightStartTime and CurrentTime <  (NightStartTime + NightLength) then
-- 		return true
-- 	end
-- 	return false
-- end

-- function ToDReborn:TimeCheckDay(CurrentTime, DayStartTime, DayLength)
-- 	if not NightStartTime or NightLength then return end
-- 	if (DayStartTime + DayLength) > 24 and (((DayStartTime + DayLength) - 24) > CurrentTime or CurrentTime > DayStartTime) then
-- 		return true
-- 	elseif (DayStartTime + DayLength) <= 24 and CurrentTime > DayStartTime and CurrentTime <  (DayStartTime + DayLength) then
-- 		return true
-- 	end
-- 	return false
-- end
-- function ToDReborn:TimeCheck(CurrentTime, StartTime, Length)
-- 	if not StartTime or Length then return end
-- 	if (StartTime + Length) > 24 and (((StartTime + Length) - 24) > CurrentTime or CurrentTime > StartTime) then
-- 		return true
-- 	elseif (StartTime + Length) <= 24 and CurrentTime > StartTime and CurrentTime <  (StartTime + Length) then
-- 		return true
-- 	end
-- 	return false
-- end

function ToDReborn:TimeCheck(CurrentTime, StartTime, Length, StartTime, Length)
	if not (StartTime or Length) then return end
    -- if not (NightStartTime or NightLength) then return end
	if (StartTime + Length) > 24 and (((StartTime + Length) - 24) > CurrentTime or CurrentTime > StartTime) then
		return true
	elseif (StartTime + Length) <= 24 and CurrentTime > StartTime and CurrentTime <  (StartTime + Length) then
		return true
	end
	-- if (NightStartTime + NightLength) > 24 and (((NightStartTime + NightLength) - 24) > CurrentTime or CurrentTime > NightStartTime) then
	-- 	return true
	-- elseif (NightStartTime + NightLength) <= 24 and CurrentTime > NightStartTime and CurrentTime <  (NightStartTime + NightLength) then
	-- 	return true
	-- end
	return false
end

-- function ToDReborn:TimeCheck(CurrentTime, DayStartTime, DayLength, NightStartTime, NightLength)
-- 	if not (DayStartTime or DayLength) then return end
--     if not (NightStartTime or NightLength) then return end

-- 	if (NightStartTime + NightLength) <= 24 and CurrentTime > NightStartTime and CurrentTime <  (NightStartTime + NightLength) then
-- 		return true
-- 	end
-- 	return false
-- end

function ToDReborn:GetNewValue(Percentage, day_value, night_value)
	local NewValue
	if CoreClass.type_name(night_value) == "Vector3" then
    
        NewValue = Vector3( (day_value.x * Percentage) + (night_value.x * (1-Percentage)), (day_value.y * Percentage) + (night_value.y * (1-Percentage)), (day_value.z * Percentage) + (night_value.z * (1-Percentage)) )
	else
		NewValue = (day_value * Percentage) + (night_value * (1-Percentage))
	end
	return NewValue
end

local start_at_day = false
local start_time_v, length_w

function ToDReborn:update(t, dt)
	
    -- for i, level_id in pairs( tweak_data.levels._level_index ) do --FPS Drop cause
		local heist_name = managers.job:current_level_id()
		if not self._set_start_at_day and heist_name then
			if ToDReborn.HeistSpecificValues[heist_name] and ToDReborn.HeistSpecificValues[heist_name].start_at_day ~= nil then
				start_at_day = ToDReborn.HeistSpecificValues[heist_name].start_at_day
			end
			
			if ToDReborn.options.level_ids[heist_name] then
				start_at_day = ToDReborn.options.level_ids[heist_name].start_at_day
			end
			
			self._set_start_at_day = true
		end

		-- if not self._set_start_time and heist_name then
		-- 	if ToDReborn.HeistSpecificValues[heist_name] and ToDReborn.HeistSpecificValues[heist_name].day_underlay ~= nil then
		-- 		start_time_v = ToDReborn.HeistSpecificValues[heist_name].day_underlay.start_time
		-- 	end
			
		-- 	if ToDReborn.options.level_ids[heist_name] then
		-- 		start_time_v = ToDReborn.options.level_ids[heist_name].start_time
		-- 	end
			
		-- 	self._set_start_time = true
		-- end

		if managers.game_play_central and managers.game_play_central._heist_timer and managers.game_play_central._heist_timer.running then
			ToDReborn.NewEnvData = ToDReborn.NewEnvData or {}
			
			local current_time = Application:time() - managers.game_play_central._heist_timer.start_time + managers.game_play_central._heist_timer.offset_time
			
			local sky_rotation = (current_time / 60) * 9
			if ToDReborn.options.level_ids[heist_name] and ToDReborn.options.level_ids[heist_name].disable_ToD then 
				
			else 
				ToDReborn.NewEnvData["3c084f67b1da34be"] = {value = sky_rotation, skip_save = true, path = "sky_orientation/rotation"}
			end
			
			local percentage = start_at_day and math.pow(math.cos(sky_rotation * 0.5),2) or math.pow(math.sin(sky_rotation * 0.5),2)
			
			local restricted_time = current_time
			
			while restricted_time > 2400 do
				restricted_time = restricted_time - 2400
			end
			
			local clock_time_24hr = (restricted_time / 100) 
			
			if start_at_day then
				clock_time_24hr = clock_time_24hr + 12
				if clock_time_24hr > 24 then
					clock_time_24hr = clock_time_24hr - 24  
				end
				
			end
			
			local underlays = deep_clone(ToDReborn.Underlays)
			
			if ToDReborn.HeistSpecificValues[heist_name] and ToDReborn.HeistSpecificValues[heist_name].underlays then
				table.merge(underlays, ToDReborn.HeistSpecificValues[heist_name].underlays)
			end

			-- if ToDReborn.HeistSpecificValues[heist_name] and ToDReborn.HeistSpecificValues[heist_name].day_underlay then
			-- 	table.merge(underlays, ToDReborn.HeistSpecificValues[heist_name].underlays)
			-- end

			-- if ToDReborn.HeistSpecificValues[heist_name] and ToDReborn.HeistSpecificValues[heist_name].night_underlay then
			-- 	table.merge(underlays, ToDReborn.HeistSpecificValues[heist_name].underlays)
			-- end
			
			local is_in_underlay
			local timecheck
			for i, underlay in pairs(underlays) do
				-- if start_at_day == true then
				-- 	timecheck = ToDReborn:TimeCheckDay(clock_time_24hr, underlay.day_start_time, underlay.day_length)
				-- else
				-- 	timecheck = ToDReborn:TimeCheck(clock_time_24hr, underlay.night_start_time, underlay.night_length)
				-- end
				if i ~= "default" and ToDReborn:TimeCheck(clock_time_24hr, underlay.day_start_time, underlay.day_length, underlay.night_start_time, underlay.night_length) then
					if ToDReborn.current_set_underlay ~= i then
						if managers.dyn_resource and not ToDReborn.options.level_ids[heist_name].disable_ToD then
							if not managers.dyn_resource:has_resource(Idstring("scene"), Idstring(underlay.path), managers.dyn_resource.DYN_RESOURCES_PACKAGE) then
								log("not loaded")
								managers.dyn_resource:load(Idstring("scene"), Idstring(underlay.path), managers.dyn_resource.DYN_RESOURCES_PACKAGE, nil)
							end
						end
						
						local path  = underlay.path
						if ToDReborn.options.level_ids[heist_name] and ToDReborn.options.level_ids[heist_name].disable_ToD then 
							
						else
							ToDReborn.NewEnvData["c268ed7c690ba2b7"] = {value = path, skip_save = true, real_path = "others/underlay", path = "underlay"}
						end
						if underlay.global_texture and ToDReborn.options.level_ids[heist_name] and ToDReborn.options.level_ids[heist_name].disable_ToD then
							
						elseif underlay.global_world_overlay_mask_texture and underlay.global_world_overlay_texture then
							ToDReborn.NewEnvData["ff4859e8e295618d"] = {value = underlay.global_world_overlay_mask_texture, skip_save = true, real_path = "others/global_world_overlay_mask_texture", path = "global_world_overlay_mask_texture"}
							ToDReborn.NewEnvData["27a7f31e750d8169"] = {value = underlay.global_world_overlay_texture, skip_save = true, real_path = "others/global_world_overlay_texture", path = "global_world_overlay_texture"}
						else
							ToDReborn.NewEnvData["c827955ef583d8ce"] = {value = underlay.global_texture, skip_save = true, real_path = "others/global_texture", path = "global_texture"}   
						end

						ToDReborn.current_set_underlay = i
					end
					is_in_underlay = true
				end
			end
			
			if ToDReborn.options.level_ids[heist_name] and ToDReborn.options.level_ids[heist_name].disable_ToD then 
				
			elseif not is_in_underlay then
				ToDReborn.NewEnvData["c268ed7c690ba2b7"] = {value = underlays.default.path, skip_save = true, real_path = "others/underlay", path = "underlay"}
				ToDReborn.current_set_underlay = "default"
			end
			
			local variables = deep_clone(ToDReborn.DefaultValues)
			local variables_rain = "lightning;rain"
			local variables_snow = "snow"

			if ToDReborn.options.level_ids[heist_name] and ToDReborn.options.level_ids[heist_name].weathersel == 2 and not ToDReborn.options.level_ids[heist_name].disable_ToD then
				local effects = string.split(variables_rain, ";")
				if managers.environment_effects then
					managers.environment_effects:set_active_effects(effects)
				end
			end

			if ToDReborn.options.level_ids[heist_name] and ToDReborn.options.level_ids[heist_name].weathersel == 3 and not ToDReborn.options.level_ids[heist_name].disable_ToD then
				local effects = string.split(variables_snow, ";")
				if managers.environment_effects then
					managers.environment_effects:set_active_effects(effects)
				end
			end

			if ToDReborn.HeistSpecificValues[heist_name] and ToDReborn.HeistSpecificValues[heist_name].variables then
				table.merge(variables, ToDReborn.HeistSpecificValues[heist_name].variables)
			end
			
			if underlays[ToDReborn.current_set_underlay] and underlays[ToDReborn.current_set_underlay].variable_overwrite then
				table.merge(variables, underlays[ToDReborn.current_set_underlay].variable_overwrite)
			end
			
			for name, data in pairs(variables) do
				local val_to_set = ToDReborn:GetNewValue(percentage, data.day_value, data.night_value)
				
				local parts = string.split(name, "/")
				if not data.disabled and ToDReborn.options.level_ids[heist_name] and not ToDReborn.options.level_ids[heist_name].disable_ToD then
					ToDReborn.NewEnvData[data.key] = {value = val_to_set, skip_save = true, real_path = name, path = parts[2]}
				end
			end
		end
	-- end
end