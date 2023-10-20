local old_playercarry_enter = PlayerCarry.enter
function PlayerCarry:enter(state_data, enter_data)
	old_playercarry_enter(self, state_data, enter_data)
	local randomNumber1 = math.random(-90, 90) --lol? Jaro Nad je kokooooot
	self._unit:camera():camera_unit():base():set_target_tilt(randomNumber1) --bolo 360000
end