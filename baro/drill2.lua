Drill.BROKEN_DRILL_EFFECT_NAME = "effects/payday2/particles/explosions/molotov_grenade"
--alternatively you can try some of these effects (or others if you have some, eg from the hashlist):

	--molotov pool; a bit too large, imo:
--"effects/payday2/particles/explosions/molotov_grenade"
	--small flame:
--"effects/payday2/particles/explosions/molotov_grenade_enemy_on_fire_endless_cheap"


--custom funcs
function Drill:kill_flaming_effect()
	if self._flaming_drill_effect and self._flaming_drill_effect ~= -1 then 
		World:effect_manager():fade_kill(self._flaming_drill_effect)
		self._flaming_drill_effect = nil
	end
end	
function Drill:create_flaming_effect()
	self._flaming_drill_effect = World:effect_manager():spawn({
		effect = Idstring(Drill.BROKEN_DRILL_EFFECT_NAME),
		parent = self._unit:orientation_object()
	})
end




Hooks:PostHook(Drill,"set_jammed","set_jammed_drill_flaming",function(self,jammed)
	if jammed then 
		if self._flaming_drill_effect and self._flaming_drill_effect ~= -1 then 
			--effect already active; do nothing
		else
			self:create_flaming_effect()
		end
	else
		self:kill_flaming_effect()
	end
end)

Hooks:PreHook(Drill,"destroy","destroy_drill_flaming",function(self)
	self:kill_flaming_effect()
end)

Hooks:PostHook(Drill,"done","done_drill_flaming",function(self)
	self:kill_flaming_effect()
end)