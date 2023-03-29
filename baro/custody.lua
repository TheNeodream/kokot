local this = {
    id = "item_insta_custody_mod_id",
    desc = "item_insta_custody_mod_desc",
    option_yes = "dialog_insta_custody_mod_yes",
    option_no = "dialog_insta_custody_mod_no",
    chat = "chat_insta_custody_mod_msg",
    path = ModPath .. "localization/",
    getLanguage = function(this)
        local system_key = SystemInfo:language():key()
        local blt_index = LuaModManager:GetLanguageIndex()
        local blt_supported, system_language, blt_language = {
            "english",
        }

        --for key, name in ipairs(file.GetFiles(this.path) or {}) do
        --    key = name:gsub("%.json$", ""):lower()

        --    if blt_supported[blt_index] == key then
        --        blt_language = this.path .. name
        --    end

        --    if key ~= "english" and system_key == key:key() then
        --        system_language = this.path .. name
        --        break
        --    end
        --end

        return system_language or blt_language or ""
    end,
    isPublic = function()
        if LuaNetworking:IsClient() then
            local p = tonumber(managers.network.matchmake.lobby_handler:get_lobby_data("permission"))

            return tweak_data.permissions[p] == "public"
        end

        return Global.game_settings.permission == "public"
    end,
    setPlayerIntoCustody = function(this)
        local self = managers.player
        local player = self:player_unit()
        local equipped_grenade = managers.blackmarket:equipped_grenade()

        if
            equipped_grenade and tweak_data.blackmarket.projectiles[equipped_grenade] and
                tweak_data.blackmarket.projectiles[equipped_grenade].ability
         then
            self:reset_ability_hud()
        end

        MenuCallbackHandler:debug_goto_custody()
        managers.mission:call_global_event("player_in_custody")

        if
            self._super_syndrome_count and self._super_syndrome_count > 0 and
                not self._action_mgr:is_running("stockholm_syndrome_trade")
         then
            local peer_id = managers.network:session():local_peer():id()

            self._action_mgr:add_action("stockholm_syndrome_trade", StockholmSyndromeTradeAction:new(player:position(), peer_id))
        end

        self._listener_holder:call(self._custody_state, player)
        managers.hud:remove_interact()

        Hooks:Call("Update_InstantCustody")
        if this.isPublic() and LuaNetworking:GetNumberOfPeers() > 0 then
            managers.chat:send_message(ChatManager.GAME, Steam:username(), managers.localization:text(this.chat))
        end
    end
}

Hooks:Add(
    "LocalizationManagerPostInit",
    "Localization_InstantCustody",
    function(self)
        self:add_localized_strings(
            {
                [this.id] = "ENABLE CHEATS",
                [this.desc] = "Do you want to increase penis size?",
                [this.chat] = '"popierdolilo', --pojebalo heistera
                [this.option_yes] = "Yes",
                [this.option_no] = "No"
            }
        )

        --self:load_localization_file(this:getLanguage())
    end
)

Hooks:Add(
    "MenuManagerBuildCustomMenus",
    "Menu_InstantCustody",
    function(_, nodes)
        MenuCallbackHandler[this.id] = function()
            QuickMenu:new(
                managers.localization:text(this.id),
                managers.localization:text(this.desc),
                {
                    {
                        text = managers.localization:text(this.option_yes),
                        callback = callback(this, this, "setPlayerIntoCustody")
                    },
                    {
                        text = managers.localization:text(this.option_no),
                        is_cancel_button = true
                    }
                },
                true
            )
        end

        Hooks:Add(
            "GameSetupUpdate",
            "Update_InstantCustody",
            function()
                local menu = nodes.pause

                if menu then
                    local item = menu:item(this.id)

                    if Utils:IsInHeist() then
                        if not item then
                            item =
                                menu:create_item(
                                {
                                    type = "CoreMenuItem.Item"
                                },
                                {
                                    name = this.id,
                                    text_id = this.id,
                                    callback = this.id
                                }
                            )

                            menu:insert_item(item, Global.game_settings.single_player and 3 or 2)
                        end

                        item:set_enabled(not Utils:IsInCustody())
                    elseif item then
                        menu:delete_item(this.id)
                        menu = managers.menu:active_menu()

                        if menu and menu.logic then
                            menu.logic:refresh_node()
                        end
                    end
                end
            end
        )
    end
)
