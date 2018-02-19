----------------------------------------------------------
-- RepHelper | A World of Warcraft addon to help you manage your reputation and Factions. --
-------------------------------------------------------
---------------------------
-- _00_ Variables Set up --
---------------------------

RPH_ToExalted = {}
RPH_ToExalted[0] = 84000;
RPH_ToExalted[1] = 48000;	-- working on Hated -> Hostile, base offset 21k+12k+6k+3k+3k+3k
RPH_ToExalted[2] = 45000;	-- working on Hostile -> Unfriendly, base offset 21k+12k+6k+3k+3k
RPH_ToExalted[3] = 42000;	-- working on Unfriendly -> Neutral, base offset 21k+12k+6k+3k
RPH_ToExalted[4] = 39000;	-- working on Neutral -> Friendly, base offset 21k+12k+6k
RPH_ToExalted[5] = 33000;	-- working on Friendly -> Honored, base offset 21k+12k
RPH_ToExalted[6] = 21000;	-- working on Honored -> Revered, base offset 21k
RPH_ToExalted[7] = 0;	-- working on Revered -> Exalted, so no base offset
RPH_ToExalted[8] = 0;	-- already at Exalted -> no offset

-- Addon constants
RPH_NAME = "RepHelper"
RPH_VNMBR = 6020012	-- Number code for this version
local addonName, vars = ...
local L = vars.L
RPH = vars

-- Colours
RPH_Help_COLOUR = "|cFFFFFF7F"
RPH_NEW_REP_COLOUR = "|cFF7F7FFF"
RPH_NEW_STANDING_COLOUR = "|cFF6060C0"
RPH_BAG_COLOUR = "|cFFC0FFC0"
RPH_BAG_BANK_COLOUR = "|cFFFFFF7F"
RPH_QUEST_COLOUR = "|cFFC0FFC0"
RPH_HIGHLIGHT_COLOUR = "|cFF00FF00"
RPH_QUEST_ACTIVE_COLOUR = "|cFFFF7F7F"
RPH_LOWLIGHT_COLOUR = "|cFFFF3F3F"
RPH_SUPPRESS_COLOUR = "|cFF7F7F7F"
--Profestions ggg
RPH_LIMIT_TYPE_Herb = 1
RPH_LIMIT_TYPE_Skin = 2
RPH_LIMIT_TYPE_Mine = 3
RPH_LIMIT_TYPE_Gather = 4
RPH_LIMIT_TYPE_Engi = 5
RPH_LIMIT_TYPE_Alch = 6
RPH_LIMIT_TYPE_Blac = 7
RPH_LIMIT_TYPE_Tail = 8
RPH_LIMIT_TYPE_Leat = 9
RPH_LIMIT_TYPE_Ench = 10
RPH_LIMIT_TYPE_Jewe = 11
RPH_LIMIT_TYPE_Incr = 12
RPH_LIMIT_TYPE_Aid = 13
RPH_LIMIT_TYPE_Arch = 14
RPH_LIMIT_TYPE_Cook = 15
RPH_LIMIT_TYPE_Fish = 16

--------------------------
-- _01_ Addon Variables --
--------------------------

-- Stored data
RPH_Data = {}   -- Data saved between sessions
-- Initialization
RPH_Main = nil   -- Main program window
RPH_InitComplete = nil
RPH_VarsLoaded = nil
RPH_InitStages = 0
RPH_InitCount = 0
RPH_difficultyID = 0
RPH_UpdateRequest = nil
RPH_UPDATE_INTERVAL = 5
-- Faction information
RPH_FactionMapping = {}
RPH_FactionGain = {}

-- Tracking data
RPH_Entries = {}
-- Skill Tracking ggg
RPH_Herb = false
RPH_Skin = false
RPH_Mine = false
RPH_Jewel = false
RPH_Cook = false
RPH_Arch = false
RPH_Fish = false
RPH_Aid = false
RPH_Black = false
RPH_Tailor = false
RPH_Leath = false
RPH_Enchan = false
RPH_Engin = false
RPH_Incrip = false
RPH_Alche = false
--- Race/Side/Difficulty
RPH_IsHuman = false
RPH_IsDeathKnight = false
RPH_IsAlliance = false
RPH_IsHorde = false
RPH_IsHeroic=false
-- Guild Tracking
RPH_GuildName = nil
-- Garrison Trading post level 3
RPH_HasTradingPost = false
RPH_OnLoadingScreen = false

------------------------
-- _02_ Addon Startup --
------------------------
------------------------------------------------------------
function RPH_OnLoad(self)
	-- Events monitored by Event Handler
	RPH_Main = self
	self:RegisterEvent("ADDON_LOADED")
	self:RegisterEvent("VARIABLES_LOADED")
	self:RegisterEvent("PLAYER_ENTERING_WORLD")
	self:RegisterEvent("PLAYER_LOGIN")
	self:RegisterEvent("LOADING_SCREEN_ENABLED")
	self:RegisterEvent("LOADING_SCREEN_DISABLED")

	-- Slash commands for CLI
	SLASH_RPH1 = "/rephelper"
	SLASH_RPH2 = "/rph"
	SlashCmdList.RPH = RPH_SlashHandler

	RPH_Orig_GetFactionInfo = GetFactionInfo;  -- api function
	--GetFactionInfo = RPH_GetFactionInfo;  -- api function

	RPH_Orig_ReputationFrame_Update = ReputationFrame_Update -- rfl function
	ReputationFrame_Update = RPH_ReputationFrame_Update -- rfl function

	RPH_Orig_ReputationBar_OnClick = ReputationBar_OnClick -- rfl function
	ReputationBar_OnClick = RPH_ReputationBar_OnClick -- rfl function

	RPH_Orig_ExpandFactionHeader = ExpandFactionHeader
	ExpandFactionHeader = RPH_ExpandFactionHeader

	RPH_Orig_CollapseFactionHeader = CollapseFactionHeader
	CollapseFactionHeader = RPH_CollapseFactionHeader

	--RPH_Orig_ChatFrame_OnEvent = ChatFrame_OnEvent
	--ChatFrame_OnEvent = RPH_ChatFrame_OnEvent

	RPH_Orig_StandingText = ReputationFrameStandingLabel:GetText()
end

------------------------
-- _03_ Event Handler --
------------------------

function RPH_OnEvent(self, event, ...)

	if (event== "LOADING_SCREEN_ENABLED") then
		RPH_OnLoadingScreen = true
	end

	if (event == "LOADING_SCREEN_DISABLED") then
		RPH_OnLoadingScreen = false
	end

	local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13 = ...
	if (event == "ADDON_LOADED") and (arg1 == RPH_NAME) then
		RPH_Main:UnregisterEvent("ADDON_LOADED")
		RPH_InitStages = RPH_InitStages + 1
		RPH:Init()
	elseif (event == "VARIABLES_LOADED") then
		RPH_OnShowOptionFrame()
		RPH_VarsLoaded = true
		RPH_InitStages = RPH_InitStages + 2
		RPH:Init()
	elseif (event == "PLAYER_LOGIN") then
		RPH_Main:UnregisterEvent("PLAYER_LOGIN")
		--RPH_DoInitialCollapse()
		RPH_InitStages = RPH_InitStages + 4
		RPH:Init()
	elseif (event == "PLAYER_ENTERING_WORLD") then
		RPH_InitStages = RPH_InitStages + 8
		RPH:Init()
		RPH_Main:UnregisterEvent("PLAYER_ENTERING_WORLD")
		RPH_Main:RegisterEvent("UPDATE_FACTION") --rfl
		RPH_Main:RegisterEvent("LFG_BONUS_FACTION_ID_UPDATED") --rfl
		-- to keep item list up to date
		RPH_Main:RegisterEvent("BAG_UPDATE")
		RPH_Main:RegisterEvent("BANKFRAME_OPENED")
		RPH_Main:RegisterEvent("BANKFRAME_CLOSED")
		-- to keep dungeon Difficulty up to date
		RPH_Main:RegisterEvent("PLAYER_DIFFICULTY_CHANGED")
		-- to keep list of known skills up to date
		RPH_Main:RegisterEvent("CHAT_MSG_SKILL")
		RPH_Main:RegisterEvent("CHAT_MSG_SPELL_TRADESKILLS")
		RPH_Main:RegisterEvent("SKILL_LINES_CHANGED")
		RPH_Main:RegisterEvent("UPDATE_TRADESKILL_RECAST")
		RPH_Main:RegisterEvent("QUEST_COMPLETE")
		RPH_Main:RegisterEvent("QUEST_WATCH_UPDATE")
		RPH_Main:RegisterEvent("GARRISON_UPDATE")

		-- new chat hook system
		ChatFrame_AddMessageEventFilter("CHAT_MSG_COMBAT_FACTION_CHANGE", RPH_ChatFilter)
		ChatFrame_AddMessageEventFilter("COMBAT_TEXT_UPDATE", RPH_ChatFilter)

	elseif (event == "UPDATE_FACTION" or
	      	event == "QUEST_COMPLETE" or
	      	event == "QUEST_WATCH_UPDATE") then
-- rfl Event v
		if ( ReputationFrame:IsVisible() ) then
			ReputationFrame_Update(); -- rfl Event
		end
-- rfl event ^
		if ( RPH_ReputationDetailFrame:IsVisible()) then
			RPH:BuildUpdateList()
			RPH_UpdateList_Update()
		end
		RPH:DumpReputationChangesToChat()

	elseif ( event == "BAG_UPDATE") then
		if (RPH_ReputationDetailFrame:IsVisible()) then
			-- Update rep frame (implicitely updates detail frame which In turn implicitely reparses bag contents)
			ReputationFrame_Update()
		end 

	elseif ( event == "BANKFRAME_OPENED") then
		RPH_BankOpen = true

	elseif ( event == "BANKFRAME_CLOSED") then
		-- this is fired twice when closing the bank window, bank contents only available at the first Event
		if (RPH_BankOpen) then
			-- this is the first call
			RPH_BankOpen = nil

			if (RPH_ReputationDetailFrame:IsVisible()) then
				-- Update rep frame (implicitely updates detail frame which In turn implicitely reparses bag contents)
				ReputationFrame_Update()
			end
		end

	elseif ( event == "PLAYER_DIFFICULTY_CHANGED") then -- ccc
			--RPH:Print("PLAYER_DIFFICULTY_CHANGED", nil) 

	elseif ( event == "CHAT_MSG_SKILL") or
		( event == "CHAT_MSG_SPELL_TRADESKILLS") or
		( event == "SKILL_LINES_CHANGED") or
		( event == "UPDATE_TRADESKILL_RECAST") then
		RPH:ExtractSkills()
		if ( ReputationFrame:IsVisible() ) then
			ReputationFrame_Update(); -- rfl Event
		end
		if ( RPH_ReputationDetailFrame:IsVisible()) then
			RPH:BuildUpdateList()
			RPH_UpdateList_Update()
		end

	elseif (event == "GARRISON_UPDATE") then
		-- Get garrison buildings to check for trading post
		local garrisonBuildings = C_Garrison.GetBuildings(LE_GARRISON_TYPE_6_0)

		for i, building in pairs(garrisonBuildings) do
			if building["buildingID"] == 145 then
				RPH_HasTradingPost = true
			end
		end
		RPH_InitStages = RPH_InitStages + 5
		RPH:Init()
		RPH_Main:UnregisterEvent("GARRISON_UPDATE")
	end


end

-------------------------------
function RPH_OnUpdate(self)
	if not RPH_UpdateRequest then return end
	if RPH_InitComplete and RPH_InitCount > 5 then return end
	if (GetTime() < RPH_UpdateRequest) then return end

	if (RPH_InitCount <= 5) then
		-- Guild level seems to only return a proper value a little later
		--RPH:Print("update number "..tostring(RPH_InitCount))
		RPH_InitCount = RPH_InitCount + 1
		RPH_UpdateRequest = GetTime() + RPH_UPDATE_INTERVAL
		if (RPH_InitCount > 5) then
			RPH_UpdateRequest = nil
			--RPH:Print("Stopping updates")
		end
	end
end

function RPH:DumpTable(o)
	if type(o) == 'table' then
	   local s = '{ '
	   for k,v in pairs(o) do
		  if type(k) ~= 'number' then k = '"'..k..'"' end
		  s = s .. '['..k..'] = ' .. RPH:DumpTable(v) .. ','
	   end
	   return s .. '} '
	else
	   return tostring(o)
	end
end

-------------------------------
-- _04_ Addon Initialization --
-------------------------------
function RPH:InitVariable(var, value)
	local result = 0
	if var == nil then return result end

	if (not RPH_Data[var]) and (not RPH_Data[var.."_inited"]) then
		-- this option is not Set, and has never been Set by default, do so and let the user know
		RPH_Data[var] = value
		RPH_Data[var.."_inited"] = true
		result = 1
	elseif (not RPH_Data[var.."_inited"]) then
		-- the option is enabled, but not marked as inited, do so silently
		RPH_Data[var.."_inited"] = true
	end

	return result
end

-------------------------------
function RPH:Init()
	if RPH_InitComplete then return end
	--RPH:Print("RPH_InitStages ["..tostring(RPH_InitStages).."]")
	if (RPH_InitStages ~= 20) then return end

	local version = GetAddOnMetadata("RepHelper", "Version");
	if (version == nil) then
		version = "unknown";
	end

	-- create data structures
	if not RPH_Data then RPH_Data = {} end
	if not RPH_Data.OriginalCollapsed then RPH_Data.OriginalCollapsed = {} end

	if RPH_Data.ChatFrame == nil then RPH_Data.ChatFrame = 0 end
	local changed = 0
	changed = changed + RPH:InitVariable("ShowMobs", true)
	changed = changed + RPH:InitVariable("ShowQuests", true)
	changed = changed + RPH:InitVariable("ShowInstances", true)
	changed = changed + RPH:InitVariable("ShowItems", true)
	changed = changed + RPH:InitVariable("ShowGeneral", true)

	changed = changed + RPH:InitVariable("ShowMissing", true)
	changed = changed + RPH:InitVariable("ExtendDetails", true)
	changed = changed + RPH:InitVariable("WriteChatMessage", true)
	changed = changed + RPH:InitVariable("NoGuildGain", true)
	changed = changed + RPH:InitVariable("ShowPreviewRep", true)
	changed = changed + RPH:InitVariable("SwitchFactionBar", true)
	changed = changed + RPH:InitVariable("SilentSwitch", true)
	changed = changed + RPH:InitVariable("NoGuildSwitch", true)
	changed = changed + RPH:InitVariable("ShowParagonBar", true)
	if (changed > 0) then
		StaticPopupDialogs["RPH_CONFIG_CHANGED"] = {
			text = RPH_TXT.configQuestion,
			button1 = RPH_TXT.showConfig,
			button2 = RPH_TXT.later,
			OnAccept = function()
				RPH:ToggleConfigWindow();	--- f_tcw
				end,
			--OnCancel = function()
			--	RPH:Print(GLDG_Data.colours.help..GLDG_NAME..":|cFFFF0000 "..GLDG_TXT.reload)
			--	end,
			timeout = 0,
			whileDead = 1,
			hideOnEscape = 1,
			sound = SOUNDKIT.IG_QUEST_LOG_ABANDON_QUEST,
		};
		StaticPopup_Show("RPH_CONFIG_CHANGED");
	end

	-- keep version In configuration file
	RPH_Data.Version = RPH_VNMBR

	-- Set up UI
	RPH_OptionsFrameTitle:SetText(RPH_NAME.." "..RPH_TXT.options)

	RPH_EnableMissingBoxText:SetText(RPH_TXT.showMissing)
	RPH_ExtendDetailsBoxText:SetText(RPH_TXT.extendDetails)
	RPH_GainToChatBoxText:SetText(RPH_TXT.gainToChat)
	RPH_NoGuildGainBoxText:SetText(RPH_TXT.noGuildGain)
	RPH_ShowPreviewRepBoxText:SetText(RPH_TXT.showPreviewRep)
	RPH_SwitchFactionBarBoxText:SetText(RPH_TXT.switchFactionBar)
	RPH_NoGuildSwitchBoxText:SetText(RPH_TXT.noGuildSwitch)
	RPH_SilentSwitchBoxText:SetText(RPH_TXT.silentSwitch)
	RPH_OrderByStandingCheckBoxText:SetText(RPH_TXT.orderByStanding)
	RPH_EnableParagonBarBoxText:SetText(RPH_TXT.EnableParagonBar)

	---	RPH_OnShowOptionFrame()
	RPH:ExtractSkills()

	local _, race = UnitRace("player")
	local faction, locFaction = UnitFactionGroup("player")
	local class, enClass = UnitClass("player")
	RPH_Player = UnitName("player")
	RPH_Realm = GetRealmName()

	if (IsInGuild()) then
		if (RPH_GuildName == nil or RPH_GuildName == "") then RPH_GuildName = GetGuildInfo("player") end
	end

	if (race and faction and locFaction and RPH_Player and RPH_Realm) then
		if (race == "Human") then
			RPH_IsHuman = true
		end

		if enClass and enClass == "DEATHKNIGHT" then
			RPH_IsDeathKnight = true
		end

		if (faction == FACTION_ALLIANCE) or (locFaction == FACTION_ALLIANCE) then
			RPH_IsAlliance = true
		end

		if (faction == FACTION_HORDE) or (locFaction == FACTION_HORDE) then
			RPH_IsHorde = true
		end

		RPH:InitFactor(RPH_IsHuman)

		-- Initialize Faction information
		local locale = GetLocale()
		RPH:InitFactionMap(locale, RPH_GuildName)
		-- Changed by Bagdad for easy reputation content moderation
		RPH_FactionGain = {}
		RPH_InitEnFactionGains(RPH_GuildName)
		RPH:DumpReputationChangesToChat(true)

		RPH_InitComplete = true
		if (RPH_InitCount <= 5) then
			RPH_UpdateRequest = GetTime() + RPH_UPDATE_INTERVAL
			--RPH:Print("Init complete, setting up updates ("..tostring(RPH_InitCount).." already done)")
		--else
			--RPH:Print("Init complete, not starting updates")
		end

	end
end

------------------------
-- _05_ Slash Handler --
------------------------

