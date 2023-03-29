local text_original = LocalizationManager.text
local testAllStrings = false

function LocalizationManager:text(string_id, ...)
return string_id == "menu_difficulty_normal" and "no pipis"
or string_id == "menu_difficulty_hard" and "micropipis"
or string_id == "menu_difficulty_very_hard" and "minipipis"
or string_id == "menu_difficulty_overkill" and "HOLDOUT"
or string_id == "menu_difficulty_easy_wish" and "smoll pipis"
or string_id == "menu_difficulty_apocalypse" and "normal pipis"
or string_id == "menu_difficulty_sm_wish" and "YOU SURE ARE HUNG"
or string_id == "menu_toggle_one_down" and "DEEPER DEEPER"
or string_id == "menu_one_down" and "DEEPER DEEPER"

or testAllStrings == true and string_id
or text_original(self, string_id, ...)
end