Hooks:Add("LocalizationManagerPostInit", "payment_date_2_EaA", function(loc) 
	LocalizationManager:add_localized_strings({
		--Armor
		bm_armor_level_1 = "Two Pieces of Clothing",	--Suit
		bm_armor_level_1_desc = "No fines, no visibility.\nCriminals must wear two normal clothes:\n\nIt does not provide any additional protection. However, having hidden objects at the top is the best choice for thieves who want to communicate with people in peace.\n\nDresses are commonly used at weddings, funerals, or on special occasions in bank robberies.",
		bm_armor_level_2 = "Light Clay",	--LBV
		bm_armor_level_2_desc = "There are penalties for not knowing the organization.\nThe hood and cover are easy to hold. We provide quality clothing for good safety and suitable protection options.\n\nThe chief of staff, VIPs, sky marshals, state police, and team security are simple and dangerous.",
		bm_armor_level_3 = "Armor",	--BV
		bm_armor_level_3_desc = "Short movement and poor visual acuity\nA tight -fitting dress is a fun garment that covers your entire body. This is an excellent defense for low -pitched rifles and ammunition. This is important for everyone to know.\n\nPolice officers wearing protective clothing. Guards and bodyguards",
		bm_armor_level_4 = "Ball Weight Protection",	--HBV
		bm_armor_level_4_desc = "Fun little activities and regular activities.\nThis is a fitted dress with an additional skirt that comes with the Smart Arms dress. Combine protective clothing with shoulder and hip protection. That is why it is the best protection.\n\nMilitary Police and Permanent Rescue Service Everyone wears durable protective gloves.",
		bm_armor_level_5 = "Bulletproof Armor",	--Flak
		bm_armor_level_5_desc = "The smallest movement loss is the normal viewing distance.\nGenesis Safety Industries' seat belts are a new representative of traditional strength. Imagine machine guns and ammunition.\n\nCombine heavy ball gear with shoulders and side shields to protect your spine.\n\nFTSU GenSec soldiers, combatants and work groups wear protective clothing.",
		bm_armor_level_6 = "Combination Clothing",	--CTV
		bm_armor_level_6_desc = "Good in the beginning, but good.\nStrategic clothing combo designed to meet the difficult needs of modern warfare. Made from a powerful ballistic material, it is designed to carry heavy items such as bags, rifles, radios and other accessories.\n\nThe military, security guards and other military units around the world wear individually ordered tactical uniforms.",
		bm_armor_level_7 = "Waste Disposal is Reviewed Regularly",	--ICTV
		bm_armor_level_7_desc = "You can see the lake moving forward.\nThe Whannell Compound Tactical West is a stolen driving model supported by the genetic safety industry.\n\nUses hardware and software tools based on white Mesa technology. The transparent layer of fibers is attached to a flat plate and is very sensitive, which leads to the removal and protection of ions. In short, it provides complete protection.\n\nThis is not for sale, but this is what the sex protection industry needs.",

		--Deployables
		debug_ammo_bag = "Bullet", --Inventory screen
		bm_equipment_ammo_bag = "Bullet", --Deployable Screen
		bm_equipment_ammo_bag_desc = "Set $BTN_USE_ITEM to work with your inbox. The lock key cannot be removed after installation, but you can get more ammo by pressing the $BTN_INTERACT key. Weapons can be doubled. Disappears when the ammo pouch is depleted. Check your ammo pouch to see how often you use it.\n\nA pistol is a carry bag designed to allow soldiers to fight other weapons.",
		debug_doctor_bag = "See a Doctor",
		bm_equipment_doctor_bag = "See a Doctor",
		bm_equipment_doctor_bag_desc = "To use the doctor's folder, you need to change it to save $BTN_USE_ITEM. Customs cannot be canceled. However, if you click $BTN_INTERACT during this time, you and your colleagues will be able to use them. If the player arrives before leaving the hospital, he will come back with a medical kit. Can be used twice\n\nIt disappears when the doctor's bag is empty. If you check the doctor's bag, you can see that his workload is decreasing.\n\nMedical bags are bags used by doctors and professionals to carry medicines and medicines.",
		debug_sentry_gun = "Gun Turret",
		bm_equipment_sentry_gun = "Gun Turret",
		bm_equipment_sentry_gun_desc = "Press and hold the $BTN_USE_ITEM button to use gravity. It operates up to 30 per cent of VAPs. The arrows can be damaged, but if not completely destroyed, the remaining towers can be retained automatically with the arrows. When the bullet is fired, it stops firing, but it can be fired several times after firing.\n\nThe sensor automatically opens and detects the sensor. It often works as a drawing material and attracts the attention of you and your team.",
		debug_silent_sentry_gun = "A Weapon of Silence",
		bm_equipment_sentry_gun_silent = "A Weapon of Silence",
		bm_equipment_sentry_gun_silent_desc = "You must press $BTN_USE_ITEM to use the safety gun. It is used by 30% of all soldiers. You can shoot and destroy, but collect more and return until the guard's weapons run out. The lights are off when you use the cartridges, but you can remove and reload them after installing them.\n\nA warning weapon is a simple weapon on the part of the archer, as it is used to destroy enemies rather than paying close attention to the main target.",
		debug_trip_mine = "My Travel",
		bm_equipment_trip_mine = "My Travel",
		bm_equipment_trip_mine_desc = "$BTN_USE_ITEM must be enabled to use the travel engine. You can switch from burst mode to the sensor by pressing the laser trigger $BTN_INTERACT.\n\nHold down $BTN_INTERACT when the loan is paid. When it disappears, it explodes instantly. Travel costs are wounds that can hurt or kill enemies crossing the cross. Times and routes are often used for full-time payments. Both are great for combat situations.",
		menu_equipment_armor_kit = "Body Protection",
		bm_equipment_armor_kit = "Body Protection",
		bm_equipment_armor_kit_desc = "To use the slash, press $BTN_USE_ITEM to use the weapon correctly. Then you will have two clothes.\n\nThe bag is not needed and will be lost if used. The duffel bag was a portable bag that could be used under the elevator.",
		menu_equipment_bodybags_bag = "Bodybuilding Information",
		bm_equipment_bodybags_bag = "Bodybuilding Information",
		bm_equipment_bodybags_bag_desc = "Hold and slide $BTN_USE_ITEM to use the safe. Once installed, it cannot be moved, but you and your team can use it by pressing $BTN_INTERACT to retrieve the bag.\n\nThe use of body bags is limited. You can see the rest of the dress by looking at the body bag. The corpse bag has an extra bag which is used to carry the body in secret.",
		menu_equipment_ecm_jammer = "Ali Jam Santrina Jamr",
		bm_equipment_ecm_jammer = "Ali Jam Santrina Jamr",
		bm_equipment_ecm_jammer_desc = "Be sure to hold $BTN_USE_ITEM to use electronic countermeasures. After installation, it is non-removable and works for up to 20 seconds.\n\nYou can activate electronic music by pressing $BTN_INTERACT. The muffler of the electric meter allows the opponent to reach its radius. Prohibit use.\n\nElectronic Countermeasures (ECMs) are electronic devices designed to block and facilitate the targeting of radars, probes and other information systems.",
		menu_equipment_first_aid_kit = "Get First Aid",
		bm_equipment_first_aid_kit = "Get First Aid",
		bm_equipment_first_aid_kit_desc = "First aid is a set of tools and equipment used to provide first aid.\n\nTo use the 'Backup' screen, click and hold $BTN_USE_ITEM in the list. It cannot be removed after installation, but you and your team can use it to restore health by pressing the $BTN_INTERACT key.\n\nThis packaged sugar can be used immediately and disappears upon release."
	})
end)