function RPH_SlashHandler(msg)
	if not msg then
		return
	else
		local msgLower = string.lower(msg)
		local words = RPH:GetWords(msg)
		local wordsLower = RPH:GetWords(msgLower)
		local size = RPH:TableSize(wordsLower)
		local FD_SH = RPH_Data

		if (size>0) then
			if (wordsLower[0]=="enable") then
				if (size>1) then
					if (wordsLower[1]=="mobs") then
						FD_SH.ShowMobs = true
					elseif (wordsLower[1]=="quests") then
						FD_SH.ShowQuests = true
					elseif (wordsLower[1]=="dungeons" or wordsLower[1]=="instances") then
						FD_SH.ShowInstances = true
					elseif (wordsLower[1]=="items") then
						FD_SH.ShowItems = true
					elseif (wordsLower[1]=="general") then
						FD_SH.ShowGeneral = true
					elseif (wordsLower[1]=="missing") then
						FD_SH.ShowMissing = true
					elseif (wordsLower[1]=="details") then
						FD_SH.ExtendDetails = true
					elseif (wordsLower[1]=="chat") then
						FD_SH.WriteChatMessage = true
						FD_SH.NoGuildGain = false
					elseif (wordsLower[1]=="preview") then
						FD_SH.ShowPreviewRep = true
					elseif (wordsLower[1]=="bar") then
						FD_SH.SwitchFactionBar = true
						FD_SH.NoGuildSwitch = false
						FD_SH.SilentSwitch = false
					elseif (wordsLower[1]=="paragon") then
						FD_SH.ShowParagonBar = true
					elseif (wordsLower[1]=="all") then
						FD_SH.ShowMobs = true
						FD_SH.ShowQuests = true
						FD_SH.ShowInstances = true
						FD_SH.ShowItems = true
						FD_SH.ShowGeneral = true
						FD_SH.ShowMissing = true
						FD_SH.ExtendDetails = true
						FD_SH.WriteChatMessage = true
						FD_SH.NoGuildGain = false
						FD_SH.ShowPreviewRep = true
						FD_SH.SwitchFactionBar = true
						FD_SH.NoGuildSwitch = false
						FD_SH.SilentSwitch = false
					else
						RPH:PrintSlash(RPH_TXT.command,msgLower)
					end

					if ( ReputationFrame:IsVisible() ) then
						ReputationFrame_Update(); -- rfl Event
					end
					if ( RPH_ReputationDetailFrame:IsVisible()) then
						RPH:BuildUpdateList()
						RPH_UpdateList_Update()
					end
				else
						RPH:PrintSlash(RPH_TXT.command,msgLower)
				end
			elseif (wordsLower[0]=="disable") then
				if (size>1) then
					if (wordsLower[1]=="mobs") then
						FD_SH.ShowMobs = false
					elseif (wordsLower[1]=="quests") then
						FD_SH.ShowQuests = false
					elseif (wordsLower[1]=="dungeons" or wordsLower[1]=="instances") then
						FD_SH.ShowInstances = false
					elseif (wordsLower[1]=="items") then
						FD_SH.ShowItems = false
					elseif (wordsLower[1]=="general") then
						FD_SH.ShowGeneral = false
					elseif (wordsLower[1]=="missing") then
						FD_SH.ShowMissing = false
					elseif (wordsLower[1]=="details") then
						FD_SH.ExtendDetails = false
					elseif (wordsLower[1]=="chat") then
						FD_SH.WriteChatMessage = false
						FD_SH.NoGuildGain = false
					elseif (wordsLower[1]=="preview") then
						FD_SH.ShowPreviewRep = false
					elseif (wordsLower[1]=="bar") then
						FD_SH.SwitchFactionBar = false
						FD_SH.NoGuildSwitch = false
						FD_SH.SilentSwitch = false
					elseif (wordsLower[1]=="paragon") then
						FD_SH.ShowParagonBar = false
					elseif (wordsLower[1]=="all") then
						FD_SH.ShowMobs = false
						FD_SH.ShowQuests = false
						FD_SH.ShowInstances = false
						FD_SH.ShowItems = false
						FD_SH.ShowGeneral = false
						FD_SH.ShowMissing = false
						FD_SH.ExtendDetails = false
						FD_SH.WriteChatMessage = false
						FD_SH.NoGuildGain = false
						FD_SH.ShowPreviewRep = false
						FD_SH.SwitchFactionBar = false
						FD_SH.NoGuildSwitch = false
						FD_SH.SilentSwitch = false
					else
						RPH:PrintSlash(RPH_TXT.command,msgLower)
					end

					if ( ReputationFrame:IsVisible() ) then
						ReputationFrame_Update(); -- rfl Event
					end
					if ( RPH_ReputationDetailFrame:IsVisible()) then
						RPH:BuildUpdateList()
						RPH_UpdateList_Update()
					end
				else
					RPH:PrintSlash(RPH_TXT.command,msgLower)
				end
			elseif (wordsLower[0]=="toggle") then
				if (size>1) then
					if (wordsLower[1]=="mobs") then
						FD_SH.ShowMobs = not FD_SH.ShowMobs
					elseif (wordsLower[1]=="quests") then
						FD_SH.ShowQuests = not FD_SH.ShowQuests
					elseif (wordsLower[1]=="dungeons" or wordsLower[1]=="instances") then
						FD_SH.ShowInstances = not FD_SH.ShowInstances
					elseif (wordsLower[1]=="items") then
						FD_SH.ShowItems = not FD_SH.ShowItems
					elseif (wordsLower[1]=="general") then
						FD_SH.ShowGeneral = not FD_SH.ShowGeneral
					elseif (wordsLower[1]=="missing") then
						FD_SH.ShowMissing = not FD_SH.ShowMissing
					elseif (wordsLower[1]=="details") then
						FD_SH.ExtendDetails = not FD_SH.ExtendDetails
					elseif (wordsLower[1]=="chat") then
						FD_SH.WriteChatMessage = not FD_SH.WriteChatMessage
						FD_SH.NoGuildGain = false
					elseif (wordsLower[1]=="preview") then
						FD_SH.ShowPreviewRep = not FD_SH.ShowPreviewRep
					elseif (wordsLower[1]=="preview") then
						FD_SH.SwitchFactionBar = not FD_SH.SwitchFactionBar
						FD_SH.NoGuildSwitch = false
						FD_SH.SilentSwitch = false
					elseif (wordsLower[1]=="paragon") then
						FD_SH.ShowParagonBar = not FD_SH.ShowParagonBar;
					elseif (wordsLower[1]=="all") then
						FD_SH.ShowMobs = not FD_SH.ShowMobs
						FD_SH.ShowQuests = not FD_SH.ShowQuests
						FD_SH.ShowInstances = not FD_SH.ShowInstances
						FD_SH.ShowItems = not FD_SH.ShowItems
						FD_SH.ShowGeneral = not FD_SH.ShowGeneral
						FD_SH.ShowMissing = not FD_SH.ShowMissing
						FD_SH.ExtendDetails = not FD_SH.ExtendDetails
						FD_SH.WriteChatMessage = not FD_SH.WriteChatMessage
						FD_SH.NoGuildGain = false
						FD_SH.ShowPreviewRep = not FD_SH.ShowPreviewRep
						FD_SH.SwitchFactionBar = not FD_SH.SwitchFactionBar
						FD_SH.NoGuildSwitch = false
						FD_SH.SilentSwitch = false
					else
						RPH:PrintSlash(RPH_TXT.command,msgLower)
					end

					if ( ReputationFrame:IsVisible() ) then
						ReputationFrame_Update(); -- rfl Event
					end
					if ( RPH_ReputationDetailFrame:IsVisible()) then
						RPH:BuildUpdateList()
						RPH_UpdateList_Update()
					end
				else
						RPH:PrintSlash(RPH_TXT.command,msgLower)
				end
			elseif (wordsLower[0]=="list") then
				if (size>1) then
					if (wordsLower[1]=="1" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL1"])) then
						RPH:ListByStanding(1)
					elseif (wordsLower[1]=="2" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL2"])) then
						RPH:ListByStanding(2)
					elseif (wordsLower[1]=="3" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL3"])) then
						RPH:ListByStanding(3)
					elseif (wordsLower[1]=="4" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL4"])) then
						RPH:ListByStanding(4)
					elseif (wordsLower[1]=="5" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL5"])) then
						RPH:ListByStanding(5)
					elseif (wordsLower[1]=="6" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL6"])) then
						RPH:ListByStanding(6)
					elseif (wordsLower[1]=="7" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL7"])) then
						RPH:ListByStanding(7)
					elseif (wordsLower[1]=="8" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL8"])) then
						RPH:ListByStanding(8)
					else
						RPH:PrintSlash(RPH_TXT.command,msgLower)
					end
				else
					RPH:ListByStanding()
				end
			elseif (wordsLower[0]=="loc") then
				if (size>1) then
					if (wordsLower[1]=="1" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL1"])) then
						RPH:ListByStanding(1)
					elseif (wordsLower[1]=="2" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL2"])) then
						RPH:ListByStanding(2)
					elseif (wordsLower[1]=="3" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL3"])) then
						RPH:ListByStanding(3)
					elseif (wordsLower[1]=="4" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL4"])) then
						RPH:ListByStanding(4)
					elseif (wordsLower[1]=="5" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL5"])) then
						RPH:ListByStanding(5)
					elseif (wordsLower[1]=="6" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL6"])) then
						RPH:ListByStanding(6)
					elseif (wordsLower[1]=="7" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL7"])) then
						RPH:ListByStanding(7)
					elseif (wordsLower[1]=="8" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL8"])) then
						RPH:ListByStanding(8)
					else
						RPH:PrintSlash(RPH_TXT.command,msgLower)
					end
				else
					RPH_ShowGerman()
				end
			elseif (wordsLower[0]=="test") then
				RPH_Test()
			elseif (wordsLower[0]=="status") then
				RPH:Status()
			elseif (wordsLower[0]=="help") then
				RPH:Help()
			elseif (wordsLower[0]=="about") then
				RPH:About()
			else
				RPH:PrintSlash(RPH_TXT.command,msgLower)
			end
		else
			-- do nothing
		end
	end
end

-----------------------------------
-- _06_ General Helper Functions --
-----------------------------------

function RPH:Print(msg, forceDefault) --zzz
	if not (msg) then return end

	if ((RPH_Data==nil) or forceDefault) then
		DEFAULT_CHAT_FRAME:AddMessage(msg)
	else
		for i = 1, NUM_CHAT_WINDOWS do
			local chatTab = _G["ChatFrame"..i.."Tab"]
			if chatTab:IsShown() then
				local chatFrame = _G["ChatFrame"..i]
				local messageTypes = chatFrame.messageTypeList
				for j = 1, #messageTypes do
					if messageTypes[j] == "COMBAT_FACTION_CHANGE" then
						_G["ChatFrame"..i]:AddMessage(msg)
					end
				end
			end
		end

	end
end
------------------------------------------------------------
function RPH:Printtest(msg,msg1,msg2) --fpt
	RPH:Print(""..tostring(msg).." "..tostring(msg1).."  "..tostring(msg2), nil)
end
------------------------------------------------------------
function RPH:PrintSlash(msg,msg1) --zzz
	RPH:Print(RPH_Help_COLOUR..RPH_NAME..":|r "..msg.." ["..RPH_Help_COLOUR..msg1.."|r]", true)
	RPH:Help()
end
------------------------------------------------------------
function RPH:Debug(msg)
	if not (msg) then return end
	--RPH:Print(msg)
end
------------------------------------------------------------
function RPH:TableSize(info)
	local result = 0
	if info then
		for item in pairs(info) do result = result + 1 end
	end
	return result
end

------------------------------------------------------------
function RPH:GetWords(str)
	local ret = {};
	local pos=0;
	local index=0
	while(true) do
		local word;
		_,pos,word=string.find(str, "^ *([^%s]+) *", pos+1);
		if(not word) then
			return ret;
		end
		ret[index]=word
		index = index+1
	end
end

------------------------------------------------------------
function RPH:Concat(list, start, stop)
	local ret = "";

	if (start == nil) then start = 0 end
	if (stop == nil) then stop = RPH:TableSize(list) end

	for i = start,stop do
		if list[i] then
			if (ret ~= "") then ret = ret.." " end
			ret = ret..list[i]
		end
	end
	return ret
end

------------------------------------------------------------
function RPH:BoolToEnabled(b)
	local result = RPH_TXT.disabled
	if b then result = RPH_TXT.enabled end
	return result
end

------------------------------------------------------------
function RPH:RGBToColour_perc(a, r, g, b)
	return string.format("|c%02X%02X%02X%02X", a*255, r*255, g*255, b*255)
end

function RPH:has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

------------------------
-- _07_ information
------------------------

function RPH:Help() --xxx
	RPH:Print(" ", true)
	RPH:Print(RPH_Help_COLOUR..RPH_NAME..":|r "..RPH_TXT.help, true)
	RPH:Print(RPH_Help_COLOUR..RPH_TXT.usage..":|r /rph help "..RPH_Help_COLOUR..RPH_TXT.helphelp, true)
	RPH:Print(RPH_Help_COLOUR..RPH_TXT.usage..":|r /rph about "..RPH_Help_COLOUR..RPH_TXT.helpabout, true)
	RPH:Print(RPH_Help_COLOUR..RPH_TXT.usage..":|r /rph status "..RPH_Help_COLOUR..RPH_TXT.helpstatus, true)
	RPH:Print(RPH_Help_COLOUR..RPH_TXT.usage..":|r /rph enable { mobs | quests | instances | items | all }", true)
	RPH:Print(RPH_Help_COLOUR..RPH_TXT.usage..":|r /rph disable { mobs | quests | instances | items | all }", true)
	RPH:Print(RPH_Help_COLOUR..RPH_TXT.usage..":|r /rph toggle { mobs | quests | instances | items | all }", true)
	RPH:Print(RPH_Help_COLOUR..RPH_TXT.usage..":|r /rph enable { missing | details | chat | paragon }", true)
	RPH:Print(RPH_Help_COLOUR..RPH_TXT.usage..":|r /rph disable { missing | details | chat | paragon}", true)
	RPH:Print(RPH_Help_COLOUR..RPH_TXT.usage..":|r /rph toggle { missing | details | chat | paragon}" , true)
end
------------------------------------------------------------
function RPH:About()
	local ver = GetAddOnMetadata("RepHelper", "Version");
	local date = GetAddOnMetadata("RepHelper", "X-Date");
	local author = GetAddOnMetadata("RepHelper", "Author");
	local web = GetAddOnMetadata("RepHelper", "X-Website");

	if (author ~= nil) then
		RPH:Print(RPH_NAME.." "..RPH_TXT.by.." "..RPH_Help_COLOUR..author.."|r", true);
	end
	if (ver ~= nil) then
		RPH:Print("  "..RPH_TXT.version..": "..RPH_Help_COLOUR..ver.."|r", true);
	end
	if (date ~= nil) then
		RPH:Print("  "..RPH_TXT.date..": "..RPH_Help_COLOUR..date.."|r", true);
	end
	if (web ~= nil) then
		RPH:Print("  "..RPH_TXT.web..": "..RPH_Help_COLOUR..web.."|r", true);
	end

end
------------------------------------------------------------
function RPH:Status()
	RPH:Print(" ", true)
	RPH:Print(RPH_Help_COLOUR..RPH_NAME..":|r "..RPH_TXT.status, true)
	RPH:Print("   "..RPH_TXT.statMobs..": "..RPH_Help_COLOUR..RPH:BoolToEnabled(RPH_Data.ShowMobs).."|r", true)
	RPH:Print("   "..RPH_TXT.statQuests..": "..RPH_Help_COLOUR..RPH:BoolToEnabled(RPH_Data.ShowQuests).."|r", true)
	RPH:Print("   "..RPH_TXT.statInstances..": "..RPH_Help_COLOUR..RPH:BoolToEnabled(RPH_Data.ShowInstances).."|r", true)
	RPH:Print("   "..RPH_TXT.statItems..": "..RPH_Help_COLOUR..RPH:BoolToEnabled(RPH_Data.ShowItems).."|r", true)
	RPH:Print("   "..RPH_TXT.statGeneral..": "..RPH_Help_COLOUR..RPH:BoolToEnabled(RPH_Data.ShowGeneral).."|r", true)
	RPH:Print("   "..RPH_TXT.statMissing..": "..RPH_Help_COLOUR..RPH:BoolToEnabled(RPH_Data.ShowMissing).."|r", true)
	RPH:Print("   "..RPH_TXT.statDetails..": "..RPH_Help_COLOUR..RPH:BoolToEnabled(RPH_Data.ExtendDetails).."|r", true)
	RPH:Print("   "..RPH_TXT.statChat..": "..RPH_Help_COLOUR..RPH:BoolToEnabled(RPH_Data.WriteChatMessage).."|r", true)

	RPH:Print("   "..RPH_TXT.statNoGuildChat..": "..RPH_Help_COLOUR..RPH:BoolToEnabled(RPH_Data.NoGuildGain).."|r", true)
	RPH:Print("   "..RPH_TXT.statPreview..": "..RPH_Help_COLOUR..RPH:BoolToEnabled(RPH_Data.ShowPreviewRep).."|r", true)
	RPH:Print("   "..RPH_TXT.statSwitch..": "..RPH_Help_COLOUR..RPH:BoolToEnabled(RPH_Data.SwitchFactionBar).."|r", true)
	RPH:Print("   "..RPH_TXT.statNoGuildSwitch..": "..RPH_Help_COLOUR..RPH:BoolToEnabled(RPH_Data.NoGuildSwitch).."|r", true)
	RPH:Print("   "..RPH_TXT.statSilentSwitch..": "..RPH_Help_COLOUR..RPH:BoolToEnabled(RPH_Data.SilentSwitch).."|r", true)
	RPH:Print("   "..RPH_TXT.EnableParagonBar..": "..RPH_Help_COLOUR..RPH:BoolToEnabled(RPH_Data.ShowParagonBar).."|r", true)
end

-----------------------------------
-- _08_ Faction map --
-----------------------------------
function RPH:InitMapName(fimap)
	--- fpt f_imn	RPH:Printtest(fimap,"","map 1")
	local map
	if fimap == 1 then
		map = RPH_TXT.srfd
	elseif fimap== 2 then
		map = RPH_TXT.tbd
	elseif fimap== 3 then
		map = RPH_TXT.mnd
	elseif fimap== 5 then
		map = RPH_TXT.nci
	elseif fimap == 6 then
		map = RPH_TXT.hci
	elseif not fimap then
		map = " "
	else
		local mapName = GetMapNameByID(fimap);
		map = mapName
	end
	--- fpt f_imn	RPH:Printtest(fimap,"","map 2")
	if not map then
		map = fimap
	end
	return map
end

function RPH:InitMobName(fimob)
	--- fpt f_ion	RPH:Printtest(fimob,"","mob 1")
	local mob
	if fimob == 1 then
		mob = RPH_TXT.tmob
	elseif fimob== 2 then
		mob = RPH_TXT.oboss
	elseif fimob== 3 then
		mob = RPH_TXT.aboss
	elseif fimob == 4 then
		mob = RPH_TXT.pboss
	elseif fimob == 5 then
		mob = RPH_TXT.fclear
	elseif fimob == 11 then
		mob = (RPH_TXT.AU.." "..RPH_TXT.BB)
	elseif fimob== 12 then
		mob = (RPH_TXT.AU.." "..RPH_TXT.SSP)
	elseif fimob== 13 then
		mob = (RPH_TXT.AU.." "..RPH_TXT.Wa)
	elseif fimob == 14 then
		mob = RPH_TXT.VCm
	elseif fimob == 15 then
		mob = (RPH_TXT.AN.." "..RPH_TXT.BB)
	elseif fimob== 16 then
		mob = (RPH_TXT.AN.." "..RPH_TXT.SSP)
	elseif fimob== 17 then
		mob = (RPH_TXT.AN.." "..RPH_TXT.Wa)
	else
	--[[--	local mobName = GetmobNameByID(fimob);
		mob = mobName	--]]--
	end
	--- fpt f_ion	RPH:Printtest(fimob,mob,"mob 2")
	if not mob then
		mob = fimob
	end
	return mob
end

function RPH:InitItemName(fiitem,amt)
	--- fpt f_iin	RPH:Printtest(fiitem,amt,"item 1")
	if fiitem==1 then
		item_name = RPH_TXT.cdq
	elseif fiitem==2 then
		item_name = RPH_TXT.fdq
	elseif fiitem==3 then
		item_name = RPH_TXT.ndq
	elseif fiitem == 4 then
		item_name = RPH_TXT.cbadge
	elseif fiitem == 5 then
		item_name = RPH_TXT.deleted
	else
		item_name = GetItemInfo(fiitem)
	end

	if not item_name then
		item_name=GetCurrencyInfo(fiitem)
	end

	if not item_name then
		item_name = fiitem
	end
	return item_name
end

function RPH:Quest_Names(questIndex)

		RPH_HiddenQuestTooltip:SetOwner(WorldFrame, ANCHOR_NONE)
		RPH_HiddenQuestTooltip:SetHyperlink(format("quest:%d", questIndex))

		local quest = RPH_HiddenQuestTooltipTextLeft1:GetText()
		RPH_HiddenQuestTooltip:Hide()

		if questIndex == 1 then
			quest = RPH_TXT.cdq
		elseif questIndex == 2 then
			quest = RPH_TXT.coq
		elseif questIndex == 3 then
			quest = RPH_TXT.fdq
		elseif questIndex == 4 then
			quest = RPH_TXT.foq
		elseif questIndex == 5 then
			quest = RPH_TXT.ndq
		elseif questIndex == 6 then
			quest = RPH_TXT.deleted
		elseif questIndex == 7 then
			quest = RPH_TXT.Championing
		elseif questIndex == 8 then
			quest = RPH_TXT.bpqfg
		elseif questIndex == 9 then
			quest = RPH_TXT.djdq
		elseif questIndex == 99 then
			quest = RPH_TXT.tbd
		else
			if not quest then
				quest = questIndex
			end
		end

		return quest
	end

function RPH:GetTabardFaction()
	for i = 1, 40 do
		local _, _, _, _, _, _, _, _, _, _, id = UnitBuff("player", i)
		if not id then
			break
		end
		local data = championFactions[id]
		if data then
			local faction, level = data[2], data[1]
			if DEBUG then self:Debug("GetChampionedFaction:", tostring(faction), tostring(level)) end
			return faction, level
		end
	end
	if DEBUG then self:Debug("GetChampionedFaction:", "none") end
end

function RPH:InitFactor(RPH_IsHuman,faction)
--- Thanks Gwalkmaur for the heads up
	--RPH:Print("Faction: "..faction);
	local draenorFactions = {"Council of Exarchs", 
							"Frostwolf Orcs", 
							"Wrynn's Vanguard", 
							"Vol'jin's Spear", 
							"Sha'tari Defense",  
							"Laughing Skull Orcs", 
							"Hand of the Prophet", 
							"Vol'jin's Headhunters", 
							"Arakkoa Outcasts", 
							"Order of the Awakened", 
							"The Saberstalkers", 
							"Steamwheedle Preservation Society"}

	local factor=1.0
	-- Race check
		if RPH_IsHuman then factor = factor + 0.1 end

	-- WoD Faction trading post bonus
		if RPH:has_value(draenorFactions, faction) and RPH_HasTradingPost then 
			factor = factor + 0.2; 
		end

	-- bonus repgain check
		local numFactions = GetNumFactions();
		local factionOffset=0;
		local factionIndex;
		local factor_h=0
		for i=1,numFactions do
			local factionIndex = factionOffset + i;
			if (factionIndex <= numFactions) then
				local name, hasBonusRepGain;
				local name, _, _, _, _, _, _, _, _, _, _, _, _, _, hasBonusRepGain, _ = GetFactionInfo(factionIndex);
				if (faction==name) then
				--- f_if	RPH:Printtest(faction,name,"test")
					if (hasBonusRepGain) then
					--- f_if	RPH:Printtest(faction,name,"Gain")
						factor=factor+1
					end
				end
			end
		end
	--- f_if	RPH:Printtest(faction,factor,"fact")
	return factor

end

function RPH:InitFaction(guildName,faction)
	if faction=="guildName" or faction==RPH_GuildName then
	--- f_ifa	RPH:Printtest(faction,guildName,"1")
		RPH_faction = faction
	else
		RPH_faction = GetFactionInfoByID(faction)
	end
	return RPH_faction
end

function RPH:InitFactionMap(locale, guildName)
	RPH_FactionMapping = {}
	RPH_InitEnFactions()
	if (guildName) then
		RPH_AddMapping(guildName, guildName)
	end
end

function RPH_AddMapping(english, localised)
--- f_am	RPH:Printtest(english, localised,"map")
	if (not RPH_FactionMapping) then
		RPH_FactionMapping = {}
	end

	if (RPH:InitFaction(RPH_GuildName,localised)) then
		RPH_FactionMapping[string.lower(RPH_faction)] = string.lower(english)
	end
end

------------------------------------
-- _09_ Faction Lists --
------------------------------------

function RPH:Content(faction, from, to, name, rep)

	if not faction then return 0 end
	if not from then return 0 end
	if not to then return 0 end
	if not name then return 0 end
	if not rep then return 0 end
	if (type(rep) ~= "number") then return 0 end
	if ((from<1) or (from>8)) then return 0 end
	if ((to<1) or (to>8)) then return 0 end
	if (from > to) then return 0 end
	return 1
end

function RPH_AddSpell(faction, from, to, name, rep, zone, limit)

--[[--	if not faction then return end
	if not from then return end
	if not to then return end
	if not name then return end
	if not rep then return end
	if (type(rep) ~= "number") then return end
	if ((from<1) or (from>8)) then return end
	if ((to<1) or (to>8)) then return end
	if (from > to) then return end								--]]--
	if RPH:Content(faction, from, to, name, rep) ~=1 then return end
--[[--	RPH_Initspellname(name)
---	RPH:InitMapName(zone)


	rep = rep * RPH:InitFactor(RPH_IsHuman,RPH_faction)
	faction = string.lower(RPH:InitFaction(RPH_GuildName,faction))
	---	RPH:Printtest(faction,RPH_faction,"spell")--fpt

	for standing = from,to do
		local faction_info = RPH_FactionGain[faction]
		if not faction_info then
			faction_info = {}
			RPH_FactionGain[faction] = faction_info
		end
		local standing_info = faction_info[standing]
		if not standing_info then
			standing_info = {}
			faction_info[standing] = standing_info
		end
		local add_info = standing_info.spells
		if add_info then
			add_info.count = add_info.count + 1
		else
			add_info = {}
			add_info.data = {}
			add_info.count = 0
			standing_info.spells = add_info
		end
		local count = add_info.count
		add_info.data[count] = {}
		local add_count=add_info.data[count]
		add_count.name = mark_spell --- name
		add_count.rep = rep
		add_count.zone = zone --- mark_map
		add_count.maxStanding = to
		if ((standing == to) and limit) then
			add_count.limit = limit
		end
		RPH:Debug("Added spell ["..name.."] for faction ["..faction.."] and standing [".._G["FACTION_STANDING_LABEL"..standing].."]")
	end	--]]--
end

function RPH_AddMob(faction, from, to, name, rep, zone, limit)

--[[--	if not faction then return end
	if not from then return end
	if not to then return end
	if not name then return end
	if not rep then return end
	if (type(rep) ~= "number") then return end
	if ((from<1) or (from>8)) then return end
	if ((to<1) or (to>8)) then return end
	if (from > to) then return end								--]]--
	if RPH:Content(faction, from, to, name, rep) ~=1 then return end

	faction = string.lower(RPH:InitFaction(RPH_GuildName,faction))
	rep = rep * RPH:InitFactor(RPH_IsHuman,RPH_faction)
	--- f_amo	RPH:Printtest(faction,RPH_faction,"mob")

	for standing = from,to do
		local faction_info = RPH_FactionGain[faction]
		if not faction_info then
			faction_info = {}
			RPH_FactionGain[faction] = faction_info
		end
		local standing_info = faction_info[standing]
		if not standing_info then
			standing_info = {}
			faction_info[standing] = standing_info
		end
		local add_info = standing_info.mobs
		if add_info then
			add_info.count = add_info.count + 1
		else
			add_info = {}
			add_info.data = {}
			add_info.count = 0
			standing_info.mobs = add_info
		end
		local count = add_info.count
		add_info.data[count] = {}
		local add_count=add_info.data[count]
		add_count.name = name
		add_count.rep = rep
		add_count.maxStanding = to
		add_count.zone = zone
		if ((standing == to) and limit) then
			add_count.limit = limit
		end
		RPH:Debug("Added mob ["..name.."] for faction ["..faction.."] and standing [".._G["FACTION_STANDING_LABEL"..standing].."]")
	end
end

function RPH_AddQuest(faction, from, to, name, rep, itemList, limitType)

--[[--	if not faction then return end
	if not from then return end
	if not to then return end
	if not name then return end
	if not rep then return end
	if (type(rep) ~= "number") then return end
	if ((from<1) or (from>8)) then return end
	if ((to<1) or (to>8)) then return end
	if (from > to) then return end								--]]--
	if RPH:Content(faction, from, to, name, rep) ~=1 then return end

	faction = string.lower(RPH:InitFaction(RPH_GuildName,faction))
	rep = rep * RPH:InitFactor(RPH_IsHuman,RPH_faction)
	
	--- f_aq	RPH:Printtest(faction,RPH_faction,"quest")

	for standing = from,to do
		local faction_info = RPH_FactionGain[faction]
		if not faction_info then
			faction_info = {}
			RPH_FactionGain[faction] = faction_info
		end
		local standing_info = faction_info[standing]
		if not standing_info then
			standing_info = {}
			faction_info[standing] = standing_info
		end
		local add_info = standing_info.quests
		if add_info then
			add_info.count = add_info.count + 1
		else
			add_info = {}
			add_info.data = {}
			add_info.count = 0
			standing_info.quests = add_info
		end
		local count=add_info.count
		add_info.data[count] = {}
		local add_count=add_info.data[count]
		add_count.name = name
		add_count.rep = rep
		add_count.maxStanding = to
		if (itemList) then
			if (itemList == "nil") then
				add_count.profession = limitType
			else
				add_count.items = {}
				for item in pairs(itemList) do
					add_count.items[item] = itemList[item]
					--- f_aq	RPH:Printtest(add_count.items[item_name],mark_I[item_name],"item 4")
				end
			end
		end
		if ((standing == to) and limit) then
			add_count.limit = limit
		end

		RPH:Debug("Added quest ["..name.."] for faction ["..faction.."] and standing [".._G["FACTION_STANDING_LABEL"..standing].."]")
	end
end

function RPH_AddInstance(faction, from, to, name, rep, heroic)

--[[--	if not faction then return end
	if not from then return end
	if not to then return end
	if not name then return end
	if not rep then return end
	if (type(rep) ~= "number") then return end
	if ((from<1) or (from>8)) then return end
	if ((to<1) or (to>8)) then return end
	if (from > to) then return end								--]]--
	if RPH:Content(faction, from, to, name, rep) ~=1 then return end

	faction = string.lower(RPH:InitFaction(RPH_GuildName,faction))
	rep = rep * RPH:InitFactor(RPH_IsHuman,RPH_faction)
	
	--- f_ain	RPH:Printtest(faction,RPH_faction,"inst")

	for standing = from,to do
		local faction_info = RPH_FactionGain[faction]
		if not faction_info then
			faction_info = {}
			RPH_FactionGain[faction] = faction_info
		end
		local standing_info = faction_info[standing]
		if not standing_info then
			standing_info = {}
			faction_info[standing] = standing_info
		end
		local add_info = standing_info.instance
		if add_info then
			add_info.count = add_info.count + 1
		else
			add_info = {}
			add_info.data = {}
			add_info.count = 0
			standing_info.instance = add_info
		end
		local count = add_info.count
		add_info.data[count] = {}
		local add_count=add_info.data[count]
		add_count.name = name
		add_count.rep = rep
		add_count.maxStanding = to
		if ((standing == to) and limit) then
			add_count.limit = limit
		end

		add_count.level = (heroic and
			 RPH_TXT.heroic
		or
			RPH_TXT.normal
		)
		RPH:Debug("Added instance ["..name.."] for faction ["..faction.."] and standing [".._G["FACTION_STANDING_LABEL"..standing].."]")
	end
end

function RPH_AddItems(faction, from, to, rep, itemList, alternativeItemList)

--[[--	if not faction then return end
	if not from then return end
	if not to then return end
	if not rep then return end
	if not itemList then return end
	if (type(rep) ~= "number") then return end
	if ((from<1) or (from>8)) then return end
	if ((to<1) or (to>8)) then return end
	if (from > to) then return end								--]]--
	if RPH:Content(faction, from, to, itemList, rep) ~=1 then return end

	faction = string.lower(RPH:InitFaction(RPH_GuildName,faction))
	rep = rep * RPH:InitFactor(RPH_IsHuman,RPH_faction)
	
	--- f_ait	RPH:Printtest(faction,RPH_faction,"item")

	local itemString = ""
	for standing = from,to do
		local faction_info = RPH_FactionGain[faction]
		if not faction_info then
			faction_info = {}
			RPH_FactionGain[faction] = faction_info
		end
		local standing_info = faction_info[standing]
		if not standing_info then
			standing_info = {}
			faction_info[standing] = standing_info
		end
		local add_info = standing_info.items
		if add_info then
			add_info.count = add_info.count + 1
		else
			add_info = {}
			add_info.data = {}
			add_info.count = 0
			standing_info.items = add_info
		end
		local count=add_info.count

		add_info.data[count] = {}
		local add_count=add_info.data[count]
		add_count.rep = rep
		add_count.maxStanding = to
		if ((standing == to) and limit) then
			add_count.limit = limit
		end

		if (itemList) then
			add_count.items = {}
			for item in pairs(itemList) do
				add_count.items[item] = itemList[item]
			end
		end

		if (alternativeItemList) then
			add_count.alternativeItems = {}
			for item in pairs(alternativeItemList) do
				add_count.alternativeItems[item] = alternativeItemList[item]
			end
		end
		RPH:Debug("AddItem: Added items ["..itemString.."] for faction ["..faction.."] and standing [".._G["FACTION_STANDING_LABEL"..standing].."]")
	end
end

function RPH_AddGeneral(faction, from, to, name, rep, head, tip, tipList, flag)

--[[--	if not faction then return end
	if not from then return end
	if not to then return end
	if not name then return end
	if not rep then return end
	if (type(rep) ~= "number") then return end
	if ((from<1) or (from>8)) then return end
	if ((to<1) or (to>8)) then return end
	if (from > to) then return end								--]]--
	if RPH:Content(faction, from, to, name, rep) ~=1 then return end

	faction = string.lower(RPH:InitFaction(RPH_GuildName,faction))
	rep = rep * RPH:InitFactor(RPH_IsHuman,RPH_faction)
	--- f_ag	RPH:Printtest(faction,RPH_faction,"gen") 
	local tipString = ""

	for standing = from,to do
		local faction_info = RPH_FactionGain[faction]
		if not faction_info then
			faction_info = {}
			RPH_FactionGain[faction] = faction_info
		end
		local standing_info = faction_info[standing]
		if not standing_info then
			standing_info = {}
			faction_info[standing] = standing_info
		end
		local add_info = standing_info.general
		if add_info then
			add_info.count = add_info.count + 1
		else
			add_info = {}
			add_info.data = {}
			add_info.count = 0
			standing_info.general = add_info
		end
		local count = add_info.count
		add_info.data[count] = {}
		local add_count=add_info.data[count]
		add_count.name = name
		add_count.rep = rep
		add_count.maxStanding = to
		if ((standing == to) and limit) then
			add_count.limit = limit
		end

		if name == "1" then
			name = RPH_TXT.tfr
			head = RPH_TXT.tfr
			tip = RPH_TXT.nswts
		end

		add_count.flag = flag
		add_count.head = head
		add_count.tip = tip
		if (tipList) then
			add_count.tipList = {}
			for tip in pairs(tipList) do
				if tipString ~= "" then tipString = tipString..", " end
				tipString = tipString..tipList[tip]..": "..tip
				add_count.tipList[tip] = tipList[tip]
			end
		end

		RPH:Debug("AddGeneral: Added general rep gain ["..name.."] for faction ["..faction.."] and standing [".._G["FACTION_STANDING_LABEL"..standing].."] with tooltip ["..tipString.."]")
	end
end

-----------------------------------
-- _10_ New Hook Functions --
-----------------------------------
function RPH_GetFactionInfo(factionIndex)

	-- get original information
	local name, description, standingID, barMin, barMax, barValue, atWarWith, canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild, factionID, hasBonusRepGain, canBeLFGBonus = RPH_Orig_GetFactionInfo(factionIndex)

	-- Normalize Values to within standing
	local normMax = barMax-barMin
	local normCurrent = barValue-barMin

	
	-- add missing reputation
	if (RPH_Data.ShowMissing and isHeader and not hasRep and ((normMax-normCurrent)>0)) then
		name = name.." ("..normMax-normCurrent..")"
	end

	-- return Values
	return name, description, standingID, barMin, barMax, barValue, atWarWith, canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild, factionID, hasBonusRepGain, canBeLFGBonus;
end
-- RPH_RepFrame_Up Start
--- v rfl 1
function RPH_ReputationFrame_Update() --rfl
	if (RPH_OnLoadingScreen == false) then
		ReputationFrame.paragonFramesPool:ReleaseAll();
		-- v rfl 1.1
			local numFactions
			if RPH_Data.SortByStanding then
				RPH:StandingSort()
				numFactions = RPH_OBS_numFactions
			else
		-- ^ rfl 1.1
				numFactions = GetNumFactions();
		-- v rfl 1.2
			end
		-- ^ rfl 1.2
			-- Update scroll frame
			if ( not FauxScrollFrame_Update(ReputationListScrollFrame, numFactions, NUM_FACTIONS_DISPLAYED, REPUTATIONFRAME_FACTIONHEIGHT ) ) then
				ReputationListScrollFrameScrollBar:SetValue(0);
			end
			local factionOffset = FauxScrollFrame_GetOffset(ReputationListScrollFrame);
		-- v rfl 1.3
			if (RPH_Data.ShowMissing) then
				ReputationFrameStandingLabel:SetText(RPH_Orig_StandingText.." "..RPH_TXT.missing)
			else
				ReputationFrameStandingLabel:SetText(RPH_Orig_StandingText)
			end
		-- ^ rfl 1.3
			local gender = UnitSex("player");
			local lfgBonusFactionID = GetLFGBonusFactionID();
		
			local i;
			for i=1, NUM_FACTIONS_DISPLAYED, 1 do
				local factionIndex = factionOffset + i;
				local factionRow = _G["ReputationBar"..i];
				local factionBar = _G["ReputationBar"..i.."ReputationBar"];
				local factionTitle = _G["ReputationBar"..i.."FactionName"];
				local factionButton = _G["ReputationBar"..i.."ExpandOrCollapseButton"];
				local factionStanding = _G["ReputationBar"..i.."ReputationBarFactionStanding"];
				local factionBackground = _G["ReputationBar"..i.."Background"];
		-- v rfl 1.4
				local factionBarPreview = _G["RPH_StatusBar"..i];
		-- ^ rfl 1.4
				if ( factionIndex <= numFactions ) then
		-- v rfl _9_ rep Main window
					if RPH_Data.SortByStanding then
						RPH:SortByStanding(i,factionIndex,factionRow,factionBar,factionBarPreview,factionTitle,factionButton,factionStanding,factionBackground,lfgBonusFactionID)
					else
						RPH:OriginalRepOrder(i,factionIndex,factionRow,factionBar,factionBarPreview,factionTitle,factionButton,factionStanding,factionBackground,lfgBonusFactionID)
					end
		-- ^ rfl _9_ Rep Main Window
				else
					factionRow:Hide();
				end
			end
			if ( GetSelectedFaction() == 0 ) then
				ReputationDetailFrame:Hide();
		-- v rfl 1.5
				RPH_ReputationDetailFrame:Hide();
		-- ^ rfl 1.5
			end
		end
end
-- ^ rfl 1

function RPH_ExpandFactionHeader(index)
	-- replaces ExpandFactionHeader
	---fpt f_efh	RPH:Printtest(index,"","f_efh_1")							---fpt f_efh
	if not RPH_Entries then return end
	if RPH_Data.SortByStanding then
		if not RPH_Entries[index] then return end
		RPH_Collapsed[RPH_Entries[index].i] = nil
		RPH_ReputationFrame_Update()
	else
		RPH_Orig_ExpandFactionHeader(index)
		--[[
		local name = RPH_Orig_GetFactionInfo(index);
		RPH_Data.OriginalCollapsed[name] = nil
		--RPH:Print("Expanding original index "..tostring(index).." which is ["..tostring(name).."]")
		RPH_ShowCollapsedList()
		]]--
	end
end

function RPH_ReputationFrame_SetRowType(factionRow, isChild, isHeader, hasRep)
	--rowType is a binary table of type isHeader, isChild
	local factionRowName = factionRow:GetName()
	local factionBar = _G[factionRowName.."ReputationBar"];
	local factionTitle = _G[factionRowName.."FactionName"];
	local factionButton = _G[factionRowName.."ExpandOrCollapseButton"];
	local factionStanding = _G[factionRowName.."ReputationBarFactionStanding"];
	local factionBackground = _G[factionRowName.."Background"];
	local factionLeftTexture = _G[factionRowName.."ReputationBarLeftTexture"];
	local factionRightTexture = _G[factionRowName.."ReputationBarRightTexture"];
	factionLeftTexture:SetWidth(62);
	factionRightTexture:SetWidth(42);
	factionBar:SetPoint("RIGHT", factionRow, "RIGHT", 0, 0);
	if ( isHeader ) then
		factionRow:SetPoint("LEFT", ReputationFrame, "LEFT", 10, 0);
		factionTitle:SetWidth(145);
		factionButton:SetPoint("LEFT", factionRow, "LEFT", 3, 0);
		factionButton:Show();
		factionTitle:SetPoint("LEFT",factionButton,"RIGHT",10,0);
		factionTitle:SetFontObject(GameFontNormalLeft);
		factionBackground:Hide()
		factionLeftTexture:SetHeight(15);
		factionLeftTexture:SetWidth(60);
		factionRightTexture:SetHeight(15);
		factionRightTexture:SetWidth(39);
		factionLeftTexture:SetTexCoord(0.765625, 1.0, 0.046875, 0.28125);
		factionRightTexture:SetTexCoord(0.0, 0.15234375, 0.390625, 0.625);
		factionBar:SetWidth(99);
		factionRow.LFGBonusRepButton:SetPoint("RIGHT", factionButton, "LEFT", 0, 1);
	else
		factionRow:SetPoint("LEFT", ReputationFrame, "LEFT", 29, 0);
		factionTitle:SetWidth(160);
		factionButton:Hide();
		factionTitle:SetPoint("LEFT", factionRow, "LEFT", 10, 0);
		factionTitle:SetFontObject(GameFontHighlightSmall);
		factionBackground:Show();
		factionLeftTexture:SetHeight(21);
		factionRightTexture:SetHeight(21);
		factionLeftTexture:SetTexCoord(0.7578125, 1.0, 0.0, 0.328125);
		factionRightTexture:SetTexCoord(0.0, 0.1640625, 0.34375, 0.671875);
		factionBar:SetWidth(101)
		factionRow.LFGBonusRepButton:SetPoint("RIGHT", factionBackground, "LEFT", -2, 0);
	end
	if ( (hasRep) or (not isHeader) ) then
		factionStanding:Show();
		factionBar:Show();
		factionBar:GetParent().hasRep = true;
	else
		factionStanding:Hide();
		factionBar:Hide();
		factionBar:GetParent().hasRep = false;
	end
end
function RPH_CollapseFactionHeader(index)
	-- replaces CollapseFactionHeader
	---fpt f_efh	RPH:Printtest(index,"","f_cfh_1")							---fpt f_efh
	if not RPH_Entries then return end

	if RPH_Data.SortByStanding then
		if not RPH_Entries[index] then return end
		RPH_Collapsed[RPH_Entries[index].i] = true
		RPH_ReputationFrame_Update()
	else
		RPH_Orig_CollapseFactionHeader(index)
		--[[
		local name = RPH_Orig_GetFactionInfo(index);
		RPH_Data.OriginalCollapsed[name] = true
		--RPH:Print("Collapsing original index "..tostring(index).." which is ["..tostring(name).."]")
		RPH_ShowCollapsedList()
		]]--
	end
end

function RPH_ReputationBar_OnClick(self)
	-- redo from the main Reputation file
	if ((ReputationDetailFrame:IsVisible() or RPH_ReputationDetailFrame:IsVisible()) and (GetSelectedFaction() == self.index) ) then
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF);
		ReputationDetailFrame:Hide();
		RPH_ReputationDetailFrame:Hide();
	else
		if (self.hasRep) then
			PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON);
			RPH_ReputationDetailFrame:Show();
			SetSelectedFaction(self.index);
			ReputationDetailFrame:Hide();
			RPH_OptionsFrame:Hide()
			if (RPH_Data.ExtendDetails) then
				RPH:BuildUpdateList()
				RPH_UpdateList_Update()
			end
			ReputationFrame_Update(); -- rfl Event
		end
	end
end


RPH_UPDATE_LIST_HEIGHT = 13

function RPH_UpdateList_Update()
	-- usually called In conjuction with RPH:BuildUpdateList
	--fpt hed ful_u	RPH:Printtest("","","ful_u 1")
	if (not RPH_ReputationDetailFrame:IsVisible()) then return end

	RPH_UpdateListScrollFrame:Show()
	RPH_ShowQuestButton:SetChecked(RPH_Data.ShowQuests)
	RPH_ShowItemsButton:SetChecked(RPH_Data.ShowItems)
	RPH_ShowMobsButton:SetChecked(RPH_Data.ShowMobs)
	RPH_ShowInstancesButton:SetChecked(RPH_Data.ShowInstances)
	RPH_ShowGeneralButton:SetChecked(RPH_Data.ShowGeneral)
	RPH_ShowDarkmoonFaireButton:SetChecked(RPH_Data.ShowDarkmoonFaire)

	RPH_ShowQuestButtonText:SetText(RPH_TXT.showQuests)
	RPH_ShowItemsButtonText:SetText(RPH_TXT.showItems)
	RPH_ShowMobsButtonText:SetText(RPH_TXT.showMobs)
	RPH_ShowInstancesButtonText:SetText(RPH_TXT.showInstances)
	RPH_ShowGeneralButtonText:SetText(RPH_TXT.showGeneral)
	RPH_ShowDarkmoonFaireButtonText:SetText(RPH_TXT.darkmoonFaireBuff)

	RPH_ShowAllButton:SetText(RPH_TXT.showAll)
	RPH_ShowNoneButton:SetText(RPH_TXT.showNone)
	RPH_ExpandButton:SetText(RPH_TXT.expand)
	RPH_CollapseButton:SetText(RPH_TXT.collapse)

	RPH_SupressNoneFactionButton:SetText(RPH_TXT.supressNoneFaction)
	RPH_SupressNoneGlobalButton:SetText(RPH_TXT.supressNoneGlobal)
	RPH_ReputationDetailSuppressHint:SetText(RPH_TXT.suppressHint)
	RPH_ClearSessionGainButton:SetText(RPH_TXT.clearSessionGain)

	local numEntries, highestVisible = RPH:GetUpdateListSize()

	-- Update scroll frame
	if ( not FauxScrollFrame_Update(RPH_UpdateListScrollFrame, numEntries, RPH_UPDATE_LIST_HEIGHT, 16 ) ) then
		RPH_UpdateListScrollFrameScrollBar:SetValue(0);
	end
	local entryOffset = FauxScrollFrame_GetOffset(RPH_UpdateListScrollFrame);

	local entryIndex
	local entryFrameName, entryFrame, entryTexture
	local entryLabel, entryName, entryRep, entryTimes
	local entryItemTimes, entryItemName, entryItemTotal
	local postfix

	local haveInfo = false;
	entryIndex = 1
	local i = 0
	local max = RPH:TableSize(RPH_UpdateList)
	while(i<entryOffset and entryIndex<max) do
		if RPH_UpdateList[entryIndex].isShown then
			i = i + 1
		end
		entryIndex = entryIndex + 1
	end
	for i=1, RPH_UPDATE_LIST_HEIGHT, 1 do
		while ((entryIndex <= highestVisible) and not RPH_UpdateList[entryIndex].isShown) do
			entryIndex = entryIndex + 1
		end
		if (entryIndex <= highestVisible) then
			haveInfo = true

			entryFrameName = "RPH_UpdateEntry"..i
			entryFrame = _G[entryFrameName]
			entryTexture = _G[entryFrameName.."Texture"]

			entryLabel = _G[entryFrameName.."Label"]
			entryName = _G[entryFrameName.."Name"]
			entryRep = _G[entryFrameName.."Rep"]
			entryTimes = _G[entryFrameName.."Times"]

			entryItemTimes = _G[entryFrameName.."ItemTimes"]
			entryItemName = _G[entryFrameName.."ItemName"]
			entryItemTotal = _G[entryFrameName.."TotalTimes"]
			local F_UL_ei = RPH_UpdateList[entryIndex]

			if (entryFrame) then
				entryFrame:Show()
				entryFrame.id = F_UL_ei.index
				entryFrame.tooltipHead = F_UL_ei.tooltipHead
				entryFrame.tooltipTip = F_UL_ei.tooltipTip
				entryFrame.tooltipDetails = F_UL_ei.tooltipDetails
			end

			local color = ""
			if (F_UL_ei.highlight) then
				color = RPH_HIGHLIGHT_COLOUR
			elseif (F_UL_ei.suppress) then
				color = RPH_SUPPRESS_COLOUR
			elseif (F_UL_ei.lowlight) then
				color = RPH_LOWLIGHT_COLOUR
			end

			if (F_UL_ei.type ~= "") then
				-- normal entry
				if (F_UL_ei.suppress) then
					postfix = ""
				else
					postfix = "-Green"
				end
				if (F_UL_ei.hasList) then
					if (F_UL_ei.listShown) then
						entryTexture:SetTexture("Interface\\Addons\\RepHelper\\Textures\\UI-MinusButton-Up"..postfix..".tga")
					else
						entryTexture:SetTexture("Interface\\Addons\\RepHelper\\Textures\\UI-PlusButton-Up"..postfix..".tga")
					end
				else
					entryTexture:SetTexture("Interface\\Addons\\RepHelper\\Textures\\UI-EmptyButton-Up"..postfix..".tga")
				end
				if (F_UL_ei.canSuppress) then
					entryTexture:Show()
				else
					entryTexture:Hide()
				end

				entryLabel:Show()
				entryName:Show()
				entryRep:Show()
				entryTimes:Show()

				entryLabel:SetText(color..F_UL_ei.type)
				entryName:SetText(color..F_UL_ei.name)
				entryRep:SetText(color..F_UL_ei.rep)
				entryTimes:SetText(color..F_UL_ei.times)

				entryItemTimes:Hide()
				entryItemName:Hide()
				entryItemTotal:Hide()
			else
				-- item entry
				entryTexture:Hide()
				entryLabel:Hide()
				entryName:Hide()
				entryRep:Hide()
				entryTimes:Hide()

				entryItemTimes:Show()
				entryItemName:Show()

				entryItemTimes:SetText(color..F_UL_ei.times)
				entryItemName:SetText(color..F_UL_ei.name)
			end
			entryIndex = entryIndex + 1
		else
			_G["RPH_UpdateEntry"..i]:Hide()
		end
		if haveInfo then
			RPH_NoInformationText:Hide()
		else
			RPH_NoInformationText:SetText(RPH_TXT.noInfo)
			RPH_NoInformationText:Show()
		end
	end
end

function RPH_MouseButtonUp(self, button)
	-- unkown call
	--fpt hed mbu	RPH:Printtest("","","1 f_mbu")
	if (button and button == "LeftButton") then
		RPH_UpdateEntryClick(self)
	elseif (button and button == "RightButton") then
		RPH:UpdateEntrySuppress(self)
	end
end

function RPH_UpdateEntryClick(self)
	-- sub function of RPH_MouseButtonUp
	if (RPH_UpdateList[self.id] and RPH_UpdateList[self.id].hasList) then
		if (RPH_UpdateList[self.id].listShown) then
			RPH:ShowUpdateEntry(self.id, false)
		else
			RPH:ShowUpdateEntry(self.id, true)
		end
	end
end

function RPH:UpdateEntrySuppress(self)
	-- sub function of RPH_UpdateEntryClick
	--fpt hed f_ues	RPH:Printtest("","","f_ues 1")
	if (RPH_UpdateList[self.id]) then
		if (RPH_UpdateList[self.id].type ~= "") then
			if (RPH_UpdateList[self.id].faction and RPH_UpdateList[self.id].originalName) then
				if (not RPH_Suppressed) then
					RPH_Suppressed = {}
				end
				if (not RPH_Suppressed[RPH_UpdateList[self.id].faction]) then
					RPH_Suppressed[RPH_UpdateList[self.id].faction] = {}
				end
				if (RPH_Suppressed[RPH_UpdateList[self.id].faction][RPH_UpdateList[self.id].originalName]) then
					--RPH:Print("No longer suppressing ["..RPH_UpdateList[self.id].faction.."]["..RPH_UpdateList[self.id].originalName.."]");
					RPH_Suppressed[RPH_UpdateList[self.id].faction][RPH_UpdateList[self.id].originalName] = nil
				else
					--RPH:Print("Suppressing ["..RPH_UpdateList[self.id].faction.."]["..RPH_UpdateList[self.id].originalName.."]");
					RPH_Suppressed[RPH_UpdateList[self.id].faction][RPH_UpdateList[self.id].originalName] = true
				end
				RPH:BuildUpdateList()
			end
		end
	end
end

function RPH:SupressNone(allFactions)
	-- unkown call
	--fpt hed sn	RPH:Printtest("","","1 sn")
	if (allFactions == true) then
		RPH_Suppressed = {}
		RPH:BuildUpdateList()
	else
		local factionIndex = GetSelectedFaction()
		local faction = GetFactionInfo(factionIndex)

		if (faction) then
			faction = string.lower(faction)
	--- fpt sn	RPH:Printtest(faction,RPH_faction,"1 sn")
			if (RPH_FactionMapping[faction]) then
	--- fpt sn	RPH:Printtest(faction,RPH_faction,"2 sn")
				faction = RPH_FactionMapping[faction]
			end

			if (not RPH_Suppressed) then
				RPH_Suppressed = {}
			end
			RPH_Suppressed[faction] = {}
		end
		RPH:BuildUpdateList()
	end
end

-----------------------------------
-- _11_ Prepare update entries   --
-----------------------------------
function RPH:Update_Tooltip(x, l1,r1)
	x=x+1
	local ToolTip_ID = {l = l1, r = r1}
--	print(x.." "..ToolTip_ID.l.." "..ToolTip_ID.r)
	return ToolTip_ID, x
end

function RPH:BuildUpdateList() --xxx
	RPH_UpdateList = {}
	RPH_CurrentRepInBag = 0
	RPH_CurrentRepInBagBank = 0
	RPH_CurrentRepInQuest = 0
	local index = 1
	local DMF_Factor = 1

	-- Darkmoon Faire buff toggle is active
	if RPH_Data.ShowDarkmoonFaire then
		DMF_Factor = 1.10
	end

	if (not RPH_ReputationDetailFrame:IsVisible()) then
		return
	end

	local factionIndex = GetSelectedFaction()
	--local faction, description, standingId, barMin, barMax, barValue = GetFactionInfo(factionIndex)
	local faction, description, standingId, barMin, barMax, barValue, _, _, _, _, _, _, _, factionID, _, _ = GetFactionInfo(factionIndex)

	if (faction) then
		origFaction = faction
		oFaction = string.lower(faction)
		faction = string.lower(faction)
		if (RPH_FactionMapping[faction]) then
			faction = RPH_FactionMapping[faction]
		end

		if(factionID and C_Reputation.IsFactionParagon(factionID)) then
			local currentValue, threshold, rewardQuestID, hasRewardPending = C_Reputation.GetFactionParagonInfo(factionID);
			barMin, barMax, barValue = 0, threshold, mod(currentValue, threshold);
		end

		local friendID, _, _, _, _, _, _, _, _ = GetFriendshipReputation(factionID);

		if friendID ~= nil and barMax == 43000 then
			barMax = 42000
		end

		-- Normalize Values
		local normMax = barMax - barMin
		local normCurrent = barValue - barMin
		local repToNext = barMax - barValue

		if (RPH_FactionGain[oFaction]) then
			local fg_sid=RPH_FactionGain[oFaction][standingId]
			if (fg_sid) then
				-- instances
				if (fg_sid.instance and RPH_Data.ShowInstances) then
					local fg_sid_x=fg_sid.instance
					for i = 0, fg_sid.instance.count do
						local fg_sid_x_d=fg_sid_x.data[i]
						if (not fg_sid_x_d.limit or (normCurrent < fg_sid_x_d.limit)) then
							local toDo = string.format("%.2f", repToNext / (DMF_Factor * fg_sid_x_d.rep))
							if (fg_sid_x_d.limit) then
								toDo = string.format("%.2f", (fg_sid_x_d.limit - normCurrent) / (DMF_Factor * fg_sid_x_d.rep))
							end --zzz
							RPH_UpdateList[index] = {}
							local FUL_I = RPH_UpdateList[index]
							local bul_name = RPH:InitMapName(fg_sid_x_d.name)
							FUL_I.type = RPH_TXT.instanceShort
							FUL_I.times = math.ceil(toDo).."x"
							FUL_I.rep = string.format("%d", (DMF_Factor * fg_sid_x_d.rep))
							FUL_I.hasList = false
							FUL_I.listShown = nil
							FUL_I.index = index
							FUL_I.belongsTo = nil
							FUL_I.isShown = true
							FUL_I.name = bul_name.." ("..fg_sid_x_d.level..")"

							FUL_I.tooltipHead = RPH_TXT.instanceHead
							FUL_I.tooltipTip = RPH_TXT.instanceTip

							FUL_I.tooltipDetails = {}
							local FUL_I_TD = FUL_I.tooltipDetails
							local x = 0
							FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.instance2, bul_name)
							FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.mode, fg_sid_x_d.level)
							FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.reputation, FUL_I.rep)
							FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.timesToRun, FUL_I.times)
							FUL_I_TD[x], x = RPH:Update_Tooltip(x, " ", " ")
							FUL_I_TD[x] = RPH:Update_Tooltip(x, RPH_TXT.maxStanding, _G["FACTION_STANDING_LABEL"..fg_sid_x_d.maxStanding])
							FUL_I_TD.count = x
							FUL_I.tooltipDetails = FUL_I_TD
							RPH_UpdateList[index] = FUL_I
							index = index + 1
						end
					end
				end

				-- mobs
				if (fg_sid.mobs and RPH_Data.ShowMobs) then
					local fg_sid_x=fg_sid.mobs
					for i = 0, fg_sid_x.count do
					local fg_sid_x_d=fg_sid_x.data[i]
						if (not fg_sid_x_d.limit or (normCurrent < fg_sid_x_d.limit)) then
							local toDo = ceil(repToNext / (DMF_Factor * fg_sid_x_d.rep))
							if (fg_sid_x_d.limit) then
								toDo = ceil((fg_sid_x_d.limit - normCurrent) / (DMF_Factor * fg_sid_x_d.rep))
							end
							RPH_UpdateList[index] = {}
							local FUL_I = RPH_UpdateList[index]
							FUL_I.type = RPH_TXT.mobShort
							FUL_I.times = math.ceil(toDo).."x"
							FUL_I.rep = string.format("%d", (DMF_Factor * fg_sid_x_d.rep))
							FUL_I.hasList = false
							FUL_I.listShown = nil
							FUL_I.index = index
							FUL_I.belongsTo = nil
							FUL_I.isShown = true
							FUL_I.tooltipHead = RPH_TXT.mobHead
							FUL_I.tooltipTip = RPH_TXT.mobTip
							local bul_name = RPH:InitMobName(fg_sid_x_d.name)
							if (fg_sid_x_d.zone) then
								local bul_zone = RPH:InitMapName(fg_sid_x_d.zone)
								FUL_I.name = bul_name.." ("..bul_zone..")"
								FUL_I.tooltipDetails = {}
								local FUL_I_TD = FUL_I.tooltipDetails
								local x = 0
								FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.mob2, bul_name)
								FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.location, bul_zone)
								FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.reputation, FUL_I.rep)
								FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.toDo, FUL_I.times)
								FUL_I_TD[x], x = RPH:Update_Tooltip(x, " ", " ")
								FUL_I_TD[x] = RPH:Update_Tooltip(x, RPH_TXT.maxStanding, _G["FACTION_STANDING_LABEL"..fg_sid_x_d.maxStanding])
								FUL_I_TD.count = x
							else
								FUL_I.name = bul_name
								FUL_I_TD = {}
								local x = 0
								FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.mob2, bul_name)
								FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.reputation, FUL_I.rep)

								FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.toDo, FUL_I.times)

								FUL_I_TD[x], x = RPH:Update_Tooltip(x, " ", " ")

								FUL_I_TD[x] = RPH:Update_Tooltip(x, RPH_TXT.maxStanding, _G["FACTION_STANDING_LABEL"..fg_sid_x_d.maxStanding])
								FUL_I_TD.count = x
								FUL_I.tooltipDetails = FUL_I_TD
							end
							RPH_UpdateList[index] = FUL_I
							index = index + 1
						end
					end
				end

				-- quests (may have items)
				local sum = 0
				local count = 0
				if (fg_sid.quests and RPH_Data.ShowQuests) then
					local fg_sid_x=fg_sid.quests
					for i = 0, fg_sid_x.count do
						local fg_sid_x_d=fg_sid_x.data[i]
						local showQuest = true
						if (fg_sid_x_d.profession) then
							local fg_sid_x_d_p=fg_sid_x_d.profession
							if ((fg_sid_x_d_p == RPH_LIMIT_TYPE_Herb) and not RPH_Herb) then
								-- if list of known professions does not contain Herbology
								showQuest = false
							elseif ((fg_sid_x_d_p == RPH_LIMIT_TYPE_Skin) and not RPH_Skin) then
								-- if list of known professions does not contain Herbology
								showQuest = false
							elseif ((fg_sid_x_d_p == RPH_LIMIT_TYPE_Mine) and not RPH_Mine) then
								-- if list of known professions does not contain Herbology
								showQuest = false
							elseif ((fg_sid_x_d_p == RPH_LIMIT_TYPE_Gather) and not (RPH_Herb or RPH_Skin or RPH_Mine)) then
								-- no gathering profession
								showQuest = false
							elseif ((fg_sid_x_d_p == RPH_LIMIT_TYPE_Jewe) and not RPH_Jewel) then
								-- if list of known professions does not contain jewelcrafting
								showQuest = false
							elseif ((fg_sid_x_d_p == RPH_LIMIT_TYPE_Cook) and not RPH_Cook) then
								-- if list of known professions does not contain jewelcrafting
								showQuest = false
							elseif ((fg_sid_x_d_p == RPH_LIMIT_TYPE_Arch) and not RPH_Arch) then
								-- if list of known professions does not contain jewelcrafting
								showQuest = false
							elseif ((fg_sid_x_d_p == RPH_LIMIT_TYPE_Fish) and not RPH_Fish) then
								-- if list of known professions does not contain jewelcrafting
								showQuest = false
							elseif ((fg_sid_x_d_p == RPH_LIMIT_TYPE_Aid) and not RPH_Aid) then
								-- if list of known professions does not contain jewelcrafting
								showQuest = false
							elseif ((fg_sid_x_d_p == RPH_LIMIT_TYPE_Blac) and not RPH_Black) then
								-- if list of known professions does not contain BLACKsmith
								showQuest = false
							elseif ((fg_sid_x_d_p == RPH_LIMIT_TYPE_Tail) and not RPH_Tailor) then
								-- if list of known professions does not contain tailor
								showQuest = false
							elseif ((fg_sid_x_d_p == RPH_LIMIT_TYPE_Leat) and not RPH_Leath) then
								-- if list of known professions does not contain leather
								showQuest = false
							elseif ((fg_sid_x_d_p == RPH_LIMIT_TYPE_Ench) and not RPH_Enchan) then
								-- if list of known professions does not contain enchanter
								showQuest = false
							elseif ((fg_sid_x_d_p == RPH_LIMIT_TYPE_Engi) and not RPH_Engin) then
								-- if list of known professions does not contain BLACKsmith
								showQuest = false
							elseif ((fg_sid_x_d_p == RPH_LIMIT_TYPE_Incr) and not RPH_Incrip) then
								-- if list of known professions does not contain leather
								showQuest = false
							elseif ((fg_sid_x_d_p == RPH_LIMIT_TYPE_Alch) and not RPH_Alche) then
								-- if list of known professions does not contain enchanter
								showQuest = false
							else
								-- unexpected limit -> ignore this and still show quest ggg
							end
						end

					if (showQuest) then
						if (not fg_sid_x_d.limit or (normCurrent < fg_sid_x_d.limit)) then
							local toDo = ceil(repToNext / (DMF_Factor * fg_sid_x_d.rep))
							if (fg_sid_x_d.limit) then
								toDo = ceil((fg_sid_x_d.limit - normCurrent) / (DMF_Factor * fg_sid_x_d.rep))
							end
							RPH_UpdateList[index] = {}
							local FUL_I = RPH_UpdateList[index]
							FUL_I.type = RPH_TXT.questShort
							FUL_I.times = math.ceil(toDo).."x"
							FUL_I.rep = string.format("%d", (DMF_Factor * fg_sid_x_d.rep))
							FUL_I.index = index
							FUL_I.belongsTo = nil
							FUL_I.isShown = true
							local bul_name = RPH:Quest_Names(fg_sid_x_d.name)
							FUL_I.name = bul_name
							FUL_I.originalName = FUL_I.name

							FUL_I.tooltipHead = RPH_TXT.questHead
							FUL_I.tooltipTip = RPH_TXT.questTip

							FUL_I.faction = faction
							FUL_I.canSuppress = true
							FUL_I.suppress = nil
							if (RPH_Suppressed and RPH_Suppressed[oFaction] and RPH_Suppressed[oFaction][FUL_I.originalName]) then
								FUL_I.suppress = true
							end

							FUL_I.tooltipDetails = {}
							local FUL_I_TD = FUL_I.tooltipDetails
							local x = 0
							FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.quest2, FUL_I.name)
							FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.reputation, FUL_I.rep)
							FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.toDo, FUL_I.times)
							if (not FUL_I.suppress) then
								sum = sum + fg_sid_x_d.rep
								count = count + 1
							end

							if (fg_sid_x_d.items) then
								FUL_I.hasList = true
								FUL_I.listShown = false
								FUL_I_TD[x], x = RPH:Update_Tooltip(x, " ", " ")
								FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.itemsRequired, " ")
								-- quest In log?
								FUL_I.lowlight = nil

								-- check if this quest is known
								local entries, quests = GetNumQuestLogEntries()
								for z=1,entries do
									local title,level,tag,group,header,collapsed,complete,daily = GetQuestLogTitle(z)
									if (title and not header) then
										if string.find(string.lower(bul_name), string.lower(title)) then
											-- this quest matches
											FUL_I.lowlight = true
											FUL_I.name = FUL_I.name..RPH_QUEST_ACTIVE_COLOUR.." ("..RPH_TXT.active..")|r"
										end
									end
								end

								-- add items
								local itemIndex = index+1
								local currentQuestTimesBag = -1
								local currentQuestTimesBagBank = -1

								for item in pairs(fg_sid_x_d.items) do
									RPH_UpdateList[itemIndex] = {}
									local FUL_II = RPH_UpdateList[itemIndex]
									FUL_II.type = ""
									FUL_II.times = math.ceil((fg_sid_x_d.items[item] * toDo)).."x"
									FUL_II.rep = nil
									FUL_II.index = itemIndex
									FUL_II.belongsTo = index
									FUL_II.hasList = nil
									FUL_II.listShown = nil
									FUL_II.isShown = FUL_I.listShown
									FUL_II.name = RPH:InitItemName(item).." ("..fg_sid_x_d.items[item].."x)"

									FUL_I_TD[x], x = RPH:Update_Tooltip(x, fg_sid_x_d.items[item].."x", RPH:InitItemName(item))

									FUL_II, currentQuestTimesBag, currentQuestTimesBagBank = RPH:Quest_Items(fg_sid_x_d.items[item], currentQuestTimesBag, currentQuestTimesBagBank, FUL_II, item)

									RPH_UpdateList[itemIndex] = FUL_II					--come here
									itemIndex = itemIndex + 1
								end
								if (currentQuestTimesBag > 0) then
									FUL_I.highlight = true
									FUL_I.lowlight = nil
									FUL_I.name = FUL_I.name..RPH_BAG_COLOUR.." ["..currentQuestTimesBag.."x]|r"
									FUL_I.currentTimesBag = currentQuestTimesBag
									FUL_I.currentRepBag = currentQuestTimesBag * FUL_I.rep
									RPH_CurrentRepInBag = RPH_CurrentRepInBag + FUL_I.currentRepBag
									--FUL_I.name = FUL_I.originalName
									FUL_I_TD[x], x = RPH:Update_Tooltip(x, " ", " ")
									FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.inBag, " ")
									FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.turnIns, string.format("%d", FUL_I.currentTimesBag))
									FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.reputation, string.format("%d", FUL_I.currentRepBag))
								else
									FUL_I.currentTimesBag = nil
									FUL_I.currentRepBag = nil

								end
								if (currentQuestTimesBagBank > 0) then
									FUL_I.name = FUL_I.name..RPH_BAG_BANK_COLOUR.." ["..currentQuestTimesBagBank.."x]|r"
									FUL_I.currentTimesBagBank = currentQuestTimesBagBank
									FUL_I.currentRepBagBank = currentQuestTimesBagBank * FUL_I.rep
									FUL_I.highlight = true
									FUL_I.name = FUL_I.originalName
									FUL_I.lowlight = nil
									RPH_CurrentRepInBagBank = RPH_CurrentRepInBagBank + FUL_I.currentRepBagBank
									FUL_I_TD[x], x = RPH:Update_Tooltip(x, " ", " ")
									FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.inBagBank, " ")
									FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.turnIns, string.format("%d", FUL_I.currentTimesBagBank))
									FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.reputation, string.format("%d", FUL_I.currentRepBagBank))
								else
									FUL_I.currentTimesBagBank = nil
									FUL_I.currentRepBagBank = nil
								end
								if ((currentQuestTimesBag == 0) and (currentQuestTimesBagBank)) then
									FUL_I.highlight = nil
								end
								index = itemIndex
							else
								-- no items to add
								FUL_I.hasList = false
								FUL_I.listShown = nil
								FUL_I.highlight = nil	-- will be Changed below if needed
								FUL_I.lowlight = nil

								-- check if this quest is known and/or completed
								local entries, quests = GetNumQuestLogEntries()
								for z=1,entries do
									local title,level,tag,group,header,collapsed,complete,daily = GetQuestLogTitle(z)
									if (title and not header) then
										if string.find(string.lower(bul_name), string.lower(title)) then
											-- this quest matches
											if (complete) then
												FUL_I.highlight = true
												FUL_I.name = FUL_I.name..RPH_QUEST_COLOUR.." ("..RPH_TXT.complete..")|r"
												FUL_I.currentTimesQuest = 1
												FUL_I.currentRepQuest = FUL_I.rep
												RPH_CurrentRepInQuest = RPH_CurrentRepInQuest + fg_sid_x_d.rep

												FUL_I_TD[x], x = RPH:Update_Tooltip(x, " ", " ")
												FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.questCompleted, " ")
												FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.reputation, string.format("%d", FUL_I.currentRepQuest))
											else
												FUL_I.lowlight = true
												FUL_I.name = FUL_I.name..RPH_QUEST_ACTIVE_COLOUR.." ("..RPH_TXT.active..")|r"
											end
										end
									end
								end
							index = index + 1
							end

							FUL_I_TD[x], x = RPH:Update_Tooltip(x, " ", " ")
							FUL_I_TD[x] = RPH:Update_Tooltip(x, RPH_TXT.maxStanding, _G["FACTION_STANDING_LABEL"..fg_sid_x_d.maxStanding])
							FUL_I_TD.count = x
						end
					end
				end
				if ((sum > 0) and (count > 1)) then
					-- add virtual quest to show summary of all quests:
					local toDo = ceil(repToNext / (DMF_Factor * sum))
					RPH_UpdateList[index] = {}
					local FUL_I = RPH_UpdateList[index]
					FUL_I.type = RPH_TXT.questShort
					FUL_I.times = math.ceil(toDo).."x"
					FUL_I.rep = string.format("%d", (DMF_Factor * sum))
					FUL_I.index = index
					FUL_I.belongsTo = nil
					FUL_I.isShown = true
					FUL_I.name = string.format(RPH_TXT.allOfTheAbove, count)
					FUL_I.tooltipHead = string.format(RPH_TXT.questSummaryHead, count)
					FUL_I.tooltipTip = RPH_TXT.questSummaryTip

					FUL_I_TD = {}
					local x = 0
					FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.reputation, FUL_I.rep)

					FUL_I_TD[x], x  = RPH:Update_Tooltip(x, RPH_TXT.timesToDo, FUL_I.times)
					FUL_I_TD.count = x-1
					FUL_I.tooltipDetails = FUL_I_TD
					RPH_UpdateList[index] = FUL_I
					index = index + 1
				end
			end

			-- items
			if (fg_sid.items and RPH_Data.ShowItems) then
				local fg_sid_x=fg_sid.items
				for i = 0, fg_sid_x.count do
					local fg_sid_x_d=fg_sid_x.data[i]
					if (not fg_sid_x_d.limit or (normCurrent < fg_sid_x_d.limit)) then
						local toDo = ceil(repToNext / (DMF_Factor * fg_sid_x_d.rep))
						if (fg_sid_x_d.limit) then
							toDo = ceil((fg_sid_x_d.limit - normCurrent) / (DMF_Factor * fg_sid_x_d.rep))
						end
						if (fg_sid_x_d.items) then
							RPH_UpdateList[index] = {}
							local FUL_I = RPH_UpdateList[index]
							FUL_I.type = RPH_TXT.itemsShort
							FUL_I.times = math.ceil(toDo).."x"
							FUL_I.rep = string.format("%d", (DMF_Factor * fg_sid_x_d.rep))
							FUL_I.index = index
							FUL_I.belongsTo = nil
							FUL_I.isShown = true
							FUL_I.name = RPH_TXT.itemsName
							FUL_I.hasList = true
							FUL_I.listShown = false
							FUL_I.tooltipHead = RPH_TXT.itemsHead
							FUL_I.tooltipTip = RPH_TXT.itemsTip

							FUL_I.tooltipDetails = {}
							local FUL_I_TD = FUL_I.tooltipDetails
							local x = 0

							FUL_I_TD[x], x = RPH:Update_Tooltip(x, FUL_I.name, " ")
							FUL_I_TD[x], x = RPH:Update_Tooltip(x, " ", " ")
							FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.itemsRequired, " ")

							-- add items
							local itemIndex = index+1

							local currentQuestTimesBag = -1
							local currentQuestTimesBagBank = -1
							for item in pairs(fg_sid_x_d.items) do
								RPH_UpdateList[itemIndex] = {}
								local FUL_II = RPH_UpdateList[itemIndex]
								FUL_II.type = ""
								FUL_II.times = math.ceil((fg_sid_x_d.items[item] * toDo)).."x"
								FUL_II.rep = nil
								FUL_II.index = itemIndex
								FUL_II.belongsTo = index
								FUL_II.hasList = nil
								FUL_II.listShown = nil
								FUL_II.isShown = FUL_I.listShown
								local tempItemName = RPH:InitItemName(item)
								FUL_II.name = tempItemName.." ("..fg_sid_x_d.items[item].."x)"
								FUL_I.name = tempItemName

								FUL_I_TD[x], x = RPH:Update_Tooltip(x, fg_sid_x_d.items[item].."x", RPH:InitItemName(item))

								FUL_II, currentQuestTimesBag, currentQuestTimesBagBank = RPH:Quest_Items(fg_sid_x_d.items[item], currentQuestTimesBag, currentQuestTimesBagBank, FUL_II, item)
								if fg_sid_x_d.alternativeItems ~= nil then
									for altItem in pairs(fg_sid_x_d.alternativeItems) do
										temp_FUL_II, temp_currentQuestTimesBag, temp_currentQuestTimesBagBank = RPH:Quest_Items(fg_sid_x_d.alternativeItems[altItem], -1, -1, FUL_II, altItem)
										
										if temp_currentQuestTimesBagBank > 0 then
											if currentQuestTimesBagBank < 0 then
												currentQuestTimesBagBank = temp_currentQuestTimesBagBank
											else
												currentQuestTimesBagBank = currentQuestTimesBagBank + temp_currentQuestTimesBagBank
											end
										end

										if temp_currentQuestTimesBag > 0 then
											currentQuestTimesBag = currentQuestTimesBag + temp_currentQuestTimesBag
										end
									end
								end

								RPH_UpdateList[itemIndex] = FUL_II
								itemIndex = itemIndex + 1
							end

							if (currentQuestTimesBag > 0) then
								FUL_I.highlight = true
								FUL_I.lowlight = nil
								FUL_I.name = FUL_I.name..RPH_BAG_COLOUR.." ["..currentQuestTimesBag.."x]|r"
								FUL_I.currentTimesBag = currentQuestTimesBag
								FUL_I.currentRepBag = currentQuestTimesBag * FUL_I.rep
								RPH_CurrentRepInBag = RPH_CurrentRepInBag + FUL_I.currentRepBag

								FUL_I_TD[x], x = RPH:Update_Tooltip(x, " ", " ")
								FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.inBag, " ")
								FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.turnIns, string.format("%d", FUL_I.currentTimesBag))
								FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.reputation, string.format("%d", FUL_I.currentRepBag))
							end
							
							if (currentQuestTimesBagBank > 0) then
								FUL_I.highlight = true
								FUL_I.lowlight = nil
								FUL_I.name = FUL_I.name..RPH_BAG_BANK_COLOUR.." ["..currentQuestTimesBagBank.."]|r"
								FUL_I.currentTimesBagBank = currentQuestTimesBagBank

								FUL_I.currentRepBagBank = currentQuestTimesBagBank * FUL_I.rep
								RPH_CurrentRepInBagBank = RPH_CurrentRepInBagBank + FUL_I.currentRepBagBank

								FUL_I_TD[x] = {}
								if (not RPH_UpdateList[index].hasList) then return end	-- not a list Header entry

								FUL_I_TD[x], x = RPH:Update_Tooltip(x, " ", " ")
								FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.inBagBank, " ")
								FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.turnIns, string.format("%d", FUL_I.currentTimesBagBank))
								FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.reputation, string.format("%d", FUL_I.currentRepBagBank))
							end

							if ((currentQuestTimesBag == 0) and (currentQuestTimesBagBank > 0 == false)) then
								FUL_I.highlight = nil
							end

							FUL_I_TD[x], x = RPH:Update_Tooltip(x, " ", " ")
							FUL_I_TD[x] = RPH:Update_Tooltip(x, RPH_TXT.maxStanding, _G["FACTION_STANDING_LABEL"..fg_sid_x_d.maxStanding])

							FUL_I_TD.count = x
							FUL_I.tooltipDetails = FUL_I_TD
							RPH_UpdateList[index] = FUL_I
							index = itemIndex
						end
					end
				end
			end
				-- General
				if (fg_sid.general and RPH_Data.ShowGeneral) then
					local fg_sid_x=fg_sid.general
					for i = 0, fg_sid_x.count do
						local fg_sid_x_d=fg_sid_x.data[i]
						if (not fg_sid_x_d.limit or (normCurrent < fg_sid_x_d.limit)) then
							local toDo = string.format("%.2f", repToNext / (DMF_Factor * fg_sid_x_d.rep))
							if (fg_sid_x_d.limit) then
								toDo = string.format("%.2f", (fg_sid_x_d.limit - normCurrent) / (DMF_Factor * fg_sid_x_d.rep))
							end
							-- calculate Number of times to do differently for Guild cap
							RPH_UpdateList[index] = {}
							local FUL_I = RPH_UpdateList[index]
							FUL_I.type = RPH_TXT.generalShort
							FUL_I.times = math.ceil(toDo).."x"
							FUL_I.rep = string.format("%d", (DMF_Factor * fg_sid_x_d.rep))
							FUL_I.index = index
							FUL_I.belongsTo = nil
							FUL_I.isShown = true
							FUL_I.hasList = false
							FUL_I.listShown = nil
							local bul_name = fg_sid_x_d.name
							FUL_I.name = bul_name

							if (fg_sid_x_d.head and fg_sid_x_d.head ~= "") then
								FUL_I.tooltipHead = fg_sid_x_d.head
							else
								FUL_I.tooltipHead = RPH_TXT.generalHead
							end
							if (fg_sid_x_d.tip and fg_sid_x_d.tip ~= "") then
								FUL_I.tooltipTip = fg_sid_x_d.tip
							else
								FUL_I.tooltipTip = RPH_TXT.generalTip
							end

							FUL_I.tooltipDetails = {}
							local FUL_I_TD = FUL_I.tooltipDetails
							local x = 0
							FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.general2, bul_name)
							FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.reputation, FUL_I.rep)
							FUL_I_TD[x], x = RPH:Update_Tooltip(x, RPH_TXT.timesToRun, FUL_I.times)
							FUL_I_TD[x], x = RPH:Update_Tooltip(x, " ", " ")
							if (fg_sid_x_d.tipList) then
								for tip in pairs(fg_sid_x_d.tipList) do

									FUL_I_TD[x], x = RPH:Update_Tooltip(x, tip, fg_sid_x_d.tipList[tip])
								end
								FUL_I_TD[x], x = RPH:Update_Tooltip(x, " ", " ")

							end
							FUL_I_TD[x] = RPH:Update_Tooltip(x, RPH_TXT.maxStanding, _G["FACTION_STANDING_LABEL"..fg_sid_x_d.maxStanding])
							FUL_I_TD.count = x
							local FUL_I_TD = FUL_I.tooltipDetails
							RPH_UpdateList[index] = FUL_I
							index = index + 1

						end
					end
				end
			end
		end
	end

	--RPH:Print("Added "..(index-1).." entries for ["..faction.."] at standing "..standingId)

	RPH_UpdateList_Update()
