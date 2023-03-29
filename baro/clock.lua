local y = 1 --vertical position of clock
local FONT_SIZE = 30 --size of the clock text
local text_color = Color.white

Hooks:PostHook(HUDHeistTimer, "init", "clock_create", function(self)
	self._timer_text:set_visible(false)
	self.clock_text = self._heist_timer_panel:text({
		name = "clock_text",
		text = "00:00",
		font_size = FONT_SIZE,
		font = tweak_data.hud.medium_font_noshadow,
		color = text_color,
		align = "center",
		vertical = "bottom",
		y = y,
		layer = 1
	})
end)

local set_time_original = HUDHeistTimer.set_time
function HUDHeistTimer:set_time(time)
	if not self._enabled or math.floor(time) < self._last_time then
		return
	end
	set_time_original(self, time)
	self.clock_text:set_text(os.date("%H:%M"))
end