Hooks:PostHook(ChatManager,"receive_message_by_peer","beemovie_check_activate",function(self,channel_id,peer,raw_message)
	--Print("channel id?",channel_id)
	if channel_id ~= ChatManager.GAME then
		return
	end
	
	if not BeeMovie then
		log("BeeMovie: No BeeMovie global found; do you have BeardLib installed? My nerves are fried from riding on this emotional roller coaster!")
		Hooks:RemovePostHook("beemovie_check_activate")
		return
	end
	
	if not peer then 
		return
	elseif peer == managers.network:session():local_peer() then 
		if raw_message == BeeMovie.KEYWORD_DISABLE then
			if BeeMovie:IsEnabled() then
				self:_receive_message(ChatManager.GAME,BeeMovie._prefix,managers.localization:text("menu_beemovie_dialog_disabled",{word=BeeMovie.KEYWORD_ENABLE}),Color.yellow)
				BeeMovie:SetEnabled(false)
			end
			return
		elseif raw_message == BeeMovie.KEYWORD_ENABLE then
			if not BeeMovie:IsEnabled() then
				self:_receive_message(ChatManager.GAME,BeeMovie._prefix,managers.localization:text("menu_beemovie_dialog_enabled",{word=BeeMovie.KEYWORD_DISABLE}),Color.yellow)
				BeeMovie:SetEnabled(true)
			end
			return
		end
	elseif self:is_peer_muted(peer) then
		return
	end
	local peer_name = peer:name() or "man"
	
	if not BeeMovie:IsEnabled() or string.find(raw_message,BeeMovie._escaped_prefix) then
		return
	end
	
	local message_trimspace = string.gsub(raw_message,"^%s+","") -- trim all leading space
	message_trimspace = string.gsub(message_trimspace,"%s+"," ") -- trim extraneous (consecutive) spaces
	local message_lower = utf8.to_lower(message_trimspace)
	--local message = string.gsub(string.gsub(utf8.to_lower(raw_message),"%p",""),"%s","")
	
	local is_playing = BeeMovie:IsPlaying()
	if is_playing then 
		local a,b = BeeMovie:CheckBearwords(message_lower)
		if a then
			local found_word = string.sub(message_trimspace,a,b)
			local deactivation_message = BeeMovie._deactivation_messages[math.random(1,#BeeMovie._deactivation_messages)]
			local out_str = string.gsub(deactivation_message,"$WORD",string.upper(found_word))
			out_str = string.gsub(out_str,"$word",found_word)
			out_str = string.gsub(out_str,"$peer",peer_name)
			BeeMovie:SendChat(out_str,true)
			
			BeeMovie:Stop()
		end
	else
		local a,b = BeeMovie:CheckBuzzwords(message_lower)
		if a then
			local found_word = string.sub(message_trimspace,a,b)
			local activation_message = BeeMovie._activation_messages[math.random(1,#BeeMovie._activation_messages)]
			local out_str = string.gsub(activation_message,"$WORD",string.upper(found_word))
			out_str = string.gsub(out_str,"$word",found_word)
			out_str = string.gsub(out_str,"$peer",peer_name)
			BeeMovie:SendChat(out_str,true)
			
			BeeMovie:Start()
		end
	end	
end)