end

function RPH:Quest_Items(itemsNeed, currentQuestTimesBag, currentQuestTimesBagBank, QuestItem, item)
	if not QuestItem.times then 
		QuestItem = {}
		QuestItem.name = "James"
	end
	if (GetItemCount(item, true)==0 and select(2, GetCurrencyInfo(item)) == 0) then
		-- not enough of this item for quest -> set to 0
		currentQuestTimesBag = 0
	else
		local itemBag = 0
		local itemTotal = 0

		if (GetItemCount(item, true) == 0) then
			_, itemBag = GetCurrencyInfo(item)
			itemTotal = itemBag
		else
			itemBag = GetItemCount(item)
			itemTotal = GetItemCount(item, true)
		end

		local itemBank = itemTotal - itemBag
		if ((itemBag >= itemsNeed) and (itemsNeed > 0)) then
			QuestItem.currentTimesBag = floor(itemBag / itemsNeed)
			QuestItem.name = QuestItem.name..RPH_BAG_COLOUR.." ["..itemBag.."x]|r"
			if (currentQuestTimesBag == -1) then
				-- first items for this quest --> take value
				currentQuestTimesBag = QuestItem.currentTimesBag
			else
				-- some items already Set
				if (QuestItem.currentTimesBag < currentQuestTimesBag) then
					-- fewer of this item than of others, reduce quest count
					currentQuestTimesBag = QuestItem.currentTimesBag
				end
			end
		else
			-- not enough of this item for quest -> set to 0
			currentQuestTimesBag = 0
			QuestItem.name = QuestItem.name.." ["..itemBag.."x]"
		end

		if itemBank > 0 then
			if ((itemTotal >= itemsNeed) and (itemsNeed > 0)) then
				QuestItem.name = QuestItem.name..RPH_BAG_BANK_COLOUR.." ["..itemTotal.."x]|r"
				QuestItem.currentTimesBagBank = floor(itemBank / itemsNeed)
				if (currentQuestTimesBagBank == -1) then
					-- first items for this quest --> take value
					currentQuestTimesBagBank = QuestItem.currentTimesBagBank
				else
					-- some items already Set
					if (QuestItem.currentTimesBagBank < currentQuestTimesBagBank) then
						-- fewer of this item than of others, reduce quest count
						currentQuestTimesBagBank = QuestItem.currentTimesBagBank
					end
				end
			else
				-- not enough of this item for quest -> set to 0
				currentQuestTimesBagBank = 0
				QuestItem.name = QuestItem.name.." ["..itemBank.."x]"
			end
		else
			-- none of this carried In bank
		end
	end
	return QuestItem, currentQuestTimesBag, currentQuestTimesBagBank
