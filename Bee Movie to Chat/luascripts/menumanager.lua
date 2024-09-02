-- =======================================================================
-- if you're just doing a shallow edit (swapping out the script + keywords),
-- then you shouldn't need to edit anything in this file
-- instead, follow the instructions in this mod's files, at: beescripts/README.txt
-- =======================================================================


--definitely don't change these things:
local mod_path
local save_path = SavePath
if BeeMovie and BeeMovie.GetPath then 
	mod_path = BeeMovie:GetPath()
else
	mod_path = ModPath
end

BeeMovie = BeeMovie or {}
BeeMovie._mod_path = mod_path
BeeMovie._save_path = save_path
BeeMovie._settings_path = save_path .. "bee_movie_to_chat.json"
BeeMovie._menu_path = mod_path .. "menu/options.json"
BeeMovie.BEESCRIPT_VERSION = "v2" -- version checking for user-defined custom beescripts/strings
BeeMovie.KEYWORD_ENABLE = "enable"
BeeMovie.KEYWORD_DISABLE = "disable"
-- used for the config file that defines the version and prefix (for user-defined beescripts)

BeeMovie.default_settings = {
	logging_enabled = false,
	message_interval = 1,
	enabled = true
}
BeeMovie.settings = table.deep_map_copy(BeeMovie.default_settings)

BeeMovie._DEFAULT_LOCALIZATION_PATH = mod_path .. "localization/english.json"

BeeMovie._output_desired = false -- if true, trigger next script message

BeeMovie._prefix = "[BeeMovie]"
BeeMovie._escaped_prefix = "^%[BeeMovie]" -- prefix escaped for magic characters 

BeeMovie._VERSION_PATH = "beescripts/version.txt"
BeeMovie._PREFIX_PATH = "beescripts/prefix.txt"

BeeMovie._buzzwords = {} --get it? BUZZ-WORDS??? HAHAHAH i should write a newspaper column. maybe at BUZZFEED???? HhheuHueeuHEUehueheuehuHEUHEUEH
BeeMovie._BUZZWORDS_PATH = "beescripts/buzzwords.txt"

BeeMovie._bearwords = {}
BeeMovie._BEARWORDS_PATH = "beescripts/bearwords.txt"

BeeMovie._activation_messages = {}
BeeMovie._ACTIVATION_NOTIF_PATH = "beescripts/messageturnedon.txt"

BeeMovie._deactivation_messages = {}
BeeMovie._DEACTIVATION_NOTIF_PATH = "beescripts/messageturnedoff.txt"

BeeMovie._lines = {} -- store each line of text from the bee movie (or custom) script
BeeMovie._BEESCRIPT_PATH = "beescripts/script.txt"

BeeMovie._DELAYED_CALLBACK_KEY = "bee_movie_output"
BeeMovie._START_LINE = 1
BeeMovie._current_line = BeeMovie._START_LINE

function BeeMovie.file_exists(dir)
	return file.FileExists(dir)
end

function BeeMovie.escape_string(s)
	local output = ""
	for i=1,#s,1 do 
		local subs = string.sub(s,i,i)
		if string.find(subs,"[%(%)%.%%%+%-%*%?%[%^%&]") then
			output = output .. "%"
		end
		output = output .. subs
	end
	return output
end

function BeeMovie.read_first_line(dir)
	for line in io.lines(dir) do
		return line
	end
end

function BeeMovie._ReadFile(dir,tbl)
	--local file = io.open(dir, "r")
		--if you're wondering why i did it this way, it's because the bee movie script is 4.5k lines long, including the empty newlines which i did not remove
	if BeeMovie.file_exists(dir) then
		for line in io.lines(dir) do
			if string.gsub(line,"%s","") ~= "" then -- line and (line ~= "") and (line ~= "\n") then 
				table.insert(tbl,line)
				--if self.settings.logging_enabled then 
				--	self:Log(line)
				--end
			end
		end
		return true
	end
	
--	self:Log("Script file not found. You hear something?  Like tiny screaming?")
	
	return false
end

function BeeMovie:Log(s,params)
	if not self.settings.logging_enabled then 
		return
	end
	if Console then 
		Console:Log(s,params)
	else
		log(tostring(self._prefix) .. tostring(s))
	end
end

function BeeMovie:GetMessageInterval()
	return self.settings.message_interval
end

function BeeMovie:IsPlaying()
	return self._output_desired
end

function BeeMovie:Start()
	self._output_desired = true
	local delayed_calls = DelayedCalls
	delayed_calls:Add(self._DELAYED_CALLBACK_KEY,self:GetMessageInterval(),callback(self,self,"DoOutput"))	
