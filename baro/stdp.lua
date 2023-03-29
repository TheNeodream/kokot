if RequiredScript == "lib/managers/playermanager" then
	function PlayerManager:check_equipment_placement_valid(player, equipment)
		local equipment_data = managers.player:equipment_data_by_name(equipment)

		if not equipment_data then
			return false
		end

		-- local look_at_placement = {
		-- 	["ammo_bag"] = true,
		-- 	["bodybags_bag"] = true,
		-- 	["doctor_bag"] = true,
		-- 	["ecm_jammer"] = true,
		-- 	["first_aid_kit"] = true,
		-- 	["sentry_gun"] = true,
		-- 	["sentry_gun_silent"] = true,
		-- 	["trip_mine"] = true,
		-- }

		local equipment_name = equipment_data.equipment
		if equipment_name == "armor_kit" then
			return true
		end

		local equipment_tdata = tweak_data.equipments[equipment_name]
		-- if look_at_placement[equipment_name] then
		return player:equipment():valid_look_at_placement(equipment_tdata) and true or false
		-- end

		-- return player:equipment():valid_placement(equipment_tdata) and true or false
	end
end

if RequiredScript == "lib/units/beings/player/playerequipment" then
	function PlayerEquipment:valid_look_at_placement(equipment_data)
		local from = self._unit:movement():m_head_pos()
		local to = from + self._unit:movement():m_head_rot():y() * 200
		local ray = self._unit:raycast(
			"ray",
			from,
			to,
			"slot_mask",
			managers.slot:get_mask("trip_mine_placeables"),
			"ignore_unit",
			{},
			"ray_type",
			"equipment_placement"
		)

		if ray and equipment_data and equipment_data.dummy_unit then
			local pos = ray.position
			local rot = Rotation(ray.normal, math.UP)
			if
				equipment_data.text_id ~= "debug_trip_mine"
				and equipment_data.text_id ~= "debug_equipment_ecm_jammer"
			then
				rot = Rotation(rot:yaw(), rot:pitch() - (rot:pitch() * 2) - 90, rot:roll() - 180)
			end

			if not alive(self._dummy_unit) then
				self._dummy_unit = World:spawn_unit(Idstring(equipment_data.dummy_unit), pos, rot)

				self:_disable_contour(self._dummy_unit)
			end

			self._dummy_unit:set_position(pos)
			self._dummy_unit:set_rotation(rot)
		end

		if alive(self._dummy_unit) then
			self._dummy_unit:set_enabled(ray and true or false)
		end

		return ray
	end

	function PlayerEquipment:use_ammo_bag()
		local ray = self:valid_look_at_placement()

		if ray then
			local pos = ray.position
			local rot = Rotation(ray.normal, math.UP)
			rot = Rotation(rot:yaw(), rot:pitch() - (rot:pitch() * 2) - 90, rot:roll() - 180)

			PlayerStandard.say_line(self, "s01x_plu")
			managers.statistics:use_ammo_bag()

			local ammo_upgrade_lvl = managers.player:upgrade_level("ammo_bag", "ammo_increase")
			local bullet_storm_level = managers.player:upgrade_level("player", "no_ammo_cost")

			if Network:is_client() then
				managers.network
					:session()
					:send_to_host("place_ammo_bag", pos, rot, ammo_upgrade_lvl, bullet_storm_level)
			else
				local unit = AmmoBagBase.spawn(
					pos,
					rot,
					ammo_upgrade_lvl,
					managers.network:session():local_peer():id(),
					bullet_storm_level
				)
			end

			return true
		end

		return false
	end

	function PlayerEquipment:use_doctor_bag()
		local ray = self:valid_look_at_placement()

		if ray then
			local pos = ray.position
			local rot = Rotation(ray.normal, math.UP)
			rot = Rotation(rot:yaw(), rot:pitch() - (rot:pitch() * 2) - 90, rot:roll() - 180)

			PlayerStandard.say_line(self, "s02x_plu")

			if managers.blackmarket:equipped_mask().mask_id == tweak_data.achievement.no_we_cant.mask then
				managers.achievment:award_progress(tweak_data.achievement.no_we_cant.stat)
			end

			managers.mission:call_global_event("player_deploy_doctorbag")
			managers.statistics:use_doctor_bag()

			local upgrade_lvl = managers.player:upgrade_level("first_aid_kit", "damage_reduction_upgrade")
			local amount_upgrade_lvl = managers.player:upgrade_level("doctor_bag", "amount_increase")
			upgrade_lvl = math.clamp(upgrade_lvl, 0, 2)
			amount_upgrade_lvl = math.clamp(amount_upgrade_lvl, 0, 2)
			local bits = Bitwise:lshift(upgrade_lvl, DoctorBagBase.damage_reduce_lvl_shift)
				+ Bitwise:lshift(amount_upgrade_lvl, DoctorBagBase.amount_upgrade_lvl_shift)

			if Network:is_client() then
				managers.network:session():send_to_host("place_deployable_bag", "DoctorBagBase", pos, rot, bits)
			else
				local unit = DoctorBagBase.spawn(pos, rot, bits, managers.network:session():local_peer():id())
			end

			return true
		end

		return false
	end

	function PlayerEquipment:use_first_aid_kit()
		local ray = self:valid_look_at_placement()

		if ray then
			local pos = ray.position
			local rot = Rotation(ray.normal, math.UP)
			rot = Rotation(rot:yaw(), rot:pitch() - (rot:pitch() * 2) - 90, rot:roll() - 180)

			PlayerStandard.say_line(self, "s12")
			managers.statistics:use_first_aid()

			local upgrade_lvl = managers.player:has_category_upgrade("first_aid_kit", "damage_reduction_upgrade") and 1
				or 0
			local auto_recovery = managers.player:has_category_upgrade("first_aid_kit", "first_aid_kit_auto_recovery")
					and 1
				or 0
			local bits = Bitwise:lshift(auto_recovery, FirstAidKitBase.auto_recovery_shift)
				+ Bitwise:lshift(upgrade_lvl, FirstAidKitBase.upgrade_lvl_shift)

			if Network:is_client() then
				managers.network:session():send_to_host("place_deployable_bag", "FirstAidKitBase", pos, rot, bits)
			else
				local unit = FirstAidKitBase.spawn(pos, rot, bits, managers.network:session():local_peer():id())
			end

			return true
		end

		return false
	end

	function PlayerEquipment:use_bodybags_bag()
		local ray = self:valid_look_at_placement()

		if ray then
			local pos = ray.position
			local rot = Rotation(ray.normal, math.UP)
			rot = Rotation(rot:yaw(), rot:pitch() - (rot:pitch() * 2) - 90, rot:roll() - 180)

			PlayerStandard.say_line(self, "s13")
			managers.mission:call_global_event("player_deploy_bodybagsbag")
			managers.statistics:use_body_bag()

			local amount_upgrade_lvl = 0

			if Network:is_client() then
				managers.network
					:session()
					:send_to_host("place_deployable_bag", "BodyBagsBagBase", pos, rot, amount_upgrade_lvl)
			else
				local unit =
					BodyBagsBagBase.spawn(pos, rot, amount_upgrade_lvl, managers.network:session():local_peer():id())
			end

			return true
		end

		return false
	end

	function PlayerEquipment:use_sentry_gun(selected_index, unit_idstring_index)
		if self._sentrygun_placement_requested then
			return
		end

		local ray = self:valid_look_at_placement()

		if ray and self:_can_place("sentry_gun") then
			local pos = ray.position
			local rot = Rotation(ray.normal, math.UP)
			rot = Rotation(rot:yaw(), rot:pitch() - (rot:pitch() * 2) - 90, rot:roll() - 180)

			managers.statistics:use_sentry_gun()

			local ammo_level = managers.player:upgrade_value("sentry_gun", "extra_ammo_multiplier", 1)
			local armor_multiplier = 1
				+ managers.player:upgrade_value("sentry_gun", "armor_multiplier", 1)
				- 1
				+ managers.player:upgrade_value("sentry_gun", "armor_multiplier2", 1)
				- 1
			local can_switch_fire_mode = managers.player:has_category_upgrade("sentry_gun", "ap_bullets")
			local equipment_name = managers.player:equipment_in_slot(selected_index)
			local fire_mode_index = can_switch_fire_mode
					and managers.player:get_equipment_setting(equipment_name, "fire_mode")
				or 1

			if Network:is_client() then
				managers.network:session():send_to_host(
					"place_sentry_gun",
					pos,
					rot,
					selected_index,
					self._unit,
					unit_idstring_index,
					ammo_level,
					fire_mode_index
				)

				self._sentrygun_placement_requested = true

				return false
			else
				local shield = managers.player:has_category_upgrade("sentry_gun", "shield")
				local sentry_gun_unit, spread_level, rot_level = SentryGunBase.spawn(
					self._unit,
					pos,
					rot,
					managers.network:session():local_peer():id(),
					false,
					unit_idstring_index
				)

				if sentry_gun_unit then
					self:_sentry_gun_ammo_cost(sentry_gun_unit:id())

					local fire_rate_reduction = managers.player:upgrade_value("sentry_gun", "fire_rate_reduction", 1)

					managers.network:session():send_to_peers_synched(
						"from_server_sentry_gun_place_result",
						managers.network:session():local_peer():id(),
						selected_index,
						sentry_gun_unit,
						rot_level,
						spread_level,
						shield,
						ammo_level,
						fire_mode_index
					)
					sentry_gun_unit:event_listener():call("on_setup", true)
					sentry_gun_unit:base():post_setup(fire_mode_index)
				else
					return false
				end
			end

			return true
		end

		return false
	end

	function PlayerEquipment:use_grenade_crate()
		local ray = self:valid_look_at_placement() --self:valid_shape_placement("grenade_crate")

		if ray then
			-- local pos = ray.position
			-- local rot = self:_m_deploy_rot()
			-- rot = Rotation(rot:yaw(), 0, 0)
			local pos = ray.position
			local rot = Rotation(ray.normal, math.UP)
			rot = Rotation(rot:yaw(), rot:pitch() - (rot:pitch() * 2) - 90, rot:roll() - 180)

			managers.statistics:use_body_bag()

			local amount_upgrade_lvl = 0

			if Network:is_client() then
				managers.network
					:session()
					:send_to_host("place_deployable_bag", "GrenadeCrateDeployableBase", pos, rot, amount_upgrade_lvl)
			else
				local unit = GrenadeCrateDeployableBase.spawn(
					pos,
					rot,
					amount_upgrade_lvl,
					managers.network:session():local_peer():id()
				)
			end

			return true
		end

		return false
	end
end