end

function RPH:GetUpdateListSize()
	-- sub function of	RPH_UpdateList_Update()
	--fpt hed f_guls	RPH:Printtest("","","f_guls 1")
	local count = 0
	local highest = 0
	for i in pairs(RPH_UpdateList) do
		if (RPH_UpdateList[i].isShown) then
			count = count + 1
			if (i > highest) then
				highest = i
			end
		end
	end

	return count, highest
end

function RPH:ShowUpdateEntry(index, show)
	--fpt hed f_sue	RPH:Printtest("","","f_sue 1")
	if (not RPH_UpdateList[index]) then return end		-- invalid index
	if (not RPH_UpdateList[index].hasList) then return end	-- not a list Header entry
	if (type(show)~="boolean") then return end		-- wrong data type

	RPH_UpdateList[index].listShown = show
	for i in pairs(RPH_UpdateList) do
		if (RPH_UpdateList[i].belongsTo == index) then
			RPH_UpdateList[i].isShown = show
		end
	end

	RPH_UpdateList_Update()
end

function RPH_ShowUpdateEntries(show)
	if (type(show)~="boolean") then return end		-- wrong data type

	for i in pairs(RPH_UpdateList) do
		if (RPH_UpdateList[i].belongsTo == nil) then
			-- always show parent entries, show or Hide their children
			RPH_UpdateList[i].isShown = true
			RPH_UpdateList[i].listShown = show
		else
			-- show or Hide child entries
			RPH_UpdateList[i].isShown = show
		end
	end

	RPH_UpdateList_Update()