end

function BeeMovie:Stop()
	local delayed_calls = DelayedCalls
	-- due to a quirk in how DelayedCalls queues removal calls, it's necessary to Add() a dummy callback at the same time as Remove(),
	-- or else the Remove() will be stored and will cancel out the next delayed callback from this mod, even if it's valid/desired.
	-- ...which, really, makes Remove() sort of useless, doesn't it?
	
	delayed_calls:Add(self._DELAYED_CALLBACK_KEY,0,function()end)	
	delayed_calls:Remove(self._DELAYED_CALLBACK_KEY)
	self._output_desired = false
end

function BeeMovie:SetEnabled(state)
	self.settings.enabled = state
	if not state then 
		self:Stop()
	end
end

function BeeMovie:IsEnabled()
	return self.settings.enabled
end

function BeeMovie:Toggle(state)
	if state ~= nil then 
		self._output_desired = not not state
	else
		self._output_desired = not self._output_desired
	end
end

function BeeMovie:SetLine(n)
	self._current_line = tonumber(n) or self._current_line
end

function BeeMovie:GetLine()
	return self._current_line,self._current_line and self._lines[self._current_line]
end

function BeeMovie:SendChat(text,prepend)
	if string.len(text) > 0 then
		if managers.chat then 
			if prepend then
				text = self._prefix .. " " .. text
			end
			managers.chat:send_message(ChatManager.GAME, managers.network.account:username(),text)
			return true
		else
			self:Log("ChatManager not found. What were we thinking? Look at us. We're just a couple of bugs in this world.")
		end
	else
		self:Log("Error: Empty string! Do you have all of your string files set up correctly?")
	end
end

function BeeMovie:DoOutput()
	if self:IsPlaying() and self:IsEnabled() then 
		local num,text = self:GetLine()	
		if text then 
			-- output this line
			if self:SendChat(text,true) then 
				self:SetLine(num + 1)
			end
			
			-- queue the next line in the script
			local delayed_calls = DelayedCalls
			delayed_calls:Add(self._DELAYED_CALLBACK_KEY,self:GetMessageInterval(),callback(self,self,"DoOutput"))
		else
			--reached the end of the script
			self:SetLine(self._START_LINE)
			self:Stop()
			self:Log("Did not find valid text. Stopping... You snap out of it!")
		end
	end
end

function BeeMovie:SetPrefix(str)
	self._prefix = str
	self._escaped_prefix = self.escape_string(str)
end

function BeeMovie:SaveSettings()
	local file = io.open(self._settings_path,"w+")
	if file then
		file:write(json.encode(self.settings))
		file:close()
	end
end

function BeeMovie:LoadSettings()
	local file = io.open(self._settings_path, "r")
	if file then
		for k, v in pairs(json.decode(file:read("*all"))) do
			self.settings[k] = v
		end
	end
end

function BeeMovie:LoadStrings()
	local version_match = self:CheckVersion()
	
	self:ReadPrefix(version_match)
	self:ReadBearwords(version_match)
	self:ReadBuzzwords(version_match)
	self:ReadBeescript(version_match)
	self:ReadActivationMessages(version_match)
	self:ReadDeactivationMessages(version_match)
end

function BeeMovie:CheckVersion()
	local path = self._save_path .. self._VERSION_PATH
	if self.file_exists(path) then
		local local_version = self.BEESCRIPT_VERSION
		local custom_version = self.read_first_line(path)
		if local_version == custom_version then
			--self:Log(string.format("Version match: custom %s, default %s",custom_version,self.BEESCRIPT_VERSION))
			return true
		else
			self:Log(string.format("Version mismatch: custom %s, default %s",custom_version,local_version))
			return false
		end
	end
end

function BeeMovie:ReadPrefix(allow_custom)
	local path_main = self._mod_path .. self._PREFIX_PATH
	local path_alt = self._save_path .. self._PREFIX_PATH
	local prefix 
	if allow_custom and self.file_exists(path_alt) then
		prefix = self.read_first_line(path_alt)
	elseif self.file_exists(path_main) then
		prefix = self.read_first_line(path_main)
	else
		self:Log("No prefix file found! Who's been touching my stuff?") 
	end
	if prefix then
		self:SetPrefix(prefix)
	end
end

