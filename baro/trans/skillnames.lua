
local text_original = LocalizationManager.text
local testAllStrings = false

function LocalizationManager:text(string_id, ...)
--Medic
return string_id == "menu_combat_medic_beta" and "Doctor"
or string_id == "menu_tea_time_beta" and "A quick solution"
or string_id == "menu_fast_learner_beta" and "analgesic"
or string_id == "menu_tea_cookies_beta" and "Barr"
or string_id == "menu_medic_2x_beta" and "the doctor fights"
or string_id == "menu_inspire_beta" and "the support"
--Controller
or string_id == "menu_triathlete_beta" and "Friendship friendship"
or string_id == "menu_cable_guy_beta" and "With confidence"
or string_id == "menu_joker_beta" and "have fun"
or string_id == "menu_stockholm_syndrome_beta" and "Three Stockholms pain"
or string_id == "menu_control_freak_beta" and "Engaged in criminals"
or string_id == "menu_black_marketeer_beta" and "Kidnapping"
--Sharpshooter
or string_id == "menu_stable_shot_beta" and "silent photography"
or string_id == "menu_rifleman_beta" and "Sagittarius"
or string_id == "menu_sharpshooter_beta" and "Maxman"
or string_id == "menu_single_shot_ammo_return_beta" and "Performance dynamics"
or string_id == "menu_speedy_reload_beta" and "aggressive reset"
or string_id == "menu_sniper_graze_damage" and "Xoq"

--Shotgunner
or string_id == "menu_underdog_beta" and "Under the dog"
or string_id == "menu_shotgun_cqb_beta" and "Physical CQB"
or string_id == "menu_shotgun_impact_beta" and "I guess"
or string_id == "menu_far_away_beta" and "Far from"
or string_id == "menu_close_by_beta" and "Exit e"
or string_id == "menu_overkill_beta" and "Commonly used words"
--Tank
or string_id == "menu_oppressor_beta" and "Flexibility"
or string_id == "menu_show_of_force_beta" and "He is dying"
or string_id == "menu_pack_mule_beta" and "carry"
or string_id == "menu_iron_man_beta" and "surpise and suprise"
or string_id == "menu_prison_wife_beta" and "the goal"
or string_id == "menu_juggernaut_beta" and "Man of steel"
--Ammo Specialist
or string_id == "menu_scavenging_beta" and "Duster"
or string_id == "menu_ammo_reservoir_beta" and "A storm"
or string_id == "menu_portable_saw_beta" and "I see portable"
or string_id == "menu_ammo_2x_beta" and "additonal Guide"
or string_id == "menu_carbon_blade_beta" and "I saw the massacre"
or string_id == "menu_bandoliers_beta" and "Pay in full"

--Engineer
or string_id == "menu_defense_up_beta" and "Third rule"
or string_id == "menu_sentry_targeting_package_beta" and "Ranger sight pack"
or string_id == "menu_eco_sentry_beta" and "save the horn"
or string_id == "menu_engineering_beta" and "business"
or string_id == "menu_jack_of_all_trades_beta" and "know everything"
or string_id == "menu_tower_defense_beta" and "Defensive tower"
--Breacher
or string_id == "menu_hardware_expert_beta" and "Instrumentation Technician"
or string_id == "menu_combat_engineering" and "Civil Engineering"
or string_id == "menu_drill_expert_beta" and "Sergeant Lars"
or string_id == "menu_more_fire_power" and "more fire"
or string_id == "menu_kick_starter_beta" and "Crowdfunding"
or string_id == "menu_fire_trap_beta" and "The flame is a trap"
--Oppressor
or string_id == "menu_steady_grip_beta" and "Assuming"
or string_id == "menu_heavy_impact_beta" and "Strong influence"
or string_id == "menu_fire_control_beta" and "Firefighting"
or string_id == "menu_shock_and_awe_beta" and "An open path"
or string_id == "menu_fast_fire_beta" and "Absolutely"
or string_id == "menu_body_expertise_beta" and "Physical experience"