end

function RPH_ShowLineToolTip(self)
	if not self then return end

	if (self.tooltipHead) then
		GameTooltip_SetDefaultAnchor(GameTooltip, self)
		GameTooltip:SetText(self.tooltipHead, 1, 1, 0.5, 1)
		if (self.tooltipTip) then
			GameTooltip:AddLine(self.tooltipTip, 1, 1, 1, 1)
		end
		if (self.tooltipDetails and type(self.tooltipDetails) == "table") then
			GameTooltip:AddLine(" ", 1, 1, 1, 1)
			for i = 0, self.tooltipDetails.count do
				if (self.tooltipDetails[i].l and self.tooltipDetails[i].r) then
					if (self.tooltipDetails[i].r == " " or self.tooltipDetails[i].r=="") then
						GameTooltip:AddDoubleLine(self.tooltipDetails[i].l, self.tooltipDetails[i].r, 1, 1, 0, 1, 1, 1)
					else
						GameTooltip:AddDoubleLine(self.tooltipDetails[i].l, self.tooltipDetails[i].r, 1, 1, 0.5, 1, 1, 1)
					end
				end
			end
		end
		GameTooltip:Show()
	end
end

function RPH_ShowHelpToolTip(self, element)
	if not element then return end

	local name = ""

	-- cut off leading frame name
	--if (string.find(element, GLDG_GUI)) then
	--	name = string.sub(element, string.len(GLDG_GUI)+1)
	--elseif (string.find(element, GLDG_COLOUR)) then
	--	name = string.sub(element, string.len(GLDG_COLOUR)+1)
	--elseif (string.find(element, GLDG_LIST)) then
		name = element
	--end

	-- cut off trailing Number In case of line and collect
	--local s,e = string.find(name, "Line");
	--if (s and e) then
	--	name = string.sub(name, 0, e)
	--end
	--s,e = string.find(name, "Collect");
	--if (s and e) then
	--	name = string.sub(name, 0, e)
	--end

	-- cut off colour button/texture
	--if (string.find(name, "Colour") == 1) then
	--	-- ["ColourGuildNewButton"] = true,
	--	s,e = string.find(name, "Button");
	--	if (s and e) then
	--		name = string.sub(name, 0, s-1)
	--	end
	--	-- ["ColourGuildNewColour"] = true,
	--	s,e = string.find(name, "Colour", 2);	-- start at 2 to skip the initial Colour
	--	if (s and e) then
	--		name = string.sub(name, 0, s-1)
	--	end
	--end

	local tip = ""
	local head = ""
	if (RPH_TXT.elements and
		RPH_TXT.elements.name and
		RPH_TXT.elements.tip and
		RPH_TXT.elements.name[name] and
		RPH_TXT.elements.tip[name]) then
		tip = RPH_TXT.elements.tip[name]
		head = RPH_TXT.elements.name[name]

		if (RPH_Data.needsTip and RPH_Data.needsTip[name]) then
			RPH_Data.needsTip[name] = nil
		end
	else
		if (not RPH_Data.needsTip) then
			RPH_Data.needsTip = {}
		end
		RPH_Data.needsTip[name] = true
	end

	--GameTooltip_SetDefaultAnchor(GameTooltip, self)
	GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
	if (head ~= "") then
		GameTooltip:SetText(head, 1, 1, 0.5, 1.0, 1)
