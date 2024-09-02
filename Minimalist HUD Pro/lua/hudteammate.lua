Hooks:PostHook(HUDTeammate,"set_health","MHP_set_health",function(self,data)
	if self._main_player and data then 
		MHP:SetHealth(data.current,data.total)
	end
	MHP:SetFTLHealth(self._id,data.current,data.total)
end)

Hooks:PreHook(HUDTeammate,"remove_panel","MHP_remove_teammate",function(self,weapons_panel)
	MHP:RemoveTeammate(self._id)
end)

Hooks:PostHook(HUDTeammate,"set_name","MHP_set_teammate_name",function(self,name)
	MHP:SetTeammateName(self._id,name)
end)

Hooks:PostHook(HUDTeammate,"add_panel","MHP_add_teammate",function(self)
	MHP:AddTeammate(self._id)
end)

Hooks:PostHook(HUDTeammate,"set_armor","MHP_set_armor",function(self,data)
	if self._main_player and data then 
		MHP:SetArmor(data.current,data.total)
	end
end)

Hooks:PostHook(HUDTeammate,"set_deployable_equipment_amount","MHP_set_deployable_amount",function(self,index,data)
	if self._main_player and data then 
		MHP:SetDeployableAmount(data)
	end
end)

Hooks:PostHook(HUDTeammate,"set_grenades_amount","MHP_set_grenades_amount",function(self,data)
	if self._main_player and data and PlayerBase.USE_GRENADES then 
		MHP:SetGrenadesAmount(data)
	end
end)

Hooks:PostHook(HUDTeammate,"set_ammo_amount_by_type","MHP_set_ammo",function(self,...)
	if self._main_player then 
		MHP:SetAmmo(...)
	end
end)