--Shinobi
or string_id == "menu_jail_workout_beta" and "Hawaii"
or string_id == "menu_cleaner_beta" and "cleanser"
or string_id == "menu_chameleon_beta" and "Friday thoughts"
or string_id == "menu_second_chances_beta" and "nice"
or string_id == "menu_ecm_booster_beta" and "ECM ova."
or string_id == "menu_ecm_2x_beta" and "ECM lawyer"
--Artful Dodger
or string_id == "menu_sprinter_beta" and "Close the lid"
or string_id == "menu_awareness_beta" and "Pakuru"
or string_id == "menu_thick_skin_beta" and "Binay capsule"
or string_id == "menu_dire_need_beta" and "urgent need"
or string_id == "menu_insulation_beta" and "Trembling"
or string_id == "menu_jail_diet_beta" and "funny bastard"
--Silent Killer
or string_id == "menu_scavenger_beta" and "just the wind"
or string_id == "menu_optic_illusions" and "dirt"
or string_id == "menu_silence_expert_beta" and "master"
or string_id == "menu_backstab_beta" and "Small impact"
or string_id == "menu_spotter_teamwork_beta" and "High-quality goal"
or string_id == "menu_unseen_strike_beta" and "Invisible blow"

--Gunslinger
or string_id == "menu_equilibrium_beta" and "balance"
or string_id == "menu_dance_instructor" and "gun"
or string_id == "menu_akimbo_skill_beta" and "Campbell"
or string_id == "menu_gun_fighter_beta" and "Work together"
or string_id == "menu_expert_handling" and "I need help"
or string_id == "menu_trigger_happy_beta" and "The joy of joy"
--Revenant
or string_id == "menu_nine_lives_beta" and "I am alive"
or string_id == "menu_running_from_death_beta" and "Salvation from death"
or string_id == "menu_up_you_go_beta" and "Cradle yourself"
or string_id == "menu_perseverance_beta" and "Poonch music"
or string_id == "menu_feign_death" and "Signs of death"
or string_id == "menu_pistol_beta_messiah" and "Christ"
--Brawler
or string_id == "menu_martial_arts_beta" and "hello adi"
or string_id == "menu_bloodthirst" and "Bloody"
or string_id == "menu_steroids_beta" and "iron swing"
or string_id == "menu_drop_soap_beta" and "Revolt"
or string_id == "menu_wolverine_beta" and "Sea bear"
or string_id == "menu_frenzy" and "madness"



--Mastermind
or string_id == "st_menu_mastermind" and "teacher"
or string_id == "st_menu_mastermind_inspire" and "doctor:"
or string_id == "st_menu_mastermind_dominate" and "Administration staff"
or string_id == "st_menu_mastermind_single_shot" and "Sinifa"
--Enforcer
or string_id == "st_menu_enforcer" and "Actor"
or string_id == "st_menu_enforce_shotgun" and "employee"
or string_id == "st_menu_enforcer_armor" and "Heraldry"
or string_id == "st_menu_enforcer_ammo" and "web page"
--Technician
or string_id == "st_menu_technician" and "technology"
or string_id == "st_menu_technician_sentry" and "Bosco"
or string_id == "st_menu_technician_breaching" and "infringement"
or string_id == "st_menu_technician_auto" and "break"
--Ghost
or string_id == "st_menu_ghost" and "duh"
or string_id == "st_menu_ghost_stealth" and "Here"
or string_id == "st_menu_ghost_concealed" and "art"
or string_id == "st_menu_ghost_silencer" and "Murder in the world"
--Fugitive
or string_id == "st_menu_hoxton_pack" and "exile"
or string_id == "st_menu_fugitive_pistol_akimbo" and "They were saved"
or string_id == "st_menu_fugitive_undead" and "Resurrection"
or string_id == "st_menu_fugitive_berserker" and "Players"

or testAllStrings == true and string_id
or text_original(self, string_id, ...)
end