--		GameTooltip:AddLine(name, 1, 0, 0, 1.0, 1)
		GameTooltip:AddLine(tip, 1, 1, 1, 1.0, 1)
--	else
--		GameTooltip:SetText(element, 1, 1, 0.5, 1.0, 1)
--		GameTooltip:AddLine(name, 1, 1, 1, 1.0, 1)
	end

	GameTooltip:Show()
end

-----------------------------------
-- _12_ reputation Changes to chat
-----------------------------------
function RPH:DumpReputationChangesToChat(initOnly)
	if not RPH_StoredRep then RPH_StoredRep = {} end

	local numFactions = GetNumFactions();
	local factionIndex, watchIndex, watchedIndex, watchName
	local name, standingID, barMin, barMax, barValue, isHeader, hasRep
	local RepRemains
	local factionID

	watchIndex = 0
	watchedIndex = 0
	watchName = nil
	for factionIndex=1, numFactions, 1 do
		--name, _, standingID, barMin, barMax, barValue, _, _, isHeader, _, hasRep, isWatched = GetFactionInfo(factionIndex)
		name, _, standingID, barMin, barMax, barValue, _, _, isHeader, _, hasRep, isWatched, _, factionID = GetFactionInfo(factionIndex)

		if(factionID and C_Reputation.IsFactionParagon(factionID)) then
			local currentValue, threshold = C_Reputation.GetFactionParagonInfo(factionID);
			barMin, barMax, barValue = 0, threshold, mod(currentValue, threshold);
		end

		 friendID, _, _, _, _, _, friendTextLevel, _, _ = GetFriendshipReputation(factionID)

		--if (not isHeader) then
		if (not isHeader or hasRep) then
			if (isWatched) then
				watchedIndex = factionIndex
			end
			if RPH_StoredRep[name] and not initOnly then
				if (RPH_Data.WriteChatMessage) then
					if (not RPH_Data.NoGuildGain or name ~= RPH_GuildName) then
						local sign=""
						if ((barValue-RPH_StoredRep[name].origRep)>0) then
							sign = "+"
						end
						if (barValue > RPH_StoredRep[name].rep) then
							-- increased rep
							RPH:Print(RPH_NEW_REP_COLOUR..string.format(FACTION_STANDING_INCREASED..RPH_TXT.stats, name, barValue-RPH_StoredRep[name].rep, sign, barValue-RPH_StoredRep[name].origRep, barMax-barValue))
						elseif (barValue < RPH_StoredRep[name].rep) then
							RPH:Print(RPH_NEW_REP_COLOUR..string.format(FACTION_STANDING_DECREASED..RPH_TXT.stats, name, RPH_StoredRep[name].rep-barValue, sign, barValue-RPH_StoredRep[name].origRep, barMax-barValue))
							-- decreased rep	
						end
						if (RPH_StoredRep[name].standingID ~= standingID) then
							if friendID == nil then
								RPH:Print(RPH_NEW_STANDING_COLOUR..string.format(FACTION_STANDING_CHANGED, _G["FACTION_STANDING_LABEL"..standingID], name))
							else 
								RPH:Print(RPH_NEW_STANDING_COLOUR..string.format(FACTION_STANDING_CHANGED, friendTextLevel, name))
							end
						end
					end
				end
				if (RPH_Data.SwitchFactionBar) then
					if (not RPH_Data.NoGuildSwitch or name ~= RPH_GuildName) then
						if (barValue > RPH_StoredRep[name].rep) then
							--RPH:Print("Marking faction ["..tostring(name).."] index ["..tostring(factionIndex).."] for rep watch bar")
							watchIndex = factionIndex
							watchName = name
						--elseif (barValue ~= RPH_StoredRep[name].rep) then
							--RPH:Print("Faction ["..tostring(name).."] lost rep")
						end
					end
				end
			else
				RPH_StoredRep[name] = {}
				RPH_StoredRep[name].origRep = barValue
			end
			RPH_StoredRep[name].standingID = standingID
			RPH_StoredRep[name].rep = barValue
		end
	end
	if (watchIndex > 0) then
		if (watchIndex ~= watchedIndex) then
			if (not RPH_Data.SilentSwitch) then
				RPH:Print(RPH_Help_COLOUR..RPH_NAME..":|r "..RPH_TXT.switchBar.." ["..tostring(watchName).."|r]")
			end
		end
		-- choose Faction to show
		SetWatchedFactionIndex(watchIndex)
		SetWatchingHonorAsXP(false)
		
		if (C_ArtifactUI.GetEquippedArtifactInfo()) then
			SetCVar("showArtifactXPBar", false)
		end
		MainMenuBar_UpdateExperienceBars();

		ReputationFrame_Update(); -- rfl functions
	end
end

function RPH:ClearSessionGain()
	local factionIndex = GetSelectedFaction()
	local name, _, standingID, barMin, barMax, barValue, _, _, isHeader, _, hasRep, isWatched = GetFactionInfo(factionIndex)

	if (name) then
		RPH_StoredRep[name] = {}
		RPH_StoredRep[name].origRep = barValue
		RPH_StoredRep[name].standingID = standingID
		RPH_StoredRep[name].rep = barValue
	end
	RPH_ReputationFrame_Update()
end

-----------------------------------
-- _13_ chat filtering
-----------------------------------

--function RPH_ChatFrame_OnEvent(self, event, ...)
function RPH_ChatFilter(chatFrame, event, ...) -- chatFrame = self
	--[[
	CHAT_MSG_COMBAT_FACTION_CHANGE
		Fires when player's faction changes. ie: "Your reputation with Timbermaw Hold has very slightly increased." -- NEW 1.9
		arg1
			The message to display

	COMBAT_TEXT_UPDATE
		arg1
			Combat message type.
			Known values include "HONOR_GAINED", and "FACTION".
		arg2
			for faction gain, this is the faction name.
		arg3
			for faction gain, the amount of reputation gained.
	]]--

	local msg, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13 = ...;

	local skip = false
	if (RPH_Data.WriteChatMessage and event) then

		if (event == "CHAT_MSG_COMBAT_FACTION_CHANGE") then
			skip = true
		end
		if ((event == "COMBAT_TEXT_UPDATE") and (msg=="FACTION")) then
			skip = true
		end

	end
	return skip, msg, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13
end

-----------------------------------
-- _13_ show option window
-----------------------------------
function RPH:ToggleConfigWindow()
	--- fpt f_tcw	RPH:Printtest("f_tcw","","")
	if ReputationFrame:IsVisible() then
		if RPH_OptionsFrame:IsVisible() then
			-- both windows shown -> hide them both
			RPH_OptionsFrame:Hide()
			HideUIPanel(CharacterFrame)
		else
			-- options window not shown -> show, hide any detail window
			RPH_OptionsFrame:Show()
			RPH_ReputationDetailFrame:Hide();
			ReputationDetailFrame:Hide();
		end
	else
		-- window not shown -> show both
		ToggleCharacter("ReputationFrame")
		RPH_ReputationDetailFrame:Hide();
		ReputationDetailFrame:Hide();
		RPH_OptionsFrame:Show()
	end
end

function RPH:ToggleDetailWindow()
	--- fpt f_tdw	RPH:Printtest("f_tdw","","")
	if ReputationFrame:IsVisible() then
		if (RPH_Data.ExtendDetails) then
			if RPH_ReputationDetailFrame:IsVisible() then
				-- both windows shown -> hide them both
				RPH_ReputationDetailFrame:Hide()
				HideUIPanel(CharacterFrame)
			else
				-- detail window not shown -> show it, hide any others
				RPH_ReputationDetailFrame:Show()
				ReputationDetailFrame:Hide();
				RPH_OptionsFrame:Hide();
				ReputationFrame_Update(); -- rfl Event
			end
		else
			if ReputationDetailFrame:IsVisible() then
				-- both windows shown -> hide them both
				ReputationDetailFrame:Hide()
				HideUIPanel(CharacterFrame)
			else
				-- detail window not shown -> show it, hide any others
				RPH_ReputationDetailFrame:Hide()
				ReputationDetailFrame:Show();
				RPH_OptionsFrame:Hide();
				ReputationFrame_Update(); -- rfl Event
			end
		end
	else
		-- window not shown -> show both
		ToggleCharacter("ReputationFrame")
		if (RPH_Data.ExtendDetails) then
			RPH_ReputationDetailFrame:Show();
		else
			ReputationDetailFrame:Show();
		end
		RPH_OptionsFrame:Hide()
		ReputationFrame_Update(); -- rfl Event
	end
end



-----------------------------------
-- _14_ Testing
-----------------------------------


function RPH_Test()

	if (RPH_GuildFactionBar:GetParent()) then
		RPH:Print("RPH_GuildFactionBar parent: "..tostring(RPH_GuildFactionBar:GetParent():GetName()))
	else
		RPH:Print("RPH_GuildFactionBar has no parent")
	end

	if (RPH_GuildFactionBarCapHeader:GetParent()) then
		RPH:Print("RPH_GuildFactionBarCapHeader parent: "..tostring(RPH_GuildFactionBarCapHeader:GetParent():GetName()))
	else
		RPH:Print("RPH_GuildFactionBarCapHeader has no parent")
	end
	if (RPH_GuildFactionBarCapText:GetParent()) then
		RPH:Print("RPH_GuildFactionBarCapText parent: "..tostring(RPH_GuildFactionBarCapText:GetParent():GetName()))
	else
		RPH:Print("RPH_GuildFactionBarCapText has no parent")
	end
	if (RPH_GuildFactionBarCapMarker:GetParent()) then
		RPH:Print("RPH_GuildFactionBarCapMarker parent: "..tostring(RPH_GuildFactionBarCapMarker:GetParent():GetName()))
	else
		RPH:Print("RPH_GuildFactionBarCapMarker has no parent")
	end
	if (RPH_GuildFactionBarBaseMarker:GetParent()) then
		RPH:Print("RPH_GuildFactionBarBaseMarker parent: "..tostring(RPH_GuildFactionBarBaseMarker:GetParent():GetName()))
	else
		RPH:Print("RPH_GuildFactionBarBaseMarker has no parent")
	end
end

-------------------------------------------
-- _15_ Getting reputation ready to hand In
-------------------------------------------
function RPH:GetReadyReputation(factionIndex)
	local result = 0
	return result end	--[[-- curently disabled 
	if not factionIndex then return result end

	if (not ReputationFrame:IsVisible()) then return result end

	local maxFactionIndex = GetNumFactions()
	if (factionIndex > maxFactionIndex) then return result end

	local faction, description, standingId, barMin, barMax, barValue, atWarWith, canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild = RPH_Orig_GetFactionInfo(factionIndex)
	if (isHeader) then return result end

	if (faction) then
		origFaction = faction
		faction = string.lower(faction)
		if (RPH_FactionMapping[faction]) then
			faction = RPH_FactionMapping[faction]
		end

		-- Normalize Values
		local normMax = barMax - barMin
		local normCurrent = barValue - barMin
		local repToNext = barMax - barValue

		local RPH_FG_f=RPH_FactionGain[faction]
		if (RPH_FG_f) then
		local RPH_FG_fs=RPH_FG_f[standingId]
			if (RPH_FG_fs) then

				-- quests (may have items)
				local RPH_FG_fs_h=RPH_FG_fs.quests
				if (RPH_FG_fs_h) then
					for i = 0, RPH_FG_fs_h.count do
					local RPH_FG_fs_h_d=RPH_FG_fs_h.data[i]
						if (not RPH_FG_fs_h_d.limit or (normCurrent < RPH_FG_fs_h_d.limit)) then
							local toDo = ceil(repToNext / RPH_FG_fs_h_d.rep)
							if (RPH_FG_fs_h_d.limit) then
								toDo = ceil((RPH_FG_fs_h_d.limit - normCurrent) / RPH_FG_fs_h_d.rep)
							end

							if (RPH_FG_fs_h_d.items) then
								local currentQuestTimesBag = -1
								local currentQuestTimesBagBank = -1
								for item in pairs(RPH_FG_fs_h_d.items) do
								_,currentQuestTimesBag, currentQuestTimesBagBank = RPH:Quest_Items(RPH_FG_fs_h_d.items[item], currentQuestTimesBag, currentQuestTimesBagBank, "nil", item)
								end
								if (currentQuestTimesBag > toDo) then
									currentQuestTimesBag = toDo
								end
								if (currentQuestTimesBagBank > toDo) then
									currentQuestTimesBagBank = toDo
								end
								if (currentQuestTimesBagBank > 0) then
									result = result + currentQuestTimesBagBank * RPH_FG_fs_h_d.rep
								elseif (currentQuestTimesBag > 0) then
									result = result + currentQuestTimesBag * RPH_FG_fs_h_d.rep
								else
									-- nothing to add
								end
							else
								-- no items, check if this quest is completed
								local entries, quests = GetNumQuestLogEntries()
								for z=1,entries do
									local title,level,tag,group,header,collapsed,complete,daily = GetQuestLogTitle(z)
									if (title and not header and complete) then
										if string.find(string.lower(RPH:Quest_Names(RPH_FG_fs_h_d.name)), string.lower(title)) then
											-- this quest matches
											result = result + RPH_FG_fs_h_d.rep
										end
									end
								end
							end
						end
					end
				end

				-- items
				local RPH_FG_fs_h=RPH_FG_fs.items
				if (RPH_FG_fs_h and RPH_Data.ShowItems) then
					for i = 0, RPH_FG_fs_h.count do
					local RPH_FG_fs_h_d=RPH_FG_fs_h.data[i]
						if (not RPH_FG_fs_h_d.limit or (normCurrent < RPH_FG_fs_h_d.limit)) then
							local toDo = ceil(repToNext / RPH_FG_fs_h_d.rep)
							if (RPH_FG_fs_h_d.limit) then
								toDo = ceil((RPH_FG_fs_h_d.limit - normCurrent) / RPH_FG_fs_h_d.rep)
							end
							if (RPH_FG_fs_h_d.items) then
								local currentQuestTimesBag = -1
								local currentQuestTimesBagBank = -1
								for item in pairs(RPH_FG_fs_h_d.items) do
								_,currentQuestTimesBag, currentQuestTimesBagBank = RPH:Quest_Items(RPH_FG_fs_h_d.items[item], currentQuestTimesBag, currentQuestTimesBagBank, "nil", item)
								end
								if (currentQuestTimesBag > toDo) then
									currentQuestTimesBag = toDo
								end
								if (currentQuestTimesBagBank > toDo) then
									currentQuestTimesBagBank = toDo
								end
								if (currentQuestTimesBagBank > 0) then
									result = result + currentQuestTimesBagBank * RPH_FG_fs_h_d.rep
								elseif (currentQuestTimesBag > 0) then
									result = result + currentQuestTimesBag * RPH_FG_fs_h_d.rep
								end
							end
						end
					end
				end
			end
		end
	end

	return result;
end	--]]--

----------------------------------
-- _16_ FSS // RDF_IS // RDF
-----------------------------------
-- ^ rfl 2.7 v ptr
function RPH:StandingSort()
-- del	local name, description, standingID, barMin, barMax, barValue, atWarWith, canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild, factionID, hasBonusRepGain, canBeLFGBonus;
	local standings = {}
	local numFactions = GetNumFactions();

	for i=1,numFactions do
		local name, description, standingID, _, barMax, barValue, _, _, isHeader, _, hasRep, isWatched, isChild, factionID, hasBonusRepGain, canBeLFGBonus= GetFactionInfo(i);

		if(factionID and C_Reputation.IsFactionParagon(factionID) and RPH_Data.ShowParagonBar) then
			local currentValue, threshold, _, _ = C_Reputation.GetFactionParagonInfo(factionID);
			barMax, barValue, standingID = threshold, mod(currentValue, threshold), 9;
		end

		--if (not isHeader) then only list factions, not Faction groups headers
		if (not isHeader or hasRep) then
			if not standings[standingID] then
				standings[standingID] = {}
			end
			local size = RPH:TableSize(standings[standingID])
			local entry = {}
			local inserted = false
			entry.missing = barMax-barValue
			entry.i = i
			if (size) then
				for j=1,size do
					if (not inserted) then
						if (standings[standingID][j].missing > entry.missing) then
							table.insert(standings[standingID], j, entry);
							inserted = true
						end
					end
				end
				if (not inserted) then
					table.insert(standings[standingID], entry)
				end
			else
				table.insert(standings[standingID], entry)
			end
		end
	end

	-- find Number of elements to display
	local numFactions = 0
	RPH_Entries = {}
	if (not RPH_Collapsed) then
		RPH_Collapsed = {}
	end
	for i=9,1, -1 do
	--for i In pairs(standings) do
		if RPH:TableSize(standings[i]) then
			if (standings[i]) then
				numFactions = numFactions + 1 -- count standing as header
				RPH_Entries[numFactions] = {}
				RPH_Entries[numFactions].header = true
				RPH_Entries[numFactions].i = i	-- this is the standingID
				RPH_Entries[numFactions].size = RPH:TableSize(standings[i]) -- this is the number of factions with this standing
				if (not RPH_Collapsed[i]) then
					for j in pairs(standings[i]) do
						numFactions = numFactions + 1 -- count each faction in the current standing
						RPH_Entries[numFactions] = {}
						RPH_Entries[numFactions].header = false
						RPH_Entries[numFactions].i = standings[i][j].i -- this is the index into the faction table
						RPH_Entries[numFactions].size = 0
					end
				end
			end
		end
	end
	RPH_OBS_numFactions = numFactions
