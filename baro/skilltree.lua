local data = SkillTreeTweakData.init
function SkillTreeTweakData:init(tweak_data)
data(self, tweak_data)
local ps2 = {
upgrades = {"weapon_passive_headshot_damage_multiplier"},
cost = 0,
icon_xy = {1, 0},
name_id = "all_2",
desc_id = "all_2_desc"}
local ps4 = {
upgrades = {"passive_player_xp_multiplier",
"player_passive_suspicion_bonus",
"player_passive_armor_movement_penalty_multiplier"},
cost = 0,
icon_xy = {3, 0},
name_id = "all_4",
desc_id = "all_4_desc"}
local ps6 = {
upgrades = {"armor_kit",
"player_pick_up_ammo_multiplier"},
cost = 0,
icon_xy = {5, 0},
name_id = "all_6",
desc_id = "all_6_desc"}
local ps8 = {
upgrades = {"weapon_passive_damage_multiplier",
"passive_doctor_bag_interaction_speed_multiplier"},
cost = 0,
icon_xy = {7, 0},
name_id = "all_8",
desc_id = "all_8_desc"}
local pc1 = 0
local pc3 = 0
local pc5 = 0
local pc7 = 0
local pc9 = 0
local pdcb = "player_passive_loot_drop_multiplier"
table.insert(self.specializations,{
name_id = "jb'name",
desc_id = "jb'desc",{
upgrades = {
"player_health_decrease_1"
},
cost = pc1,
icon_xy = {1, 1},
name_id = "jb'perk1n",
desc_id = "jb'perk1d"},
ps2,{
upgrades = {
"player_health_decrease_1"
},
cost = pc3,
icon_xy = {1, 1},
name_id = "jb'perk3n",
desc_id = "jb'perk3d"},
ps4,{
upgrades = {
"player_uncover_multiplier", "player_armor_to_health_conversion"
},
cost = pc5,
icon_xy = {1, 1},
name_id = "jb'perk5n",
desc_id = "jb'perk5d"},
ps6,{
upgrades = {
"player_passive_health_regen"
},
cost = pc7,
icon_xy = {1, 1},
name_id = "jb'perk7n",
desc_id = "jb'perk7d"},
ps8,{
upgrades = {
"player_passive_damage_reduction_1", "player_tier_armor_multiplier_2", "player_tier_armor_multiplier_3", "player_damage_dampener_outnumbered_strong", "player_damage_dampener_close_contact_1", "player_damage_dampener_close_contact_2", "player_damage_dampener_close_contact_3", "player_killshot_close_panic_chance", "player_wild_health_amount_1"
},
cost = pc9,
icon_xy = {1, 1},
name_id = "jb'perk9n",
desc_id = "jb'perk9d"}})
end