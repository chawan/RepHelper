if IsAddOnLoaded("ElvUI") then
    local E = unpack(_G.ElvUI)

    local buttons = {
		RPH_OptionsButton,
		RPH_ShowAllButton,
		RPH_ExpandButton,
		RPH_ShowNoneButton,
		RPH_CollapseButton,
		RPH_SupressNoneFactionButton,
		RPH_SupressNoneGlobalButton,
		RPH_ClearSessionGainButton,
	}

	local checkboxes = {
		RPH_OrderByStandingCheckBox,
		RPH_EnableMissingBox,
		RPH_ExtendDetailsBox,
		RPH_GainToChatBox,
		RPH_NoGuildGainBox,
		RPH_SupressOriginalGainBox,
		RPH_ShowPreviewRepBox,
		RPH_SwitchFactionBarBox,
		RPH_SilentSwitchBox,
		RPH_NoGuildSwitchBox,
		RPH_ReputationDetailInactiveCheckBox,
		RPH_ReputationDetailMainScreenCheckBox,
		RPH_ShowQuestButton,
		RPH_ShowInstancesButton,
		RPH_ShowMobsButton,
		RPH_ShowItemsButton,
		RPH_ShowGeneralButton,
		RPH_EnableParagonBarBox,
		RPH_ShowDarkmoonFaireButton,
	}
   
    RPH_ReputationDetailFrame:StripTextures()
    RPH_ReputationDetailFrame:SetTemplate("Transparent")

    RPH_OptionsFrame:StripTextures()
    RPH_OptionsFrame:SetTemplate("Transparent")

    E.Skins:HandleCloseButton(RPH_OptionsFrameClose)
    E.Skins:HandleCloseButton(RPH_ReputationDetailCloseButton)

    E.Skins:HandleCheckBox(RPH_ReputationDetailAtWarCheckBox)
    RPH_ReputationDetailAtWarCheckBox:SetCheckedTexture('Interface\\Buttons\\UI-CheckBox-SwordCheck')
	RPH_ReputationDetailAtWarCheckBox:SetDisabledCheckedTexture('Interface\\Buttons\\UI-CheckBox-Check-Disabled')

    E.Skins:HandleScrollBar(RPH_UpdateListScrollFrameScrollBar)

    for _,button in pairs(buttons) do
        E.Skins:HandleButton(button)
    end

    for _,checkbox in pairs(checkboxes) do
        E.Skins:HandleCheckBox(checkbox)
    end
end