end
-- ^ 2 rfl ptr v R_D_F_IS
function RPH_ReputationDetailFrame_IsShown(faction,flag,flag2,i)
	local name, description, _, _, _, _, atWarWith, canToggleAtWar, _, _, _, isWatched, _, _, _, _ = GetFactionInfo(faction);
-- v rfl _16_
	ReputationDetailFactionName:SetText(name);
	ReputationDetailFactionDescription:SetText(description);
	if ( atWarWith ) then
		ReputationDetailAtWarCheckBox:SetChecked(true);
	else
		ReputationDetailAtWarCheckBox:SetChecked(false);
	end
-- v rfl _16_ 1
	if flag then
-- ^ rfl _16_ 1
		ReputationDetailAtWarCheckBox:Enable();
		ReputationDetailAtWarCheckBoxText:SetTextColor(RED_FONT_COLOR.r, RED_FONT_COLOR.g, RED_FONT_COLOR.b);
	else
		ReputationDetailAtWarCheckBox:Disable();
		ReputationDetailAtWarCheckBoxText:SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
	end

	if flag2==2 then

		if ( not isHeader ) then
			ReputationDetailInactiveCheckBox:Enable();
			ReputationDetailInactiveCheckBoxText:SetTextColor(ReputationDetailInactiveCheckBoxText:GetFontObject():GetTextColor());
		else
			ReputationDetailInactiveCheckBox:Disable();
			ReputationDetailInactiveCheckBoxText:SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
		end
-- v rfl _16_ 3
		_G["ReputationBar"..i.."ReputationBarHighlight1"]:Show();
		_G["ReputationBar"..i.."ReputationBarHighlight2"]:Show();
	end
-- ^ rfl _16_ 3
-- v rfl _16_ 2
	if ( IsFactionInactive(faction) ) then
		ReputationDetailInactiveCheckBox:SetChecked(true);
	else
		ReputationDetailInactiveCheckBox:SetChecked(false);
	end
	if ( isWatched ) then
		ReputationDetailMainScreenCheckBox:SetChecked(true);
	else
		ReputationDetailMainScreenCheckBox:SetChecked(false);
	end
-- ^ rfl _16_ 2
end
-- ^ R_D_F_IS v R_D_F
function RPH:Rep_Detail_Frame(faction,colorID,barValue,barMax,origBarValue,standingID,toExalted,factionStandingtext, toBFF, isParagon, isFriend, isCappedFriendship)
	local name, description, _, _, _, _, atWarWith, canToggleAtWar, _, _, _, isWatched, _, factionID, _, _ = GetFactionInfo(faction);
	local friendInfo
	local friendID, friendRep, friendMaxRep, friendName, friendText, friendTextLevel, nextFriendThreshold

	if isFriend then
		friendID, friendRep, friendMaxRep, friendName, friendText, _, friendTextLevel, friendThreshold, nextFriendThreshold = GetFriendshipReputation(factionID)
	end

	local gender = UnitSex("player");
	RPH:BuildUpdateList()

	RPH_ReputationDetailFactionName:SetText(name);
	RPH_ReputationDetailFactionDescription:SetText(description);

	if isParagon then
		RPH_ReputationDetailStandingName:SetText("Paragon")
	elseif isFriend then
		RPH_ReputationDetailStandingName:SetText(friendTextLevel)
	else
		RPH_ReputationDetailStandingName:SetText(factionStandingtext)
	end
	local color = FACTION_BAR_COLORS[colorID]
	RPH_ReputationDetailStandingName:SetTextColor(color.r, color.g, color.b)

	RPH_ReputationDetailStandingCurrent:SetText(RPH_TXT.currentRep)
	RPH_ReputationDetailStandingNeeded:SetText(RPH_TXT.neededRep)
	RPH_ReputationDetailStandingMissing:SetText(RPH_TXT.missingRep)
	RPH_ReputationDetailStandingBag:SetText(RPH_TXT.repInBag)
	RPH_ReputationDetailStandingBagBank:SetText(RPH_TXT.repInBagBank)
	RPH_ReputationDetailStandingQuests:SetText(RPH_TXT.repInQuest)
	RPH_ReputationDetailStandingGained:SetText(RPH_TXT.factionGained)

	RPH_ReputationDetailStandingCurrentValue:SetText(barValue)
	RPH_ReputationDetailStandingNeededValue:SetText(barMax)
	RPH_ReputationDetailStandingMissingValue:SetText(barMax-barValue)
	RPH_ReputationDetailStandingBagValue:SetText(RPH_CurrentRepInBag)
	RPH_ReputationDetailStandingBagBankValue:SetText(RPH_CurrentRepInBagBank)
	RPH_ReputationDetailStandingQuestsValue:SetText(RPH_CurrentRepInQuest)
	if (RPH_StoredRep and RPH_StoredRep[name] and RPH_StoredRep[name].origRep) then
		RPH_ReputationDetailStandingGainedValue:SetText(string.format("%d", origBarValue-RPH_StoredRep[name].origRep))
	else
		RPH_ReputationDetailStandingGainedValue:SetText("")
	end

	if isFriend then
		if isCappedFriendship ~= true then
			color = FACTION_BAR_COLORS[8]
			RPH_ReputationDetailStandingNextValue:SetText("(--> "..RPH_GetFriendFactionStandingLabel(factionID, nextFriendThreshold)..")")
			RPH_ReputationDetailStandingNextValue:SetTextColor(color.r, color.g, color.b)
		else
			RPH_ReputationDetailStandingNextValue:SetText("")
		end
	else
		if (standingID <8) then
			color = FACTION_BAR_COLORS[standingID+1]
			--RPH_ReputationDetailStandingNext:SetText(RPH_TXT.nextLevel)
			RPH_ReputationDetailStandingNextValue:SetText("(--> "..GetText("FACTION_STANDING_LABEL"..standingID+1, gender)..")")
			RPH_ReputationDetailStandingNextValue:SetTextColor(color.r, color.g, color.b)
		else
			--RPH_ReputationDetailStandingNext:SetText("")
			RPH_ReputationDetailStandingNextValue:SetText("")
		end
	end

	if isFriend then
		if (isCappedFriendship ~= true) then
			-- Add to localization file sometime
			RPH_ReputationDetailStandingToExaltedHeader:SetText("Reputation to max")
			RPH_ReputationDetailStandingToExaltedValue:SetText(toBFF)
		else
			RPH_ReputationDetailStandingToExaltedHeader:SetText("")
			RPH_ReputationDetailStandingToExaltedValue:SetText("")
		end
	else
		if (standingID <7) then
			-- Add to localization file sometime
			RPH_ReputationDetailStandingToExaltedHeader:SetText(RPH_TXT.toExalted)
			RPH_ReputationDetailStandingToExaltedValue:SetText(toExalted)
		else
			RPH_ReputationDetailStandingToExaltedHeader:SetText("")
			RPH_ReputationDetailStandingToExaltedValue:SetText("")
		end
	end

	if ( atWarWith ) then
		RPH_ReputationDetailAtWarCheckBox:SetChecked(true);
	else
		RPH_ReputationDetailAtWarCheckBox:SetChecked(false);
	end
	if ( canToggleAtWar ) then
		RPH_ReputationDetailAtWarCheckBox:Enable();
		RPH_ReputationDetailAtWarCheckBoxText:SetTextColor(RED_FONT_COLOR.r, RED_FONT_COLOR.g, RED_FONT_COLOR.b);
	else
		RPH_ReputationDetailAtWarCheckBox:Disable();
		RPH_ReputationDetailAtWarCheckBoxText:SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
	end

	if ( IsFactionInactive(faction) ) then
		RPH_ReputationDetailInactiveCheckBox:SetChecked(true);
	else
		RPH_ReputationDetailInactiveCheckBox:SetChecked(false);
	end
	if ( isWatched ) then
		RPH_ReputationDetailMainScreenCheckBox:SetChecked(true);
	else
		RPH_ReputationDetailMainScreenCheckBox:SetChecked(false);
	end
end
-- ^ rfl R_D_F

function RPH_Friend_Detail(factionID, standingID,factionRow)
	local colorIndex, factionStandingtext, isCappedFriendship;
	local friendID, friendRep, friendMaxRep, friendName, friendText, friendTexture, friendTextLevel, friendThreshold, nextFriendThreshold = GetFriendshipReputation(factionID);
	if (friendID ~= nil) then
		if ( nextFriendThreshold ) then
			barMin, barMax, barValue = friendThreshold, nextFriendThreshold, friendRep;
		else	-- max rank, make it look like a full bar
			barMin, barMax, barValue = 0, 1, 1;
			isCappedFriendship = true;
		end
		colorIndex = 5;	-- always color friendships green
		factionStandingtext = friendTextLevel;
		factionRow.friendshipID = friendID;
		isFriend = true;
	else
		factionStandingtext = GetText("FACTION_STANDING_LABEL"..standingID, gender);
		factionRow.friendshipID = nil;
		colorIndex = standingID;
		isFriend = false;
	end
	return colorIndex, isCappedFriendship, factionStandingtext, isFriend
end

-----------------------------------
-- _16_ Listing by standing
-----------------------------------
function RPH:ListByStanding(standing)
	local numFactions = GetNumFactions();
	local name, description, standingID, barMin, barMax, barValue, atWarWith, canToggleAtWar, isHeader, hasRep, isCollapsed, isWatched;
	local list = {}

	-- get factions by standing
	for i=1, numFactions do
		name, description, standingID, barMin, barMax, barValue, _, _, isHeader, _, hasRep = GetFactionInfo(i)
		--if (not isHeader) then
		if (not isHeader or hasRep) then
			if ((standing == nil) or (standing==standingID)) then
				if (not list[standingID]) then
					list[standingID] = {}
				end
				list[standingID][name]={}
				list[standingID][name].max = barMax-barMin
				list[standingID][name].value = barValue-barMin
			end
		end
	end

	-- output
	for i=1, 8 do
		if (list[i]) then
			RPH:Print(RPH_Help_COLOUR..RPH_NAME..":|r "..RPH:RGBToColour_perc(1, FACTION_BAR_COLORS[i].r, FACTION_BAR_COLORS[i].g, FACTION_BAR_COLORS[i].b).."--- "..RPH_TXT_STAND_LV[i].." ("..i..") ---|r")
			for p in pairs(list[i]) do
				--RPH:Print("    "..p..": "..list[i][p].value.."/"..list[i][p].max.." ("..RPH_TXT.missing2..": "..list[i][p].max-list[i][p].value..")")
				RPH:Print("    "..p..": "..RPH_TXT.missing2..": "..list[i][p].max-list[i][p].value)
			end
			if (not standing) then
				RPH:Print(" ")
			end
		end
	end
end

------------------------
-- _17_ extracting Skill information
------------------------
function RPH:ExtractSkills() --- ggg
	RPH_Herb = false
	RPH_Skin = false
	RPH_Mine = false
	RPH_Alche = false
	RPH_Black = false
	RPH_Enchan = false
	RPH_Engin = false
	RPH_Jewel = false
	RPH_Incrip = false
	RPH_Leath = false
	RPH_Tailor = false
	RPH_Aid = false
	RPH_Arch = false
	RPH_Cook = false
	RPH_Fish = false

	local professions = {}
	local name, skillLine
	local prof1, prof2, archaeology, fishing, cooking, firstaid = GetProfessions();
	if (prof1) then
		name, _, _, _, _, _, skillLine = GetProfessionInfo(prof1);
		if name then professions[1] = name end
	end
	if (prof2) then
		name, _, _, _, _, _, skillLine = GetProfessionInfo(prof2);
		if name then professions[2] = name end
	end
	if (archaeology) then
		name, _, _, _, _, _, skillLine = GetProfessionInfo(archaeology);
		if name then professions[3] = name end
	end
	if (fishing) then
		name, _, _, _, _, _, skillLine = GetProfessionInfo(fishing);
		if name then professions[4] = name end
	end
	if (cooking) then
		name, _, _, _, _, _, skillLine = GetProfessionInfo(cooking);
		if name then professions[5] = name end
	end
	if (firstaid) then
		name, _, _, _, _, _, skillLine = GetProfessionInfo(firstaid);
		if name then professions[6] = name end
	end
	for skillIndex in pairs(professions) do
		skillName = professions[skillIndex] --- ggg zzz
		if (skillName == RPH_TXT.skillHerb) then
			RPH_Herb = true
		elseif (skillName == RPH_TXT.skillSkin) then
			RPH_Skin = true
		elseif (skillName == RPH_TXT.skillMine) then
			RPH_Mine = true
		elseif (skillName == RPH_TXT.skillAlch) then
			RPH_Alche = true
		elseif (skillName == RPH_TXT.skillBlack) then
			RPH_Black = true
		elseif (skillName == RPH_TXT.skillEnch) then
			RPH_Enchan = true
		elseif (skillName == RPH_TXT.skillEngi) then
			RPH_Engin = true
		elseif (skillName == RPH_TXT.skillIncrip) then
			RPH_Incrip = true
		elseif (skillName == RPH_TXT.skillJewel) then
			RPH_Jewel = true
		elseif (skillName == RPH_TXT.skillLeath) then
			RPH_Leath = true
		elseif (skillName == RPH_TXT.skillTail) then
			RPH_Tailor = true
		elseif (skillName == RPH_TXT.skillAid) then
			RPH_Aid = true
		elseif (skillName == RPH_TXT.skillArch) then
			RPH_Arch = true
		elseif (skillName == RPH_TXT.skillCook) then
			RPH_Cook = true
		elseif (skillName == RPH_TXT.skillFish) then
			RPH_Fish = true
		end
	end
--[[----------------------------------------------------------
	RPH:Printtest(prof1, prof2, archaeology)--fpt --zzz
	RPH:Printtest(fishing, cooking, firstaid)--fpt --zzz
	RPH:Printtest("skillHerb",RPH_TXT.skillHerb,RPH_Herb)
	RPH:Printtest("skillHerb",RPH_TXT.skillMine,RPH_Mine)
	RPH:Printtest("skillHerb",RPH_TXT.skillSkin,RPH_Skin)
	RPH:Printtest("skillHerb",RPH_TXT.skillAlch,RPH_Alche)
	RPH:Printtest("skillHerb",RPH_TXT.skillBlack,RPH_Black)
	RPH:Printtest("skillHerb",RPH_TXT.skillEnch,RPH_Enchan)
	RPH:Printtest("skillHerb",RPH_TXT.skillEngi,RPH_Engin)
	RPH:Printtest("skillHerb",RPH_TXT.skillIncrip,RPH_Incrip)
	RPH:Printtest("skillHerb",RPH_TXT.skillJewel,RPH_Jewel)
	RPH:Printtest("skillHerb",RPH_TXT.skillLeath,RPH_Leath)
	RPH:Printtest("skillHerb",RPH_TXT.skillAid,RPH_Aid)
	RPH:Printtest("skillHerb",RPH_TXT.skillArch,RPH_Arch)
	RPH:Printtest("skillHerb",RPH_TXT.skillCook,RPH_Cook)
	RPH:Printtest("skillHerb",RPH_TXT.skillFish,RPH_Fish)--]]--
end

--------------------------
-- _18_ classic options
--------------------------
function RPH_OnShowOptionFrame()
	RPH_EnableMissingBox:SetChecked(RPH_Data.ShowMissing)
	RPH_ExtendDetailsBox:SetChecked(RPH_Data.ExtendDetails)
	RPH_GainToChatBox:SetChecked(RPH_Data.WriteChatMessage)
	RPH_NoGuildGainBox:SetChecked(RPH_Data.NoGuildGain)
	RPH_ShowPreviewRepBox:SetChecked(RPH_Data.ShowPreviewRep)
	RPH_SwitchFactionBarBox:SetChecked(RPH_Data.SwitchFactionBar)
	RPH_NoGuildSwitchBox:SetChecked(RPH_Data.NoGuildSwitch)
	RPH_SilentSwitchBox:SetChecked(RPH_Data.SilentSwitch)
	RPH_OrderByStandingCheckBox:SetChecked(RPH_Data.SortByStanding)
	RPH_EnableParagonBarBox:SetChecked(RPH_Data.ShowParagonBar)
end

--------------------------
-- _19_ interface options
--------------------------
function RPH_OnLoadOptions(panel)
	panel.name = RPH_NAME
	panel.okay = RPH_OptionsOk
	panel.cancel = RPH_OptionsCancel
	panel.default = RPH_OptionsDefault

	InterfaceOptions_AddCategory(panel);

	RPH_OptionEnableMissingCBText:SetText(RPH_TXT.showMissing)
	RPH_OptionExtendDetailsCBText:SetText(RPH_TXT.extendDetails)
	RPH_OptionGainToChatCBText:SetText(RPH_TXT.gainToChat)
	RPH_OptionNoGuildGainCBText:SetText(RPH_TXT.noGuildGain)
	RPH_OptionShowPreviewRepCBText:SetText(RPH_TXT.showPreviewRep)
	RPH_OptionSwitchFactionBarCBText:SetText(RPH_TXT.switchFactionBar)
	RPH_OptionNoGuildSwitchCBText:SetText(RPH_TXT.noGuildSwitch)
	RPH_OptionSilentSwitchCBText:SetText(RPH_TXT.silentSwitch)
	RPH_OptionEnableParagonBarCBText:SetText(RPH_TXT.EnableParagonBar)
end

------------------------------------------------------------
function RPH_OnShowOptions(self)
	if (RPH_Data and RPH_VarsLoaded) then
		RPH_OptionsShown = true
		RPH_OptionEnableMissingCB:SetChecked(RPH_Data.ShowMissing)
		RPH_OptionExtendDetailsCB:SetChecked(RPH_Data.ExtendDetails)
		RPH_OptionGainToChatCB:SetChecked(RPH_Data.WriteChatMessage)
		RPH_OptionNoGuildGainCB:SetChecked(RPH_Data.NoGuildGain)
		RPH_OptionShowPreviewRepCB:SetChecked(RPH_Data.ShowPreviewRep)
		RPH_OptionSwitchFactionBarCB:SetChecked(RPH_Data.SwitchFactionBar)
		RPH_OptionNoGuildSwitchCB:SetChecked(RPH_Data.NoGuildSwitch)
		RPH_OptionSilentSwitchCB:SetChecked(RPH_Data.SilentSwitch)
		RPH_OptionEnableParagonBarCB:SetChecked(RPH_Data.ShowParagonBar)
	end
end

------------------------------------------------------------
function RPH_OptionsOk()
	if (RPH_OptionsShown) then
		RPH_Data.ShowMissing = RPH_OptionEnableMissingCB:GetChecked()
		RPH_Data.ExtendDetails = RPH_OptionExtendDetailsCB:GetChecked()
		RPH_Data.WriteChatMessage = RPH_OptionGainToChatCB:GetChecked()
		RPH_Data.NoGuildGain = RPH_OptionNoGuildGainCB:GetChecked()
		RPH_Data.ShowPreviewRep = RPH_OptionShowPreviewRepCB:GetChecked()
		RPH_Data.SwitchFactionBar = RPH_OptionSwitchFactionBarCB:GetChecked()
		RPH_Data.NoGuildSwitch = RPH_OptionNoGuildSwitchCB:GetChecked()
		RPH_Data.SilentSwitch = RPH_OptionSilentSwitchCB:GetChecked()
		RPH_Data.ShowParagonBar = RPH_OptionEnableParagonBarCB:GetChecked()
		ReputationFrame_Update()
	end
	RPH_OptionsShown = nil
end

------------------------------------------------------------
function RPH_OptionsCancel()
	-- nothing to do
	RPH_OptionsShown = nil
end

------------------------------------------------------------
function RPH_OptionsDefault()
	-- nothing to do
end

