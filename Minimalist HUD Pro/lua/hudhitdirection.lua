Hooks:PostHook(HUDHitDirection,"_add_hit_indicator","mhu_playerhitindicator",function(self,damage_origin, damage_type, fixed_angle)
	MHP:RegisterPlayerHitIndicator(damage_origin,damage_type,fixed_angle)
end)