function BeeMovie:ReadActivationMessages(allow_custom)
	local path_main = self._mod_path .. self._ACTIVATION_NOTIF_PATH
	local path_alt = self._save_path .. self._ACTIVATION_NOTIF_PATH
	
	if allow_custom and self._ReadFile(path_alt,self._activation_messages) then
		self:Log(string.format("Successfully read custom activation messages file from %s",path_alt))
	elseif self._ReadFile(path_main,self._activation_messages) then
		self:Log(string.format("Successfully read default activation messages file from %s",path_main))
	else
		self:Log("Error! Failed to read activation messages file!")
	end
end
	
function BeeMovie:ReadDeactivationMessages(allow_custom)
	local path_main = self._mod_path .. self._DEACTIVATION_NOTIF_PATH
	local path_alt = self._save_path .. self._DEACTIVATION_NOTIF_PATH
	
	if allow_custom and self._ReadFile(path_alt,self._deactivation_messages) then
		self:Log(string.format("Successfully read custom deactivation messages file from %s",path_alt))
	elseif self._ReadFile(path_main,self._deactivation_messages) then
		self:Log(string.format("Successfully read default deactivation messages file from %s",path_main))
	else
		self:Log("Error! Failed to read deactivation messages file!")
	end
end

function BeeMovie:ReadBearwords(allow_custom)
	local path_main = self._mod_path .. self._BEARWORDS_PATH
	local path_alt = self._save_path .. self._BEARWORDS_PATH
	
	if allow_custom and self._ReadFile(path_alt,self._bearwords) then
		self:Log(string.format("Successfully read custom bearwords file from %s",path_alt))
	elseif self._ReadFile(path_main,self._bearwords) then
		self:Log(string.format("Successfully read default bearwords file from %s",path_main))
	else
		self:Log("Error! Failed to read bearwords file!")
	end
end

function BeeMovie:ReadBuzzwords(allow_custom)
	local path_main = self._mod_path .. self._BUZZWORDS_PATH
	local path_alt = self._save_path .. self._BUZZWORDS_PATH
	
	if allow_custom and self._ReadFile(path_alt,self._buzzwords) then
		self:Log(string.format("Successfully read custom buzzwords file from %s",path_alt))
	elseif self._ReadFile(path_main,self._buzzwords) then
		self:Log(string.format("Successfully read default buzzwords file from %s",path_main))
	else
		self:Log("Error! Failed to read buzzwords file!")
	end
end

-- read bee movie script or custom user script
function BeeMovie:ReadBeescript(allow_custom)
	local path_main = self._mod_path .. self._BEESCRIPT_PATH
	local path_alt = self._save_path .. self._BEESCRIPT_PATH
	if allow_custom and self._ReadFile(path_alt,self._lines) then
		self:Log(string.format("Successfully read custom beescript file from %s",path_alt))
	elseif self._ReadFile(path_main,self._lines) then
		self:Log(string.format("Successfully read default beescript file from %s",path_main))
	else
		self:Log("Error! Failed to read beescript file!")
	end
end

function BeeMovie._CheckWordMatch(tbl,str)
	for _,keyword in ipairs(tbl) do 
		local a,b = string.find(str,keyword)
		if a then
			return a,b
		end
	end
end

--get it? BUZZ-WORDS??? HAHAHAH i should write a newspaper column. maybe at BUZZFEED???? HhheuHueeuHEUehueheuehuHEUHEUEH
function BeeMovie:CheckBuzzwords(str)
	return self._CheckWordMatch(self._buzzwords,str)
end

function BeeMovie:CheckBearwords(str)
	return self._CheckWordMatch(self._bearwords,str)
end

Hooks:Add("MenuManagerInitialize","BeeMovie_MenuManagerInitialize",function(menu_manager)
	MenuCallbackHandler.callback_beemovie_toggle_enabled = function(self,item)
		BeeMovie.settings.enabled = item:value() == "on"
		BeeMovie:SaveSettings()
	end
	MenuCallbackHandler.callback_beemovie_toggle_logging = function(self,item)
		BeeMovie.settings.message_interval = item:value() == "on"
		BeeMovie:SaveSettings()
	end
	MenuCallbackHandler.callback_beemovie_change_message_interval = function(self,item)
		BeeMovie.settings.message_interval = tonumber(item:value())
		BeeMovie:SaveSettings()
	end
	BeeMovie:LoadSettings()
	BeeMovie:LoadStrings()
	MenuHelper:LoadFromJsonFile(BeeMovie._menu_path, BeeMovie, BeeMovie.settings)
end)

Hooks:Add("LocalizationManagerPostInit", "BeeMovie_LocalizationManagerPostInit", function( loc )
	if not BeardLib then
		loc:load_localization_file(BeeMovie._DEFAULT_LOCALIZATION_PATH)
	end
end)