function RPH_GetFriendFactionRemaining(factionID, factionStandingtext, barMax, barValue)
	local RPH_ToBFF = {}
	RPH_ToBFF[0] = {}	                    --> Friendship levels:
	RPH_ToBFF[0]["Stranger"] = 33600;	    --> 1 - Stranger: 0-8400
	RPH_ToBFF[0]["Acquaintance"] = 25200;	--> 2 - Acquaintance: 8400-16800
	RPH_ToBFF[0]["Buddy"] = 16800;	        --> 3 - Buddy: 16800-25200
	RPH_ToBFF[0]["Friend"] = 8400;	    --> 4 - Friend: 25200-33600
	RPH_ToBFF[0]["Good Friend"] = 0;	--> 5 - Good Friend: 33600-42000
	RPH_ToBFF[0]["Best Friend"] = 0;	--> 6 - Best Friend: 42000-42999
	-- Fisher[0][riend Corbyn
	RPH_ToBFF[2100] = {}
	RPH_ToBFF[2100]["Stranger"] = 33600;	
	RPH_ToBFF[2100]["Curiosity"] = 25200 --> Acquaintance
	RPH_ToBFF[2100]["Non-Threat"] = 16800 --> Buddy
	RPH_ToBFF[2100]["Friend"] = 8400;	 
	RPH_ToBFF[2100]["Helpful Friend"] = 0 --> Good Friend
	RPH_ToBFF[2100]["Best Friend"] = 0;
	-- Nat Pagle
	RPH_ToBFF[1358] = {}
	RPH_ToBFF[1358]["Stranger"] = 33600;
	RPH_ToBFF[1358]["Pal"] = 25200 --> Acquaintance
	RPH_ToBFF[1358]["Buddy"] = 16800;
	RPH_ToBFF[1358]["Friend"] = 8400;
	RPH_ToBFF[1358]["Good Friend"] = 0;
	RPH_ToBFF[1358]["Best Friend"] = 0;

	if RPH_ToBFF[factionID] ~= nil then
		return RPH_ToBFF[factionID][factionStandingtext] + barMax - barValue
	else
		if RPH_ToBFF[0][factionStandingtext] ~=nil then
			return RPH_ToBFF[0][factionStandingtext] + barMax - barValue
		else
			return 0
		end
	end
end

function RPH_GetFriendFactionStandingLabel(factionID, nextFriendThreshold)
	-- Add localization
	local RPH_BFFLabels = {}
	RPH_BFFLabels[0] = {}
	RPH_BFFLabels[0][8400] = "Acquaintance"
	RPH_BFFLabels[0][16800] = "Buddy"
	RPH_BFFLabels[0][25200] = "Friend"
	RPH_BFFLabels[0][33600] = "Good Friend"
	RPH_BFFLabels[0][42000] = "Best Friend"

	-- Corbyn
	RPH_BFFLabels[2100] = {}
	RPH_BFFLabels[2100][8400] = "Curiosity"
	RPH_BFFLabels[2100][16800] = "Non-Threat"
	RPH_BFFLabels[2100][25200] = "Friend"
	RPH_BFFLabels[2100][33600] = "Helpful Friend"
	RPH_BFFLabels[2100][42000] = "Best Friend"

	-- Nat Pagle
	RPH_BFFLabels[1358] = {}
	RPH_BFFLabels[1358][8400] = "Pal"
	RPH_BFFLabels[1358][16800] = "Buddy"
	RPH_BFFLabels[1358][25200] = "Friend"
	RPH_BFFLabels[1358][33600] = "Good Friend"
	RPH_BFFLabels[1358][42000] = "Best Friend"

	if RPH_BFFLabels[factionID] ~= nil then
		return RPH_BFFLabels[factionID][nextFriendThreshold]
	else 
		if RPH_BFFLabels[0][nextFriendThreshold] ~=nil then
			return RPH_BFFLabels[0][nextFriendThreshold]
		else
			return ""
		end
	end
end

--------------------------
-- _20_ rep Main window
--------------------------
function RPH:SortByStanding(i,factionIndex,factionRow,factionBar,factionBarPreview,factionTitle,factionButton,factionStanding,factionBackground, lfgBonusFactionID)
-- v rfl SBS set 2 start

	local OBS_fi = RPH_Entries[factionIndex]
	local OBS_fi_i = OBS_fi.i

	if (OBS_fi.header) then
		RPH_ReputationFrame_SetRowType(factionRow, isChild, OBS_fi.header, hasRep);
		factionRow.LFGBonusRepButton:SetShown(false);
		-- display the standingID as Header
		if (OBS_fi_i == 9) then
			factionTitle:SetText("Paragon".." ("..tostring(OBS_fi.size)..")");
		elseif (OBS_fi_i == 8) then
			factionTitle:SetText(GetText("FACTION_STANDING_LABEL"..OBS_fi_i, gender).." ("..tostring(OBS_fi.size)..")");
		else
			factionTitle:SetText(GetText("FACTION_STANDING_LABEL"..OBS_fi_i, gender).." -> "..GetText("FACTION_STANDING_LABEL"..OBS_fi_i+1, gender).." ("..tostring(OBS_fi.size)..")");
		end
-- v rfl SBS 2
-- v rfl SBS 2.1
		if ( RPH_Collapsed[OBS_fi_i] ) then
-- ^ rfl SBS 2.1
			factionButton:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up");
		else
			factionButton:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up");
		end
		factionRow.index = factionIndex
-- v rfl 2.2.2
		factionRow.isCollapsed = RPH_Collapsed[OBS_fi_i];
-- ^ rfl SBS 2.2
-- ^ rfl SBS 2
	else
-- v rfl SBS 1
		-- get the info for this Faction
		local name, description, standingID, barMin, barMax, barValue, atWarWith, canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild, factionID, hasBonusRepGain, canBeLFGBonus = GetFactionInfo(OBS_fi_i);
		local isParagon
		factionTitle:SetText(name);
-- ^ rfl SBS 1
-- v rfl _16_
	local colorIndex, isCappedFriendship, factionStandingtext  = RPH_Friend_Detail(factionID, standingID, factionRow);
-- ^ rfl  _16_
-- v rfl SBS 4
		-- Normalize Values
		local origBarValue = barValue

		if ( factionID and C_Reputation.IsFactionParagon(factionID) ) then
			isParagon = true
        	local paragonFrame = ReputationFrame.paragonFramesPool:Acquire();
        	paragonFrame.factionID = factionID;
        	paragonFrame:SetPoint("RIGHT", factionRow, 11, 0);
        	local currentValue, threshold, rewardQuestID, hasRewardPending = C_Reputation.GetFactionParagonInfo(factionID);
			origBarValue = mod(currentValue, threshold);
        	C_Reputation.RequestFactionParagonPreloadRewardData(factionID);
        	paragonFrame.Glow:SetShown(hasRewardPending);
        	paragonFrame.Check:SetShown(hasRewardPending);
        	paragonFrame:Show();
      	end
      	local isCapped;
      	if (standingID == MAX_REPUTATION_REACTION) then
        	isCapped = true;
      	end

-- If exalted show a full green bar
		if(standingID == 8 or isCappedFriendship) then
			barMin,barMax,barValue = 0,1,1;
		end
-- Set reputation bar to paragon values if user option is activated and faction is at paragon rep
		if(factionID and C_Reputation.IsFactionParagon(factionID) and RPH_Data.ShowParagonBar) then
			local currentValue, threshold, rewardQuestID, hasRewardPending = C_Reputation.GetFactionParagonInfo(factionID);
			barMin, barMax, barValue = 0, threshold, mod(currentValue, threshold);
		end

		barMax = barMax - barMin;
		barValue = barValue - barMin;
		barMin = 0;

		if(factionID and C_Reputation.IsFactionParagon(factionID) and RPH_Data.ShowParagonBar and RPH_Data.ShowMissing ~= true) then
			factionRow.rolloverText = HIGHLIGHT_FONT_COLOR_CODE.." "..format(REPUTATION_PROGRESS_FORMAT, barValue, barMax)..FONT_COLOR_CODE_CLOSE;
		elseif(isCapped or isCappedFriendship) then
			factionRow.rolloverText = nil;
		elseif(RPH_Data.ShowMissing ~= true) then
			factionRow.rolloverText = HIGHLIGHT_FONT_COLOR_CODE.." "..format(REPUTATION_PROGRESS_FORMAT, barValue, barMax)..FONT_COLOR_CODE_CLOSE;
		else
			factionRow.rolloverText = nil;
		end
-- ^ rfl SBS 4
-- v rfl SBS 3
-- v rfl SBS 3.1
		local toExalted = 0
		if (standingID <8) then
			toExalted = RPH_ToExalted[standingID] + barMax - barValue;
		end

		local toBFF = 0
		if (isCappedFriendship ~= true and isFriend) then
			toBFF = RPH_GetFriendFactionRemaining(factionid, factionStandingtext, barMax, barValue)
		end

		factionRow.index = OBS_fi_i;

	if (RPH_Data.ShowMissing) then
		if ((barMax-barValue) ~= 0 and factionID and C_Reputation.IsFactionParagon(factionID) and RPH_Data.ShowParagonBar) then
			factionRow.standingText = "Paragon".." ("..barMax - barValue..")";
		elseif ((barMax-barValue) ~= 0) then
			factionRow.standingText = factionStandingtext.." ("..barMax - barValue..")";
		else
			factionRow.standingText = factionStandingtext;
		end
	else
-- ^ rfl SBS 3.1
		if(factionID and C_Reputation.IsFactionParagon(factionID) and RPH_Data.ShowParagonBar) then
			factionRow.standingText = "Paragon";
		else
			factionRow.standingText = factionStandingtext;
		end
-- v rfl SBS 3.2
	end
-- ^ rfl SBS 3.2
-- ^ rfl SBS 3
-- v rfl SBS 5
-- v rfl SBS 5.1
		factionStanding:SetText(factionRow.standingText);
-- ^ rfl SBS 5.1
		if ( isCappedFriendship ) then
			factionRow.tooltip = nil;
		else
			factionRow.tooltip = HIGHLIGHT_FONT_COLOR_CODE.." "..barValue.." / "..barMax..FONT_COLOR_CODE_CLOSE;
		end
		factionBar:SetMinMaxValues(0, barMax);
		factionBar:SetValue(barValue);
		local color = FACTION_BAR_COLORS[standingID];
		factionBar:SetStatusBarColor(color.r, color.g, color.b);
		factionBar.BonusIcon:SetShown(hasBonusRepGain);
		factionRow.LFGBonusRepButton.factionID = factionID;
		factionRow.LFGBonusRepButton:SetShown(canBeLFGBonus);
		factionRow.LFGBonusRepButton:SetChecked(lfgBonusFactionID == factionID);
		factionRow.LFGBonusRepButton:SetEnabled(lfgBonusFactionID ~= factionID);
		if ( showLFGPulse and not SHOWED_LFG_PULSE and not lfgBonusFactionID ) then
        	factionRow.LFGBonusRepButton.Glow:Show();
        	factionRow.LFGBonusRepButton.GlowAnim:Play();
    	else
        	factionRow.LFGBonusRepButton.Glow:Hide();
        	factionRow.LFGBonusRepButton.GlowAnim:Stop();
    	end
-- ^ rfl SBS 5
		local previewValue = 0
		if (RPH_Data.ShowPreviewRep) then
			previewValue = RPH:GetReadyReputation(OBS_fi_i)
		end
		if ((previewValue > 0) and not ((standingID==8) and (barMax-barValue == 1) ) ) then
			factionBarPreview:Show()
			factionBarPreview:SetMinMaxValues(0, barMax)
			previewValue = previewValue + barValue
			if (previewValue > barMax) then previewValue = barMax end
			factionBarPreview:SetValue(previewValue)
			factionBarPreview:SetID(factionIndex)
			factionBarPreview:SetStatusBarColor(0.8, 0.8, 0.8, 0.5)
		else
			factionBarPreview:Hide()
		end
-- v rfl SBS 6
-- v rfl SBS 6.1
		RPH_ReputationFrame_SetRowType(factionRow, isChild, OBS_fi.header, hasRep);
-- ^ rfl SBS 6.1
		factionRow:Show();
		-- Update details if this is the selected Faction
		if ( atWarWith ) then
			_G["ReputationBar"..i.."ReputationBarAtWarHighlight1"]:Show();
			_G["ReputationBar"..i.."ReputationBarAtWarHighlight2"]:Show();
		else
			_G["ReputationBar"..i.."ReputationBarAtWarHighlight1"]:Hide();
			_G["ReputationBar"..i.."ReputationBarAtWarHighlight2"]:Hide();
		end
		-- Update details if this is the selected Faction
-- v rfl SBS 6.1
		if ( OBS_fi_i == GetSelectedFaction() ) then
-- ^ rfl SBS 6.1
			if ( ReputationDetailFrame:IsShown() ) then
-- v rfl SBS 6.2
				if ( canToggleAtWar ) then local flag = 1 end
				RPH_ReputationDetailFrame_IsShown(OBS_fi_I,flag,1)
			end
			if ( RPH_ReputationDetailFrame:IsVisible() ) then 
				RPH:Rep_Detail_Frame(OBS_fi_i,standingID,barValue,barMax,origBarValue,standingID,toExalted,factionStandingtext, toBFF, isParagon, isFriend, isCappedFriendship)

-- ^ rfl SBS 6.2
-- ^ rfl SBS 6
-- v rfl _17 start line 4
-- ^ rfl _17
-- v rfl SBS 7
			_G["ReputationBar"..i.."ReputationBarHighlight1"]:Show();
			_G["ReputationBar"..i.."ReputationBarHighlight2"]:Show();
-- v rfl SBS 7.1
			end
-- ^ rfl SBS 7.1
		else
			_G["ReputationBar"..i.."ReputationBarHighlight1"]:Hide();
			_G["ReputationBar"..i.."ReputationBarHighlight2"]:Hide();
		end
-- ^ rfl SBS 7
	end

end


-- ^ rfl SBS
function RPH:OriginalRepOrder(i,factionIndex,factionRow,factionBar,factionBarPreview,factionTitle,factionButton,factionStanding,factionBackground,lfgBonusFactionID)
-- v rfl ORO set 2 start







-- v rfl ORO 1
	-- get the info for this Faction
	local name, description, standingID, barMin, barMax, barValue, atWarWith, canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild, factionID, hasBonusRepGain, canBeLFGBonus = GetFactionInfo(factionIndex);
	local isParagon
	factionTitle:SetText(name);
-- ^ rfl ORO 1
-- v rfl ORO 2

	if ( isCollapsed ) then
		factionButton:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up");
	else
		factionButton:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up");
	end
	factionRow.index = factionIndex;
	factionRow.isCollapsed = isCollapsed;
-- ^ rfl ORO 2


-- v rfl _16 line start 3
	local colorIndex, isCappedFriendship, factionStandingtext, isFriend = RPH_Friend_Detail(factionID, standingID, factionRow);
-- ^ rfl  _16_
-- v rfl ORO 4
	
	local origBarValue = barValue
	
	if ( factionID and C_Reputation.IsFactionParagon(factionID) ) then
		isParagon = true
        local paragonFrame = ReputationFrame.paragonFramesPool:Acquire();
        paragonFrame.factionID = factionID;
        paragonFrame:SetPoint("RIGHT", factionRow, 11, 0);
		local currentValue, threshold, rewardQuestID, hasRewardPending = C_Reputation.GetFactionParagonInfo(factionID);
		origBarValue = mod(currentValue, threshold);
        C_Reputation.RequestFactionParagonPreloadRewardData(factionID);
        paragonFrame.Glow:SetShown(hasRewardPending);
        paragonFrame.Check:SetShown(hasRewardPending);
        paragonFrame:Show();
	  end
      local isCapped;
      if (standingID == MAX_REPUTATION_REACTION) then
        isCapped = true;
      end

-- If exalted show a full green bar
	if(standingID == 8 or isCappedFriendship) then
		barMin,barMax,barValue = 0,1,1;
	end
-- Set reputation bar to paragon values if user option is activated and faction is at paragon rep
	if(factionID and C_Reputation.IsFactionParagon(factionID) and RPH_Data.ShowParagonBar) then
		local currentValue, threshold, rewardQuestID, hasRewardPending = C_Reputation.GetFactionParagonInfo(factionID);
		barMin, barMax, barValue = 0, threshold, mod(currentValue, threshold);
	end

-- Normalize Values
	barMax = barMax - barMin;
	barValue = barValue - barMin;
	barMin = 0;

	if(factionID and C_Reputation.IsFactionParagon(factionID) and RPH_Data.ShowParagonBar and RPH_Data.ShowMissing ~= true) then
		factionRow.rolloverText = HIGHLIGHT_FONT_COLOR_CODE.." "..format(REPUTATION_PROGRESS_FORMAT, barValue, barMax)..FONT_COLOR_CODE_CLOSE;
	elseif(isCapped or isCappedFriendship) then
		factionRow.rolloverText = nil;
	elseif(RPH_Data.ShowMissing ~= true) then
		factionRow.rolloverText = HIGHLIGHT_FONT_COLOR_CODE.." "..format(REPUTATION_PROGRESS_FORMAT, barValue, barMax)..FONT_COLOR_CODE_CLOSE;
	else
		factionRow.rolloverText = nil;
	end

-- ^ rfl ORO 4
-- v rfl ORO 3
-- v rfl ORO 3.1
	local toExalted = 0
	if (standingID <8) then
		toExalted = RPH_ToExalted[standingID] + barMax - barValue;
	end

	local toBFF = 0
	if (isCappedFriendship ~= true and isFriend) then
		toBFF = RPH_GetFriendFactionRemaining(factionid, factionStandingtext, barMax, barValue)
	end


	if (RPH_Data.ShowMissing) then
		if ((barMax-barValue) ~= 0 and factionID and C_Reputation.IsFactionParagon(factionID) and RPH_Data.ShowParagonBar) then
			factionRow.standingText = "Paragon".." ("..barMax - barValue..")";
		elseif ((barMax-barValue) ~= 0) then
			factionRow.standingText = factionStandingtext.." ("..barMax - barValue..")";
		else
			factionRow.standingText = factionStandingtext;
		end
	else
-- ^ rfl SBS 3.1
		if(factionID and C_Reputation.IsFactionParagon(factionID) and RPH_Data.ShowParagonBar) then
			factionRow.standingText = "Paragon";
		else
			factionRow.standingText = factionStandingtext;
		end
-- v rfl SBS 3.2
	end
-- ^ rfl ORO 3.2
-- ^ rfl ORO 3
-- v rfl ORO 5
-- v rfl ORO 5.1
	
	factionStanding:SetText(factionRow.standingText);
-- ^ rfl ORO 5.1
	if ( isCappedFriendship ) then
		factionRow.tooltip = nil;
	else
		factionRow.tooltip = HIGHLIGHT_FONT_COLOR_CODE.." "..barValue.." / "..barMax..FONT_COLOR_CODE_CLOSE;
	end
	factionBar:SetMinMaxValues(0, barMax);

	factionBar:SetValue(barValue);
	local color = FACTION_BAR_COLORS[colorIndex];
	factionBar:SetStatusBarColor(color.r, color.g, color.b);
	factionBar.BonusIcon:SetShown(hasBonusRepGain);
	factionRow.LFGBonusRepButton.factionID = factionID;
	factionRow.LFGBonusRepButton:SetShown(canBeLFGBonus);
	factionRow.LFGBonusRepButton:SetChecked(lfgBonusFactionID == factionID);
	factionRow.LFGBonusRepButton:SetEnabled(lfgBonusFactionID ~= factionID);

	if ( showLFGPulse and not SHOWED_LFG_PULSE and not lfgBonusFactionID ) then
        factionRow.LFGBonusRepButton.Glow:Show();
        factionRow.LFGBonusRepButton.GlowAnim:Play();
    else
        factionRow.LFGBonusRepButton.Glow:Hide();
        factionRow.LFGBonusRepButton.GlowAnim:Stop();
    end
-- ^ rfl ORO 5
	local previewValue = 0
	if (RPH_Data.ShowPreviewRep) then
		previewValue = RPH:GetReadyReputation(factionIndex)
	end
	if ((previewValue > 0) and not ((standingID==8) and (barMax-barValue == 1) ) ) then
		factionBarPreview:Show()
		factionBarPreview:SetMinMaxValues(0, barMax)
		previewValue = previewValue + barValue
		if (previewValue > barMax) then previewValue = barMax end
		factionBarPreview:SetValue(previewValue)
		factionBarPreview:SetID(factionIndex)
		factionBarPreview:SetStatusBarColor(0.8, 0.8, 0.8, 0.5)
	else
	---	factionBarPreview:Hide()
	end
-- v rfl ORO 6

	ReputationFrame_SetRowType(factionRow, isChild, isHeader, hasRep);

	factionRow:Show();
	-- Update details if this is the selected Faction
	if ( atWarWith ) then
		_G["ReputationBar"..i.."ReputationBarAtWarHighlight1"]:Show();
		_G["ReputationBar"..i.."ReputationBarAtWarHighlight2"]:Show();
	else
		_G["ReputationBar"..i.."ReputationBarAtWarHighlight1"]:Hide();
		_G["ReputationBar"..i.."ReputationBarAtWarHighlight2"]:Hide();
	end


	if ( factionIndex == GetSelectedFaction() ) then

		if ( ReputationDetailFrame:IsShown() ) then
-- v rfl ORO 6.1
			if ( canToggleAtWar and (not isHeader)) then local flag = 1 end
			RPH_ReputationDetailFrame_IsShown(factionIndex,flag,2)
		end
		if ( RPH_ReputationDetailFrame:IsVisible() ) then 
			RPH:Rep_Detail_Frame(factionIndex,colorIndex,barValue,barMax,origBarValue,standingID,toExalted,factionStandingtext,toBFF, isParagon, isFriend, isCappedFriendship) 
-- ^ rfl ORO 6.1
-- ^ rfl ORO 6
-- v rfl _17 start line 4
-- ^ rfl _17
-- v rfl ORO 7
			_G["ReputationBar"..i.."ReputationBarHighlight1"]:Show();
			_G["ReputationBar"..i.."ReputationBarHighlight2"]:Show();

		end

	else
		_G["ReputationBar"..i.."ReputationBarHighlight1"]:Hide();
		_G["ReputationBar"..i.."ReputationBarHighlight2"]:Hide();
	end
-- ^ rfl ORO 7

end
-- ^ rfl ORO