----------------------------------------------------------
-- Factionizer, a reputation management tool 6.02.00.12 16.02.02 42278.8086288194 --
-------------------------------------------------------
---------------------------
-- _00_ Variables Set up --
---------------------------

FIZ_ToExalted = {}
FIZ_ToExalted[0] = 84000;
FIZ_ToExalted[1] = 48000;	-- working on Hated -> Hostile, base offset 21k+12k+6k+3k+3k+3k
FIZ_ToExalted[2] = 45000;	-- working on Hostile -> Unfriendly, base offset 21k+12k+6k+3k+3k
FIZ_ToExalted[3] = 42000;	-- working on Unfriendly -> Neutral, base offset 21k+12k+6k+3k
FIZ_ToExalted[4] = 39000;	-- working on Neutral -> Friendly, base offset 21k+12k+6k
FIZ_ToExalted[5] = 33000;	-- working on Friendly -> Honored, base offset 21k+12k
FIZ_ToExalted[6] = 21000;	-- working on Honored -> Revered, base offset 21k
FIZ_ToExalted[7] = 0;	-- working on Revered -> Exalted, so no base offset
FIZ_ToExalted[8] = 0;	-- already at Exalted -> no offset

FIZ_ToBFF = {}	                    --> Friendship levels:
FIZ_ToBFF["Stranger"] = 42999;	    --> 1 - Stranger: 0-8400
FIZ_ToBFF["Acquaintance"] = 42000;	--> 2 - Acquaintance: 8400-16800
FIZ_ToBFF["Buddy"] = 33600;	        --> 3 - Buddy: 16800-25200
FIZ_ToBFF["Friend"] = 25200;	    --> 4 - Friend: 25200-33600
FIZ_ToBFF["Good Friend"] = 16800;	--> 5 - Good Friend: 33600-42000
FIZ_ToBFF["Best Friend"] = 8400;	--> 6 - Best Friend: 42000-42999

-- Addon constants
FIZ_NAME = "Factionizer"
FIZ_VNMBR = 6020012	-- Number code for this version
local addonName, vars = ...
local L = vars.L
FIZ = vars

-- Colours
FIZ_Help_COLOUR = "|cFFFFFF7F"
FIZ_NEW_REP_COLOUR = "|cFF7F7FFF"
FIZ_NEW_STANDING_COLOUR = "|cFF6060C0"
FIZ_BAG_COLOUR = "|cFFC0FFC0"
FIZ_BAG_BANK_COLOUR = "|cFFFFFF7F"
FIZ_QUEST_COLOUR = "|cFFC0FFC0"
FIZ_HIGHLIGHT_COLOUR = "|cFF00FF00"
FIZ_QUEST_ACTIVE_COLOUR = "|cFFFF7F7F"
FIZ_LOWLIGHT_COLOUR = "|cFFFF3F3F"
FIZ_SUPPRESS_COLOUR = "|cFF7F7F7F"
--Profestions ggg
FIZ_LIMIT_TYPE_Herb = 1
FIZ_LIMIT_TYPE_Skin = 2
FIZ_LIMIT_TYPE_Mine = 3
FIZ_LIMIT_TYPE_Gather = 4
FIZ_LIMIT_TYPE_Engi = 5
FIZ_LIMIT_TYPE_Alch = 6
FIZ_LIMIT_TYPE_Blac = 7
FIZ_LIMIT_TYPE_Tail = 8
FIZ_LIMIT_TYPE_Leat = 9
FIZ_LIMIT_TYPE_Ench = 10
FIZ_LIMIT_TYPE_Jewe = 11
FIZ_LIMIT_TYPE_Incr = 12
FIZ_LIMIT_TYPE_Aid = 13
FIZ_LIMIT_TYPE_Arch = 14
FIZ_LIMIT_TYPE_Cook = 15
FIZ_LIMIT_TYPE_Fish = 16

--------------------------
-- _01_ Addon Variables --
--------------------------

-- Stored data
FIZ_Data = {}   -- Data saved between sessions
-- Initialization
FIZ_Main = nil   -- Main program window
FIZ_InitComplete = nil
FIZ_VarsLoaded = nil
FIZ_InitStages = 0
FIZ_InitCount = 0
FIZ_difficultyID = 0
FIZ_UpdateRequest = nil
FIZ_UPDATE_INTERVAL = 5
-- Faction information
FIZ_FactionMapping = {}
FIZ_FactionGain = {}

-- Tracking data
FIZ_Entries = {}
-- Skill Tracking ggg
FIZ_Herb = false
FIZ_Skin = false
FIZ_Mine = false
FIZ_Jewel = false
FIZ_Cook = false
FIZ_Arch = false
FIZ_Fish = false
FIZ_Aid = false
FIZ_Black = false
FIZ_Tailor = false
FIZ_Leath = false
FIZ_Enchan = false
FIZ_Engin = false
FIZ_Incrip = false
FIZ_Alche = false
--- Race/Side/Difficulty
FIZ_IsHuman = false
FIZ_IsDeathKnight = false
FIZ_IsAlliance = false
FIZ_IsHorde = false
FIZ_IsHeroic=false
-- Guild Tracking
FIZ_GuildName = nil

------------------------
-- _02_ Addon Startup --
------------------------
------------------------------------------------------------
function FIZ_OnLoad(self)
	-- Events monitored by Event Handler
	FIZ_Main = self
	self:RegisterEvent("ADDON_LOADED")
	self:RegisterEvent("VARIABLES_LOADED")
	self:RegisterEvent("PLAYER_ENTERING_WORLD")
	self:RegisterEvent("PLAYER_LOGIN")

	-- Slash commands for CLI
	SLASH_FIZ1 = "/factionizer"
	SLASH_FIZ2 = "/fz"
	SlashCmdList.FIZ = FIZ_SlashHandler

	FIZ_Orig_GetFactionInfo = GetFactionInfo;  -- api function
	GetFactionInfo = FIZ_GetFactionInfo;  -- api function

	FIZ_Orig_ReputationFrame_Update = ReputationFrame_Update -- rfl function
	ReputationFrame_Update = FIZ_ReputationFrame_Update -- rfl function

	FIZ_Orig_ReputationBar_OnClick = ReputationBar_OnClick -- rfl function
	ReputationBar_OnClick = FIZ_ReputationBar_OnClick -- rfl function

	FIZ_Orig_ExpandFactionHeader = ExpandFactionHeader
	ExpandFactionHeader = FIZ_ExpandFactionHeader

	FIZ_Orig_CollapseFactionHeader = CollapseFactionHeader
	CollapseFactionHeader = FIZ_CollapseFactionHeader

	--FIZ_Orig_ChatFrame_OnEvent = ChatFrame_OnEvent
	--ChatFrame_OnEvent = FIZ_ChatFrame_OnEvent

	FIZ_Orig_StandingText = ReputationFrameStandingLabel:GetText()
end

------------------------
-- _03_ Event Handler --
------------------------

function FIZ_OnEvent(self, event, ...)
	local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13 = ...
	if (event == "ADDON_LOADED") and (arg1 == FIZ_NAME) then
		FIZ_Main:UnregisterEvent("ADDON_LOADED")
		FIZ_InitStages = FIZ_InitStages + 1
		FIZ:Init()
	elseif (event == "VARIABLES_LOADED") then
		FIZ_OnShowOptionFrame()
		FIZ_VarsLoaded = true
		FIZ_InitStages = FIZ_InitStages + 2
		FIZ:Init()
	elseif (event == "PLAYER_LOGIN") then
		FIZ_Main:UnregisterEvent("PLAYER_LOGIN")
		--FIZ_DoInitialCollapse()
		FIZ_InitStages = FIZ_InitStages + 4
		FIZ:Init()
	elseif (event == "PLAYER_ENTERING_WORLD") then
		FIZ_InitStages = FIZ_InitStages + 8
		FIZ:Init()
		FIZ_Main:UnregisterEvent("PLAYER_ENTERING_WORLD")
		FIZ_Main:RegisterEvent("UPDATE_FACTION") --rfl
		FIZ_Main:RegisterEvent("LFG_BONUS_FACTION_ID_UPDATED") --rfl
		-- to keep item list up to date
		FIZ_Main:RegisterEvent("BAG_UPDATE")
		FIZ_Main:RegisterEvent("BANKFRAME_OPENED")
		FIZ_Main:RegisterEvent("BANKFRAME_CLOSED")
		-- to keep dungeon Difficulty up to date
		FIZ_Main:RegisterEvent("PLAYER_DIFFICULTY_CHANGED")
		-- to keep list of known skills up to date
		FIZ_Main:RegisterEvent("CHAT_MSG_SKILL")
		FIZ_Main:RegisterEvent("CHAT_MSG_SPELL_TRADESKILLS")
		FIZ_Main:RegisterEvent("SKILL_LINES_CHANGED")
		FIZ_Main:RegisterEvent("UPDATE_TRADESKILL_RECAST")
		FIZ_Main:RegisterEvent("QUEST_COMPLETE")
		FIZ_Main:RegisterEvent("QUEST_WATCH_UPDATE")

		-- new chat hook system
		ChatFrame_AddMessageEventFilter("CHAT_MSG_COMBAT_FACTION_CHANGE", FIZ_ChatFilter)
		ChatFrame_AddMessageEventFilter("COMBAT_TEXT_UPDATE", FIZ_ChatFilter)

	elseif (event == "UPDATE_FACTION" or
	      	event == "QUEST_COMPLETE" or
	      	event == "QUEST_WATCH_UPDATE") then
-- rfl Event v
		if ( ReputationFrame:IsVisible() ) then
			ReputationFrame_Update(); -- rfl Event
		end
-- rfl event ^
		if ( FIZ_ReputationDetailFrame:IsVisible()) then
			FIZ:BuildUpdateList()
			FIZ_UpdateList_Update()
		end
		FIZ:DumpReputationChangesToChat()

	elseif ( event == "BAG_UPDATE") then
		if (FIZ_ReputationDetailFrame:IsVisible()) then
			-- Update rep frame (implicitely updates detail frame which In turn implicitely reparses bag contents)
			ReputationFrame_Update()
		end 

	elseif ( event == "BANKFRAME_OPENED") then
		FIZ_BankOpen = true

	elseif ( event == "BANKFRAME_CLOSED") then
		-- this is fired twice when closing the bank window, bank contents only available at the first Event
		if (FIZ_BankOpen) then
			-- this is the first call
			FIZ_BankOpen = nil

			if (FIZ_ReputationDetailFrame:IsVisible()) then
				-- Update rep frame (implicitely updates detail frame which In turn implicitely reparses bag contents)
				ReputationFrame_Update()
			end
		end

	elseif ( event == "PLAYER_DIFFICULTY_CHANGED") then -- ccc
			FIZ:Print("PLAYER_DIFFICULTY_CHANGED", nil) 

	elseif ( event == "CHAT_MSG_SKILL") or
		( event == "CHAT_MSG_SPELL_TRADESKILLS") or
		( event == "SKILL_LINES_CHANGED") or
		( event == "UPDATE_TRADESKILL_RECAST") then
		FIZ:ExtractSkills()
		if ( ReputationFrame:IsVisible() ) then
			ReputationFrame_Update(); -- rfl Event
		end
		if ( FIZ_ReputationDetailFrame:IsVisible()) then
			FIZ:BuildUpdateList()
			FIZ_UpdateList_Update()
		end

	end

end

-------------------------------
function FIZ_OnUpdate(self)
	if not FIZ_UpdateRequest then return end
	if FIZ_InitComplete and FIZ_InitCount > 5 then return end
	if (GetTime() < FIZ_UpdateRequest) then return end

	if (FIZ_InitCount <= 5) then
		-- Guild level seems to only return a proper value a little later
		--FIZ:Print("update number "..tostring(FIZ_InitCount))
		FIZ_InitCount = FIZ_InitCount + 1
		FIZ_UpdateRequest = GetTime() + FIZ_UPDATE_INTERVAL
		if (FIZ_InitCount > 5) then
			FIZ_UpdateRequest = nil
			--FIZ:Print("Stopping updates")
		end
	end
end


-------------------------------
-- _04_ Addon Initialization --
-------------------------------
function FIZ:InitVariable(var, value)
	local result = 0
	if var == nil then return result end

	if (not FIZ_Data[var]) and (not FIZ_Data[var.."_inited"]) then
		-- this option is not Set, and has never been Set by default, do so and let the user know
		FIZ_Data[var] = value
		FIZ_Data[var.."_inited"] = true
		result = 1
	elseif (not FIZ_Data[var.."_inited"]) then
		-- the option is enabled, but not marked as inited, do so silently
		FIZ_Data[var.."_inited"] = true
	end

	return result
end

-------------------------------
function FIZ:Init()
	if FIZ_InitComplete then return end
	--FIZ:Print("FIZ_InitStages ["..tostring(FIZ_InitStages).."]")
	if (FIZ_InitStages ~= 15) then return end

	local version = GetAddOnMetadata("Factionizer", "Version");
	if (version == nil) then
		version = "unknown";
	end

	-- create data structures
	if not FIZ_Data then FIZ_Data = {} end
	if not FIZ_Data.OriginalCollapsed then FIZ_Data.OriginalCollapsed = {} end

	if FIZ_Data.ChatFrame == nil then FIZ_Data.ChatFrame = 0 end
	local changed = 0
	changed = changed + FIZ:InitVariable("ShowMobs", true)
	changed = changed + FIZ:InitVariable("ShowQuests", true)
	changed = changed + FIZ:InitVariable("ShowInstances", true)
	changed = changed + FIZ:InitVariable("ShowItems", true)
	changed = changed + FIZ:InitVariable("ShowGeneral", true)

	changed = changed + FIZ:InitVariable("ShowMissing", true)
	changed = changed + FIZ:InitVariable("ExtendDetails", true)
	changed = changed + FIZ:InitVariable("WriteChatMessage", true)
	changed = changed + FIZ:InitVariable("NoGuildGain", true)
	changed = changed + FIZ:InitVariable("SuppressOriginalChat", true)
	changed = changed + FIZ:InitVariable("ShowPreviewRep", true)
	changed = changed + FIZ:InitVariable("SwitchFactionBar", true)
	changed = changed + FIZ:InitVariable("SilentSwitch", true)
	changed = changed + FIZ:InitVariable("NoGuildSwitch", true)
	if (changed > 0) then
		StaticPopupDialogs["FIZ_CONFIG_CHANGED"] = {
			text = FIZ_TXT.configQuestion,
			button1 = FIZ_TXT.showConfig,
			button2 = FIZ_TXT.later,
			OnAccept = function()
				FIZ:ToggleConfigWindow();	--- f_tcw
				end,
			--OnCancel = function()
			--	FIZ:Print(GLDG_Data.colours.help..GLDG_NAME..":|cFFFF0000 "..GLDG_TXT.reload)
			--	end,
			timeout = 0,
			whileDead = 1,
			hideOnEscape = 1,
			sound = "igQuestFailed",
		};
		StaticPopup_Show("FIZ_CONFIG_CHANGED");
	end

	-- keep version In configuration file
	FIZ_Data.Version = FIZ_VNMBR

	-- Set up UI
	FIZ_OptionsButtonText:SetText(FIZ_TXT.options)
	FIZ_OptionsFrameTitle:SetText(FIZ_NAME.." "..FIZ_TXT.options)

	FIZ_EnableMissingBoxText:SetText(FIZ_TXT.showMissing)
	FIZ_ExtendDetailsBoxText:SetText(FIZ_TXT.extendDetails)
	FIZ_GainToChatBoxText:SetText(FIZ_TXT.gainToChat)
	FIZ_NoGuildGainBoxText:SetText(FIZ_TXT.noGuildGain)
	FIZ_SupressOriginalGainBoxText:SetText(FIZ_TXT.suppressOriginalGain)
	FIZ_ShowPreviewRepBoxText:SetText(FIZ_TXT.showPreviewRep)
	FIZ_SwitchFactionBarBoxText:SetText(FIZ_TXT.switchFactionBar)
	FIZ_NoGuildSwitchBoxText:SetText(FIZ_TXT.noGuildSwitch)
	FIZ_SilentSwitchBoxText:SetText(FIZ_TXT.silentSwitch)
	FIZ_OrderByStandingCheckBoxText:SetText(FIZ_TXT.orderByStanding)

	---	FIZ_OnShowOptionFrame()
	FIZ:ExtractSkills()

	local _, race = UnitRace("player")
	local faction, locFaction = UnitFactionGroup("player")
	local class, enClass = UnitClass("player")
	FIZ_Player = UnitName("player")
	FIZ_Realm = GetRealmName()

	if (IsInGuild()) then
		if (FIZ_GuildName == nil or FIZ_GuildName == "") then FIZ_GuildName = GetGuildInfo("player") end
	end

	if (race and faction and locFaction and FIZ_Player and FIZ_Realm) then
		if (race == "Human") then
			FIZ_IsHuman = true
		end

		if enClass and enClass == "DEATHKNIGHT" then
			FIZ_IsDeathKnight = true
		end

		if (faction == FACTION_ALLIANCE) or (locFaction == FACTION_ALLIANCE) then
			FIZ_IsAlliance = true
		end

		if (faction == FACTION_HORDE) or (locFaction == FACTION_HORDE) then
			FIZ_IsHorde = true
		end

		FIZ:InitFactor(FIZ_IsHuman)

		-- Initialize Faction information
		local locale = GetLocale()
		FIZ:InitFactionMap(locale, FIZ_GuildName)
		-- Changed by Bagdad for easy reputation content moderation
		FIZ_FactionGain = {}
		FIZ_InitEnFactionGains(FIZ_GuildName)
		FIZ:DumpReputationChangesToChat(true)

		FIZ_InitComplete = true
		if (FIZ_InitCount <= 5) then
			FIZ_UpdateRequest = GetTime() + FIZ_UPDATE_INTERVAL
			--FIZ:Print("Init complete, setting up updates ("..tostring(FIZ_InitCount).." already done)")
		--else
			--FIZ:Print("Init complete, not starting updates")
		end

	end
end

------------------------
-- _05_ Slash Handler --
------------------------

function FIZ_SlashHandler(msg)
	if not msg then
		return
	else
		local msgLower = string.lower(msg)
		local words = FIZ:GetWords(msg)
		local wordsLower = FIZ:GetWords(msgLower)
		local size = FIZ:TableSize(wordsLower)
		local FD_SH = FIZ_Data

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
					elseif (wordsLower[1]=="suppress") then
						FD_SH.SuppressOriginalChat = true
					elseif (wordsLower[1]=="preview") then
						FD_SH.ShowPreviewRep = true
					elseif (wordsLower[1]=="bar") then
						FD_SH.SwitchFactionBar = true
						FD_SH.NoGuildSwitch = false
						FD_SH.SilentSwitch = false
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
						FD_SH.SuppressOriginalChat = true
						FD_SH.ShowPreviewRep = true
						FD_SH.SwitchFactionBar = true
						FD_SH.NoGuildSwitch = false
						FD_SH.SilentSwitch = false
					else
						FIZ:PrintSlash(FIZ_TXT.command,msgLower)
					end

					if ( ReputationFrame:IsVisible() ) then
						ReputationFrame_Update(); -- rfl Event
					end
					if ( FIZ_ReputationDetailFrame:IsVisible()) then
						FIZ:BuildUpdateList()
						FIZ_UpdateList_Update()
					end
				else
						FIZ:PrintSlash(FIZ_TXT.command,msgLower)
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
					elseif (wordsLower[1]=="suppress") then
						FD_SH.SuppressOriginalChat = false
					elseif (wordsLower[1]=="preview") then
						FD_SH.ShowPreviewRep = false
					elseif (wordsLower[1]=="bar") then
						FD_SH.SwitchFactionBar = false
						FD_SH.NoGuildSwitch = false
						FD_SH.SilentSwitch = false
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
						FD_SH.SuppressOriginalChat = false
						FD_SH.ShowPreviewRep = false
						FD_SH.SwitchFactionBar = false
						FD_SH.NoGuildSwitch = false
						FD_SH.SilentSwitch = false
					else
						FIZ:PrintSlash(FIZ_TXT.command,msgLower)
					end

					if ( ReputationFrame:IsVisible() ) then
						ReputationFrame_Update(); -- rfl Event
					end
					if ( FIZ_ReputationDetailFrame:IsVisible()) then
						FIZ:BuildUpdateList()
						FIZ_UpdateList_Update()
					end
				else
					FIZ:PrintSlash(FIZ_TXT.command,msgLower)
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
					elseif (wordsLower[1]=="suppress") then
						FD_SH.SuppressOriginalChat = not FD_SH.SuppressOriginalChat
					elseif (wordsLower[1]=="preview") then
						FD_SH.ShowPreviewRep = not FD_SH.ShowPreviewRep
					elseif (wordsLower[1]=="preview") then
						FD_SH.SwitchFactionBar = not FD_SH.SwitchFactionBar
						FD_SH.NoGuildSwitch = false
						FD_SH.SilentSwitch = false
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
						FD_SH.SuppressOriginalChat = not FD_SH.SuppressOriginalChat
						FD_SH.ShowPreviewRep = not FD_SH.ShowPreviewRep
						FD_SH.SwitchFactionBar = not FD_SH.SwitchFactionBar
						FD_SH.NoGuildSwitch = false
						FD_SH.SilentSwitch = false
					else
						FIZ:PrintSlash(FIZ_TXT.command,msgLower)
					end

					if ( ReputationFrame:IsVisible() ) then
						ReputationFrame_Update(); -- rfl Event
					end
					if ( FIZ_ReputationDetailFrame:IsVisible()) then
						FIZ:BuildUpdateList()
						FIZ_UpdateList_Update()
					end
				else
						FIZ:PrintSlash(FIZ_TXT.command,msgLower)
				end
			elseif (wordsLower[0]=="list") then
				if (size>1) then
					if (wordsLower[1]=="1" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL1"])) then
						FIZ:ListByStanding(1)
					elseif (wordsLower[1]=="2" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL2"])) then
						FIZ:ListByStanding(2)
					elseif (wordsLower[1]=="3" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL3"])) then
						FIZ:ListByStanding(3)
					elseif (wordsLower[1]=="4" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL4"])) then
						FIZ:ListByStanding(4)
					elseif (wordsLower[1]=="5" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL5"])) then
						FIZ:ListByStanding(5)
					elseif (wordsLower[1]=="6" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL6"])) then
						FIZ:ListByStanding(6)
					elseif (wordsLower[1]=="7" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL7"])) then
						FIZ:ListByStanding(7)
					elseif (wordsLower[1]=="8" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL8"])) then
						FIZ:ListByStanding(8)
					else
						FIZ:PrintSlash(FIZ_TXT.command,msgLower)
					end
				else
					FIZ:ListByStanding()
				end
			elseif (wordsLower[0]=="loc") then
				if (size>1) then
					if (wordsLower[1]=="1" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL1"])) then
						FIZ:ListByStanding(1)
					elseif (wordsLower[1]=="2" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL2"])) then
						FIZ:ListByStanding(2)
					elseif (wordsLower[1]=="3" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL3"])) then
						FIZ:ListByStanding(3)
					elseif (wordsLower[1]=="4" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL4"])) then
						FIZ:ListByStanding(4)
					elseif (wordsLower[1]=="5" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL5"])) then
						FIZ:ListByStanding(5)
					elseif (wordsLower[1]=="6" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL6"])) then
						FIZ:ListByStanding(6)
					elseif (wordsLower[1]=="7" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL7"])) then
						FIZ:ListByStanding(7)
					elseif (wordsLower[1]=="8" or wordsLower[1]==string.lower(_G["FACTION_STANDING_LABEL8"])) then
						FIZ:ListByStanding(8)
					else
						FIZ:PrintSlash(FIZ_TXT.command,msgLower)
					end
				else
					FIZ_ShowGerman()
				end
			elseif (wordsLower[0]=="test") then
				FIZ_Test()
			elseif (wordsLower[0]=="status") then
				FIZ:Status()
			elseif (wordsLower[0]=="help") then
				FIZ:Help()
			elseif (wordsLower[0]=="about") then
				FIZ:About()
			else
				FIZ:PrintSlash(FIZ_TXT.command,msgLower)
			end
		else
			-- do nothing
		end
	end
end

-----------------------------------
-- _06_ General Helper Functions --
-----------------------------------

function FIZ:Print(msg, forceDefault) --zzz
	if not (msg) then return end

	if ((FIZ_Data==nil) or forceDefault) then
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
function FIZ:Printtest(msg,msg1,msg2) --fpt
	FIZ:Print(""..tostring(msg).." "..tostring(msg1).."  "..tostring(msg2), nil)
end
------------------------------------------------------------
function FIZ:PrintSlash(msg,msg1) --zzz
	FIZ:Print(FIZ_Help_COLOUR..FIZ_NAME..":|r "..msg.." ["..FIZ_Help_COLOUR..msg1.."|r]", true)
	FIZ:Help()
end
------------------------------------------------------------
function FIZ:Debug(msg)
	if not (msg) then return end
	--FIZ:Print(msg)
end
------------------------------------------------------------
function FIZ:TableSize(info)
	local result = 0
	if info then
		for item in pairs(info) do result = result + 1 end
	end
	return result
end

------------------------------------------------------------
function FIZ:GetWords(str)
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
function FIZ:Concat(list, start, stop)
	local ret = "";

	if (start == nil) then start = 0 end
	if (stop == nil) then stop = FIZ:TableSize(list) end

	for i = start,stop do
		if list[i] then
			if (ret ~= "") then ret = ret.." " end
			ret = ret..list[i]
		end
	end
	return ret
end

------------------------------------------------------------
function FIZ:BoolToEnabled(b)
	local result = FIZ_TXT.disabled
	if b then result = FIZ_TXT.enabled end
	return result
end

------------------------------------------------------------
function FIZ:RGBToColour_perc(a, r, g, b)
	return string.format("|c%02X%02X%02X%02X", a*255, r*255, g*255, b*255)
end

------------------------
-- _07_ information
------------------------

function FIZ:Help() --xxx
	FIZ:Print(" ", true)
	FIZ:Print(FIZ_Help_COLOUR..FIZ_NAME..":|r "..FIZ_TXT.help, true)
	FIZ:Print(FIZ_Help_COLOUR..FIZ_TXT.usage..":|r /fz help "..FIZ_Help_COLOUR..FIZ_TXT.helphelp, true)
	FIZ:Print(FIZ_Help_COLOUR..FIZ_TXT.usage..":|r /fz about "..FIZ_Help_COLOUR..FIZ_TXT.helpabout, true)
	FIZ:Print(FIZ_Help_COLOUR..FIZ_TXT.usage..":|r /fz status "..FIZ_Help_COLOUR..FIZ_TXT.helpstatus, true)
	FIZ:Print(FIZ_Help_COLOUR..FIZ_TXT.usage..":|r /fz enable { mobs | quests | instances | items | all }", true)
	FIZ:Print(FIZ_Help_COLOUR..FIZ_TXT.usage..":|r /fz disable { mobs | quests | instances | items | all }", true)
	FIZ:Print(FIZ_Help_COLOUR..FIZ_TXT.usage..":|r /fz toggle { mobs | quests | instances | items | all }", true)
	FIZ:Print(FIZ_Help_COLOUR..FIZ_TXT.usage..":|r /fz enable { missing | details | chat | suppress }", true)
	FIZ:Print(FIZ_Help_COLOUR..FIZ_TXT.usage..":|r /fz disable { missing | details | chat | suppress }", true)
	FIZ:Print(FIZ_Help_COLOUR..FIZ_TXT.usage..":|r /fz toggle { missing | details | chat | suppress }" , true)
end
------------------------------------------------------------
function FIZ:About()
	local ver = GetAddOnMetadata("Factionizer", "Version");
	local date = GetAddOnMetadata("Factionizer", "X-Date");
	local author = GetAddOnMetadata("Factionizer", "Author");
	local web = GetAddOnMetadata("Factionizer", "X-Website");

	if (author ~= nil) then
		FIZ:Print(FIZ_NAME.." "..FIZ_TXT.by.." "..FIZ_Help_COLOUR..author.."|r", true);
	end
	if (ver ~= nil) then
		FIZ:Print("  "..FIZ_TXT.version..": "..FIZ_Help_COLOUR..ver.."|r", true);
	end
	if (date ~= nil) then
		FIZ:Print("  "..FIZ_TXT.date..": "..FIZ_Help_COLOUR..date.."|r", true);
	end
	if (web ~= nil) then
		FIZ:Print("  "..FIZ_TXT.web..": "..FIZ_Help_COLOUR..web.."|r", true);
	end

end
------------------------------------------------------------
function FIZ:Status()
	FIZ:Print(" ", true)
	FIZ:Print(FIZ_Help_COLOUR..FIZ_NAME..":|r "..FIZ_TXT.status, true)
	FIZ:Print("   "..FIZ_TXT.statMobs..": "..FIZ_Help_COLOUR..FIZ:BoolToEnabled(FIZ_Data.ShowMobs).."|r", true)
	FIZ:Print("   "..FIZ_TXT.statQuests..": "..FIZ_Help_COLOUR..FIZ:BoolToEnabled(FIZ_Data.ShowQuests).."|r", true)
	FIZ:Print("   "..FIZ_TXT.statInstances..": "..FIZ_Help_COLOUR..FIZ:BoolToEnabled(FIZ_Data.ShowInstances).."|r", true)
	FIZ:Print("   "..FIZ_TXT.statItems..": "..FIZ_Help_COLOUR..FIZ:BoolToEnabled(FIZ_Data.ShowItems).."|r", true)
	FIZ:Print("   "..FIZ_TXT.statGeneral..": "..FIZ_Help_COLOUR..FIZ:BoolToEnabled(FIZ_Data.ShowGeneral).."|r", true)
	FIZ:Print("   "..FIZ_TXT.statMissing..": "..FIZ_Help_COLOUR..FIZ:BoolToEnabled(FIZ_Data.ShowMissing).."|r", true)
	FIZ:Print("   "..FIZ_TXT.statDetails..": "..FIZ_Help_COLOUR..FIZ:BoolToEnabled(FIZ_Data.ExtendDetails).."|r", true)
	FIZ:Print("   "..FIZ_TXT.statChat..": "..FIZ_Help_COLOUR..FIZ:BoolToEnabled(FIZ_Data.WriteChatMessage).."|r", true)

	FIZ:Print("   "..FIZ_TXT.statNoGuildChat..": "..FIZ_Help_COLOUR..FIZ:BoolToEnabled(FIZ_Data.NoGuildGain).."|r", true)
	FIZ:Print("   "..FIZ_TXT.statSuppress..": "..FIZ_Help_COLOUR..FIZ:BoolToEnabled(FIZ_Data.SuppressOriginalChat).."|r", true)
	FIZ:Print("   "..FIZ_TXT.statPreview..": "..FIZ_Help_COLOUR..FIZ:BoolToEnabled(FIZ_Data.ShowPreviewRep).."|r", true)
	FIZ:Print("   "..FIZ_TXT.statSwitch..": "..FIZ_Help_COLOUR..FIZ:BoolToEnabled(FIZ_Data.SwitchFactionBar).."|r", true)
	FIZ:Print("   "..FIZ_TXT.statNoGuildSwitch..": "..FIZ_Help_COLOUR..FIZ:BoolToEnabled(FIZ_Data.NoGuildSwitch).."|r", true)
	FIZ:Print("   "..FIZ_TXT.statSilentSwitch..": "..FIZ_Help_COLOUR..FIZ:BoolToEnabled(FIZ_Data.SilentSwitch).."|r", true)
end

-----------------------------------
-- _08_ Faction map --
-----------------------------------
function FIZ:InitMapName(fimap)
	--- fpt f_imn	FIZ:Printtest(fimap,"","map 1")
	local map
	if fimap == 1 then
		map = FIZ_TXT.srfd
	elseif fimap== 2 then
		map = FIZ_TXT.tbd
	elseif fimap== 3 then
		map = FIZ_TXT.mnd
	elseif fimap== 5 then
		map = FIZ_TXT.nci
	elseif fimap == 6 then
		map = FIZ_TXT.hci
	elseif not fimap then
		map = " "
	else
		local mapName = GetMapNameByID(fimap);
		map = mapName
	end
	--- fpt f_imn	FIZ:Printtest(fimap,"","map 2")
	if not map then
		map = fimap
	end
	return map
end

function FIZ:InitMobName(fimob)
	--- fpt f_ion	FIZ:Printtest(fimob,"","mob 1")
	local mob
	if fimob == 1 then
		mob = FIZ_TXT.tmob
	elseif fimob== 2 then
		mob = FIZ_TXT.oboss
	elseif fimob== 3 then
		mob = FIZ_TXT.aboss
	elseif fimob == 4 then
		mob = FIZ_TXT.pboss
	elseif fimob == 5 then
		mob = FIZ_TXT.fclear
	elseif fimob == 11 then
		mob = (FIZ_TXT.AU.." "..FIZ_TXT.BB)
	elseif fimob== 12 then
		mob = (FIZ_TXT.AU.." "..FIZ_TXT.SSP)
	elseif fimob== 13 then
		mob = (FIZ_TXT.AU.." "..FIZ_TXT.Wa)
	elseif fimob == 14 then
		mob = FIZ_TXT.VCm
	elseif fimob == 15 then
		mob = (FIZ_TXT.AN.." "..FIZ_TXT.BB)
	elseif fimob== 16 then
		mob = (FIZ_TXT.AN.." "..FIZ_TXT.SSP)
	elseif fimob== 17 then
		mob = (FIZ_TXT.AN.." "..FIZ_TXT.Wa)
	else
	--[[--	local mobName = GetmobNameByID(fimob);
		mob = mobName	--]]--
	end
	--- fpt f_ion	FIZ:Printtest(fimob,mob,"mob 2")
	if not mob then
		mob = fimob
	end
	return mob
end

function FIZ:InitItemName(fiitem,amt)
	--- fpt f_iin	FIZ:Printtest(fiitem,amt,"item 1")
	if fiitem==1 then
		item_name = FIZ_TXT.cdq
	elseif fiitem==2 then
		item_name = FIZ_TXT.fdq
	elseif fiitem==3 then
		item_name = FIZ_TXT.ndq
	elseif fiitem == 4 then
		item_name = FIZ_TXT.cbadge
	elseif fiitem == 5 then
		item_name = FIZ_TXT.deleted
	else
		item_name = GetItemInfo(fiitem)
	end

	if not item_name then
		item_name=fiitem
	end
	return item_name
end

function FIZ:Quest_Names(questIndex)

		FIZ_HiddenQuestTooltip:SetOwner(WorldFrame, ANCHOR_NONE)
		FIZ_HiddenQuestTooltip:SetHyperlink(format("quest:%d", questIndex))

		local quest = FIZ_HiddenQuestTooltipTextLeft1:GetText()
		FIZ_HiddenQuestTooltip:Hide()

		if questIndex == 1 then
			quest = FIZ_TXT.cdq
		elseif questIndex == 2 then
			quest = FIZ_TXT.coq
		elseif questIndex == 3 then
			quest = FIZ_TXT.fdq
		elseif questIndex == 4 then
			quest = FIZ_TXT.foq
		elseif questIndex == 5 then
			quest = FIZ_TXT.ndq
		elseif questIndex == 6 then
			quest = FIZ_TXT.deleted
		elseif questIndex == 7 then
			quest = FIZ_TXT.Championing
		elseif questIndex == 8 then
			quest = FIZ_TXT.bpqfg
		elseif questIndex == 9 then
			quest = FIZ_TXT.djdq
		elseif questIndex == 99 then
			quest = FIZ_TXT.tbd
		else
			if not quest then
				quest = questIndex
			end
		end

		return quest
	end

function FIZ:GetTabardFaction()
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

function FIZ:InitFactor(FIZ_IsHuman,faction)
--- Thanks Gwalkmaur for the heads up
	--FIZ:Print("Faction: "..faction);
	local factor=1.0
	-- Race check
		if FIZ_IsHuman then factor = factor + 0.1 end
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
				--- f_if	FIZ:Printtest(faction,name,"test")
					if (hasBonusRepGain) then
					--- f_if	FIZ:Printtest(faction,name,"Gain")
						factor=factor+1
					end
				end
			end
		end
	--- f_if	FIZ:Printtest(faction,factor,"fact")
	return factor

end

function FIZ:InitFaction(guildName,faction)
	if faction=="guildName" or faction==FIZ_GuildName then
	--- f_ifa	FIZ:Printtest(faction,guildName,"1")
		FIZ_faction = faction
	else
		FIZ_faction = GetFactionInfoByID(faction)
	end
	return FIZ_faction
end

function FIZ:InitFactionMap(locale, guildName)
	FIZ_FactionMapping = {}
	FIZ_InitEnFactions()
	if (guildName) then
		FIZ_AddMapping(guildName, guildName)
	end
end

function FIZ_AddMapping(english, localised)
--- f_am	FIZ:Printtest(english, localised,"map")
	if (not FIZ_FactionMapping) then
		FIZ_FactionMapping = {}
	end

	if (FIZ:InitFaction(FIZ_GuildName,localised)) then
		FIZ_FactionMapping[string.lower(FIZ_faction)] = string.lower(english)
	end
end

------------------------------------
-- _09_ Faction Lists --
------------------------------------

function FIZ:Content(faction, from, to, name, rep)

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

function FIZ_AddSpell(faction, from, to, name, rep, zone, limit)

--[[--	if not faction then return end
	if not from then return end
	if not to then return end
	if not name then return end
	if not rep then return end
	if (type(rep) ~= "number") then return end
	if ((from<1) or (from>8)) then return end
	if ((to<1) or (to>8)) then return end
	if (from > to) then return end								--]]--
	if FIZ:Content(faction, from, to, name, rep) ~=1 then return end
--[[--	FIZ_Initspellname(name)
---	FIZ:InitMapName(zone)


	rep = rep * FIZ:InitFactor(FIZ_IsHuman,FIZ_faction)
	faction = string.lower(FIZ:InitFaction(FIZ_GuildName,faction))
	---	FIZ:Printtest(faction,FIZ_faction,"spell")--fpt

	for standing = from,to do
		local faction_info = FIZ_FactionGain[faction]
		if not faction_info then
			faction_info = {}
			FIZ_FactionGain[faction] = faction_info
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
		FIZ:Debug("Added spell ["..name.."] for faction ["..faction.."] and standing [".._G["FACTION_STANDING_LABEL"..standing].."]")
	end	--]]--
end

function FIZ_AddMob(faction, from, to, name, rep, zone, limit)

--[[--	if not faction then return end
	if not from then return end
	if not to then return end
	if not name then return end
	if not rep then return end
	if (type(rep) ~= "number") then return end
	if ((from<1) or (from>8)) then return end
	if ((to<1) or (to>8)) then return end
	if (from > to) then return end								--]]--
	if FIZ:Content(faction, from, to, name, rep) ~=1 then return end

	rep = rep * FIZ:InitFactor(FIZ_IsHuman,FIZ_faction)
	faction = string.lower(FIZ:InitFaction(FIZ_GuildName,faction))
	--- f_amo	FIZ:Printtest(faction,FIZ_faction,"mob")

	for standing = from,to do
		local faction_info = FIZ_FactionGain[faction]
		if not faction_info then
			faction_info = {}
			FIZ_FactionGain[faction] = faction_info
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
		FIZ:Debug("Added mob ["..name.."] for faction ["..faction.."] and standing [".._G["FACTION_STANDING_LABEL"..standing].."]")
	end
end

function FIZ_AddQuest(faction, from, to, name, rep, itemList, limitType)

--[[--	if not faction then return end
	if not from then return end
	if not to then return end
	if not name then return end
	if not rep then return end
	if (type(rep) ~= "number") then return end
	if ((from<1) or (from>8)) then return end
	if ((to<1) or (to>8)) then return end
	if (from > to) then return end								--]]--
	if FIZ:Content(faction, from, to, name, rep) ~=1 then return end

	faction = string.lower(FIZ:InitFaction(FIZ_GuildName,faction))
	rep = rep * FIZ:InitFactor(FIZ_IsHuman,FIZ_faction)
	
	--- f_aq	FIZ:Printtest(faction,FIZ_faction,"quest")

	for standing = from,to do
		local faction_info = FIZ_FactionGain[faction]
		if not faction_info then
			faction_info = {}
			FIZ_FactionGain[faction] = faction_info
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
					--- f_aq	FIZ:Printtest(add_count.items[item_name],mark_I[item_name],"item 4")
				end
			end
		end
		if ((standing == to) and limit) then
			add_count.limit = limit
		end

		FIZ:Debug("Added quest ["..name.."] for faction ["..faction.."] and standing [".._G["FACTION_STANDING_LABEL"..standing].."]")
	end
end

function FIZ_AddInstance(faction, from, to, name, rep, heroic)

--[[--	if not faction then return end
	if not from then return end
	if not to then return end
	if not name then return end
	if not rep then return end
	if (type(rep) ~= "number") then return end
	if ((from<1) or (from>8)) then return end
	if ((to<1) or (to>8)) then return end
	if (from > to) then return end								--]]--
	if FIZ:Content(faction, from, to, name, rep) ~=1 then return end

	rep = rep * FIZ:InitFactor(FIZ_IsHuman,FIZ_faction)
	faction = string.lower(FIZ:InitFaction(FIZ_GuildName,faction))
	--- f_ain	FIZ:Printtest(faction,FIZ_faction,"inst")

	for standing = from,to do
		local faction_info = FIZ_FactionGain[faction]
		if not faction_info then
			faction_info = {}
			FIZ_FactionGain[faction] = faction_info
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
			 FIZ_TXT.heroic
		or
			FIZ_TXT.normal
		)
		FIZ:Debug("Added instance ["..name.."] for faction ["..faction.."] and standing [".._G["FACTION_STANDING_LABEL"..standing].."]")
	end
end

function FIZ_AddItems(faction, from, to, rep, itemList)

--[[--	if not faction then return end
	if not from then return end
	if not to then return end
	if not rep then return end
	if not itemList then return end
	if (type(rep) ~= "number") then return end
	if ((from<1) or (from>8)) then return end
	if ((to<1) or (to>8)) then return end
	if (from > to) then return end								--]]--
	if FIZ:Content(faction, from, to, itemList, rep) ~=1 then return end

	rep = rep * FIZ:InitFactor(FIZ_IsHuman,FIZ_faction)
	faction = string.lower(FIZ:InitFaction(FIZ_GuildName,faction))
	--- f_ait	FIZ:Printtest(faction,FIZ_faction,"item")

	local itemString = ""
	for standing = from,to do
		local faction_info = FIZ_FactionGain[faction]
		if not faction_info then
			faction_info = {}
			FIZ_FactionGain[faction] = faction_info
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
		FIZ:Debug("AddItem: Added items ["..itemString.."] for faction ["..faction.."] and standing [".._G["FACTION_STANDING_LABEL"..standing].."]")
	end
end

function FIZ_AddGeneral(faction, from, to, name, rep, head, tip, tipList, flag)

--[[--	if not faction then return end
	if not from then return end
	if not to then return end
	if not name then return end
	if not rep then return end
	if (type(rep) ~= "number") then return end
	if ((from<1) or (from>8)) then return end
	if ((to<1) or (to>8)) then return end
	if (from > to) then return end								--]]--
	if FIZ:Content(faction, from, to, name, rep) ~=1 then return end

	rep = rep * FIZ:InitFactor(FIZ_IsHuman,FIZ_faction)
	faction = string.lower(FIZ:InitFaction(FIZ_GuildName,faction))
	--- f_ag	FIZ:Printtest(faction,FIZ_faction,"gen") 
	local tipString = ""

	for standing = from,to do
		local faction_info = FIZ_FactionGain[faction]
		if not faction_info then
			faction_info = {}
			FIZ_FactionGain[faction] = faction_info
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
			name = FIZ_TXT.tfr
			head = FIZ_TXT.tfr
			tip = FIZ_TXT.nswts
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

		FIZ:Debug("AddGeneral: Added general rep gain ["..name.."] for faction ["..faction.."] and standing [".._G["FACTION_STANDING_LABEL"..standing].."] with tooltip ["..tipString.."]")
	end
end

-----------------------------------
-- _10_ New Hook Functions --
-----------------------------------
function FIZ_GetFactionInfo(factionIndex)

	-- get original information
	local name, description, standingID, barMin, barMax, barValue, atWarWith, canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild, factionID, hasBonusRepGain, canBeLFGBonus = FIZ_Orig_GetFactionInfo(factionIndex)

	-- Normalize Values to within standing
	local normMax = barMax-barMin
	local normCurrent = barValue-barMin

	-- add missing reputation
	if (FIZ_Data.ShowMissing and isHeader and not hasRep and ((normMax-normCurrent)>0)) then
		name = name.." ("..normMax-normCurrent..")"
	end

	-- return Values
	return name, description, standingID, barMin, barMax, barValue, atWarWith, canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild, factionID, hasBonusRepGain, canBeLFGBonus;
end
-- FIZ_RepFrame_Up Start
--- v rfl 1
function FIZ_ReputationFrame_Update() --rfl
	ReputationFrame.paragonFramesPool:ReleaseAll();
-- v rfl 1.1
	local numFactions
	if FIZ_Data.SortByStanding then
		FIZ:StandingSort()
		numFactions = FIZ_OBS_numFactions
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
	if (FIZ_Data.ShowMissing) then
		ReputationFrameStandingLabel:SetText(FIZ_Orig_StandingText.." "..FIZ_TXT.missing)
	else
		ReputationFrameStandingLabel:SetText(FIZ_Orig_StandingText)
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
		local factionBarPreview = _G["FIZ_StatusBar"..i];
-- ^ rfl 1.4
		if ( factionIndex <= numFactions ) then
-- v rfl _9_ rep Main window
			if FIZ_Data.SortByStanding then
				FIZ:SortByStanding(i,factionIndex,factionRow,factionBar,factionBarPreview,factionTitle,factionButton,factionStanding,factionBackground)
			else
				FIZ:OriginalRepOrder(i,factionIndex,factionRow,factionBar,factionBarPreview,factionTitle,factionButton,factionStanding,factionBackground)
			end
-- ^ rfl _9_ Rep Main Window
		else
			factionRow:Hide();
		end
	end
	if ( GetSelectedFaction() == 0 ) then
		ReputationDetailFrame:Hide();
-- v rfl 1.5
		FIZ_ReputationDetailFrame:Hide();
-- ^ rfl 1.5
	end
end
-- ^ rfl 1

function FIZ_ExpandFactionHeader(index)
	-- replaces ExpandFactionHeader
	---fpt f_efh	FIZ:Printtest(index,"","f_efh_1")							---fpt f_efh
	if not FIZ_Entries then return end
	if FIZ_Data.SortByStanding then
		if not FIZ_Entries[index] then return end
		FIZ_Collapsed[FIZ_Entries[index].i] = nil
		FIZ_ReputationFrame_Update()
	else
		FIZ_Orig_ExpandFactionHeader(index)
		--[[
		local name = FIZ_Orig_GetFactionInfo(index);
		FIZ_Data.OriginalCollapsed[name] = nil
		--FIZ:Print("Expanding original index "..tostring(index).." which is ["..tostring(name).."]")
		FIZ_ShowCollapsedList()
		]]--
	end
end

function FIZ_ReputationFrame_SetRowType(factionRow, isChild, isHeader, hasRep)
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
function FIZ_CollapseFactionHeader(index)
	-- replaces CollapseFactionHeader
	---fpt f_efh	FIZ:Printtest(index,"","f_cfh_1")							---fpt f_efh
	if not FIZ_Entries then return end

	if FIZ_Data.SortByStanding then
		if not FIZ_Entries[index] then return end
		FIZ_Collapsed[FIZ_Entries[index].i] = true
		FIZ_ReputationFrame_Update()
	else
		FIZ_Orig_CollapseFactionHeader(index)
		--[[
		local name = FIZ_Orig_GetFactionInfo(index);
		FIZ_Data.OriginalCollapsed[name] = true
		--FIZ:Print("Collapsing original index "..tostring(index).." which is ["..tostring(name).."]")
		FIZ_ShowCollapsedList()
		]]--
	end
end

function FIZ_ReputationBar_OnClick(self)
	-- redo from the main Reputation file
	if ((ReputationDetailFrame:IsVisible() or FIZ_ReputationDetailFrame:IsVisible()) and (GetSelectedFaction() == self.index) ) then
		PlaySound("igMainMenuOptionCheckBoxOff");
		ReputationDetailFrame:Hide();
		FIZ_ReputationDetailFrame:Hide();
	else
		if (self.hasRep) then
			PlaySound("igMainMenuOptionCheckBoxOn");
			FIZ_ReputationDetailFrame:Show();
			SetSelectedFaction(self.index);
			ReputationDetailFrame:Hide();
			FIZ_OptionsFrame:Hide()
			if (FIZ_Data.ExtendDetails) then
				FIZ:BuildUpdateList()
				FIZ_UpdateList_Update()
			end
			ReputationFrame_Update(); -- rfl Event
		end
	end
end


FIZ_UPDATE_LIST_HEIGHT = 13

function FIZ_UpdateList_Update()
	-- usually called In conjuction with FIZ:BuildUpdateList
	--fpt hed ful_u	FIZ:Printtest("","","ful_u 1")
	if (not FIZ_ReputationDetailFrame:IsVisible()) then return end

	FIZ_UpdateListScrollFrame:Show()
	FIZ_ShowQuestButton:SetChecked(FIZ_Data.ShowQuests)
	FIZ_ShowItemsButton:SetChecked(FIZ_Data.ShowItems)
	FIZ_ShowMobsButton:SetChecked(FIZ_Data.ShowMobs)
	FIZ_ShowInstancesButton:SetChecked(FIZ_Data.ShowInstances)
	FIZ_ShowGeneralButton:SetChecked(FIZ_Data.ShowGeneral)

	FIZ_ShowQuestButtonText:SetText(FIZ_TXT.showQuests)
	FIZ_ShowItemsButtonText:SetText(FIZ_TXT.showItems)
	FIZ_ShowMobsButtonText:SetText(FIZ_TXT.showMobs)
	FIZ_ShowInstancesButtonText:SetText(FIZ_TXT.showInstances)
	FIZ_ShowGeneralButtonText:SetText(FIZ_TXT.showGeneral)

	FIZ_ShowAllButton:SetText(FIZ_TXT.showAll)
	FIZ_ShowNoneButton:SetText(FIZ_TXT.showNone)
	FIZ_ExpandButton:SetText(FIZ_TXT.expand)
	FIZ_CollapseButton:SetText(FIZ_TXT.collapse)

	FIZ_SupressNoneFactionButton:SetText(FIZ_TXT.supressNoneFaction)
	FIZ_SupressNoneGlobalButton:SetText(FIZ_TXT.supressNoneGlobal)
	FIZ_ReputationDetailSuppressHint:SetText(FIZ_TXT.suppressHint)
	FIZ_ClearSessionGainButton:SetText(FIZ_TXT.clearSessionGain)

	local numEntries, highestVisible = FIZ:GetUpdateListSize()

	-- Update scroll frame
	if ( not FauxScrollFrame_Update(FIZ_UpdateListScrollFrame, numEntries, FIZ_UPDATE_LIST_HEIGHT, 16 ) ) then
		FIZ_UpdateListScrollFrameScrollBar:SetValue(0);
	end
	local entryOffset = FauxScrollFrame_GetOffset(FIZ_UpdateListScrollFrame);

	local entryIndex
	local entryFrameName, entryFrame, entryTexture
	local entryLabel, entryName, entryRep, entryTimes
	local entryItemTimes, entryItemName, entryItemTotal
	local postfix

	local haveInfo = false;
	entryIndex = 1
	local i = 0
	local max = FIZ:TableSize(FIZ_UpdateList)
	while(i<entryOffset and entryIndex<max) do
		if FIZ_UpdateList[entryIndex].isShown then
			i = i + 1
		end
		entryIndex = entryIndex + 1
	end
	for i=1, FIZ_UPDATE_LIST_HEIGHT, 1 do
		while ((entryIndex <= highestVisible) and not FIZ_UpdateList[entryIndex].isShown) do
			entryIndex = entryIndex + 1
		end
		if (entryIndex <= highestVisible) then
			haveInfo = true

			entryFrameName = "FIZ_UpdateEntry"..i
			entryFrame = _G[entryFrameName]
			entryTexture = _G[entryFrameName.."Texture"]

			entryLabel = _G[entryFrameName.."Label"]
			entryName = _G[entryFrameName.."Name"]
			entryRep = _G[entryFrameName.."Rep"]
			entryTimes = _G[entryFrameName.."Times"]

			entryItemTimes = _G[entryFrameName.."ItemTimes"]
			entryItemName = _G[entryFrameName.."ItemName"]
			entryItemTotal = _G[entryFrameName.."TotalTimes"]
			local F_UL_ei = FIZ_UpdateList[entryIndex]

			if (entryFrame) then
				entryFrame:Show()
				entryFrame.id = F_UL_ei.index
				entryFrame.tooltipHead = F_UL_ei.tooltipHead
				entryFrame.tooltipTip = F_UL_ei.tooltipTip
				entryFrame.tooltipDetails = F_UL_ei.tooltipDetails
			end

			local color = ""
			if (F_UL_ei.highlight) then
				color = FIZ_HIGHLIGHT_COLOUR
			elseif (F_UL_ei.suppress) then
				color = FIZ_SUPPRESS_COLOUR
			elseif (F_UL_ei.lowlight) then
				color = FIZ_LOWLIGHT_COLOUR
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
						entryTexture:SetTexture("Interface\\Addons\\Factionizer\\Textures\\UI-MinusButton-Up"..postfix..".tga")
					else
						entryTexture:SetTexture("Interface\\Addons\\Factionizer\\Textures\\UI-PlusButton-Up"..postfix..".tga")
					end
				else
					entryTexture:SetTexture("Interface\\Addons\\Factionizer\\Textures\\UI-EmptyButton-Up"..postfix..".tga")
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
			_G["FIZ_UpdateEntry"..i]:Hide()
		end
		if haveInfo then
			FIZ_NoInformationText:Hide()
		else
			FIZ_NoInformationText:SetText(FIZ_TXT.noInfo)
			FIZ_NoInformationText:Show()
		end
	end
end

function FIZ_MouseButtonUp(self, button)
	-- unkown call
	--fpt hed mbu	FIZ:Printtest("","","1 f_mbu")
	if (button and button == "LeftButton") then
		FIZ_UpdateEntryClick(self)
	elseif (button and button == "RightButton") then
		FIZ:UpdateEntrySuppress(self)
	end
end

function FIZ_UpdateEntryClick(self)
	-- sub function of FIZ_MouseButtonUp
	if (FIZ_UpdateList[self.id] and FIZ_UpdateList[self.id].hasList) then
		if (FIZ_UpdateList[self.id].listShown) then
			FIZ:ShowUpdateEntry(self.id, false)
		else
			FIZ:ShowUpdateEntry(self.id, true)
		end
	end
end

function FIZ:UpdateEntrySuppress(self)
	-- sub function of FIZ_UpdateEntryClick
	--fpt hed f_ues	FIZ:Printtest("","","f_ues 1")
	if (FIZ_UpdateList[self.id]) then
		if (FIZ_UpdateList[self.id].type ~= "") then
			if (FIZ_UpdateList[self.id].faction and FIZ_UpdateList[self.id].originalName) then
				if (not FIZ_Suppressed) then
					FIZ_Suppressed = {}
				end
				if (not FIZ_Suppressed[FIZ_UpdateList[self.id].faction]) then
					FIZ_Suppressed[FIZ_UpdateList[self.id].faction] = {}
				end
				if (FIZ_Suppressed[FIZ_UpdateList[self.id].faction][FIZ_UpdateList[self.id].originalName]) then
					--FIZ:Print("No longer suppressing ["..FIZ_UpdateList[self.id].faction.."]["..FIZ_UpdateList[self.id].originalName.."]");
					FIZ_Suppressed[FIZ_UpdateList[self.id].faction][FIZ_UpdateList[self.id].originalName] = nil
				else
					--FIZ:Print("Suppressing ["..FIZ_UpdateList[self.id].faction.."]["..FIZ_UpdateList[self.id].originalName.."]");
					FIZ_Suppressed[FIZ_UpdateList[self.id].faction][FIZ_UpdateList[self.id].originalName] = true
				end
				FIZ:BuildUpdateList()
			end
		end
	end
end

function FIZ:SupressNone(allFactions)
	-- unkown call
	--fpt hed sn	FIZ:Printtest("","","1 sn")
	if (allFactions == true) then
		FIZ_Suppressed = {}
		FIZ:BuildUpdateList()
	else
		local factionIndex = GetSelectedFaction()
		local faction = GetFactionInfo(factionIndex)

		if (faction) then
			faction = string.lower(faction)
	--- fpt sn	FIZ:Printtest(faction,FIZ_faction,"1 sn")
			if (FIZ_FactionMapping[faction]) then
	--- fpt sn	FIZ:Printtest(faction,FIZ_faction,"2 sn")
				faction = FIZ_FactionMapping[faction]
			end

			if (not FIZ_Suppressed) then
				FIZ_Suppressed = {}
			end
			FIZ_Suppressed[faction] = {}
		end
		FIZ:BuildUpdateList()
	end
end

-----------------------------------
-- _11_ Prepare update entries   --
-----------------------------------
function FIZ:Update_Tooltip(x, l1,r1)
	x=x+1
	local ToolTip_ID = {l = l1, r = r1}
--	print(x.." "..ToolTip_ID.l.." "..ToolTip_ID.r)
	return ToolTip_ID, x
end

function FIZ:BuildUpdateList() --xxx
	FIZ_UpdateList = {}
	FIZ_CurrentRepInBag = 0
	FIZ_CurrentRepInBagBank = 0
	FIZ_CurrentRepInQuest = 0
	local index = 1

	if (not FIZ_ReputationDetailFrame:IsVisible()) then
		return
	end

	local factionIndex = GetSelectedFaction()
	local faction, description, standingId, barMin, barMax, barValue = GetFactionInfo(factionIndex)

	if (faction) then
		origFaction = faction
		oFaction = string.lower(faction)
		faction = string.lower(faction)
		if (FIZ_FactionMapping[faction]) then
			faction = FIZ_FactionMapping[faction]
		end
		-- Normalize Values
		local normMax = barMax - barMin
		local normCurrent = barValue - barMin
		local repToNext = barMax - barValue
		if (FIZ_FactionGain[oFaction]) then
			local fg_sid=FIZ_FactionGain[oFaction][standingId]
			if (fg_sid) then
				-- instances
				if (fg_sid.instance and FIZ_Data.ShowInstances) then
					local fg_sid_x=fg_sid.instance
					for i = 0, fg_sid.instance.count do
						local fg_sid_x_d=fg_sid_x.data[i]
						if (not fg_sid_x_d.limit or (normCurrent < fg_sid_x_d.limit)) then
							local toDo = string.format("%.2f", repToNext / fg_sid_x_d.rep)
							if (fg_sid_x_d.limit) then
								toDo = string.format("%.2f", (fg_sid_x_d.limit - normCurrent) / fg_sid_x_d.rep)
							end --zzz
							FIZ_UpdateList[index] = {}
							local FUL_I = FIZ_UpdateList[index]
							local bul_name = FIZ:InitMapName(fg_sid_x_d.name)
							FUL_I.type = FIZ_TXT.instanceShort
							FUL_I.times = toDo.."x"
							FUL_I.rep = string.format("%d", fg_sid_x_d.rep)
							FUL_I.hasList = false
							FUL_I.listShown = nil
							FUL_I.index = index
							FUL_I.belongsTo = nil
							FUL_I.isShown = true
							FUL_I.name = bul_name.." ("..fg_sid_x_d.level..")"

							FUL_I.tooltipHead = FIZ_TXT.instanceHead
							FUL_I.tooltipTip = FIZ_TXT.instanceTip

							FUL_I.tooltipDetails = {}
							local FUL_I_TD = FUL_I.tooltipDetails
							local x = 0
							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.instance2, bul_name)
							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.mode, fg_sid_x_d.level)
							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.reputation, FUL_I.rep)
							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.timesToRun, FUL_I.times)
							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, " ", " ")
							FUL_I_TD[x] = FIZ:Update_Tooltip(x, FIZ_TXT.maxStanding, _G["FACTION_STANDING_LABEL"..fg_sid_x_d.maxStanding])
							FUL_I_TD.count = x
							FUL_I.tooltipDetails = FUL_I_TD
							FIZ_UpdateList[index] = FUL_I
							index = index + 1
						end
					end
				end

				-- mobs
				if (fg_sid.mobs and FIZ_Data.ShowMobs) then
					local fg_sid_x=fg_sid.mobs
					for i = 0, fg_sid_x.count do
					local fg_sid_x_d=fg_sid_x.data[i]
						if (not fg_sid_x_d.limit or (normCurrent < fg_sid_x_d.limit)) then
							local toDo = ceil(repToNext / fg_sid_x_d.rep)
							if (fg_sid_x_d.limit) then
								toDo = ceil((fg_sid_x_d.limit - normCurrent) / fg_sid_x_d.rep)
							end
							FIZ_UpdateList[index] = {}
							local FUL_I = FIZ_UpdateList[index]
							FUL_I.type = FIZ_TXT.mobShort
							FUL_I.times = toDo.."x"
							FUL_I.rep = string.format("%d", fg_sid_x_d.rep)
							FUL_I.hasList = false
							FUL_I.listShown = nil
							FUL_I.index = index
							FUL_I.belongsTo = nil
							FUL_I.isShown = true
							FUL_I.tooltipHead = FIZ_TXT.mobHead
							FUL_I.tooltipTip = FIZ_TXT.mobTip
							local bul_name = FIZ:InitMobName(fg_sid_x_d.name)
							if (fg_sid_x_d.zone) then
								local bul_zone = FIZ:InitMapName(fg_sid_x_d.zone)
								FUL_I.name = bul_name.." ("..bul_zone..")"
								FUL_I.tooltipDetails = {}
								local FUL_I_TD = FUL_I.tooltipDetails
								local x = 0
								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.mob2, bul_name)
								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.location, bul_zone)
								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.reputation, FUL_I.rep)
								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.toDo, FUL_I.times)
								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, " ", " ")
								FUL_I_TD[x] = FIZ:Update_Tooltip(x, FIZ_TXT.maxStanding, _G["FACTION_STANDING_LABEL"..fg_sid_x_d.maxStanding])
								FUL_I_TD.count = x
							else
								FUL_I.name = bul_name
								FUL_I_TD = {}
								local x = 0
								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.mob2, bul_name)
								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.reputation, FUL_I.rep)

								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.toDo, FUL_I.times)

								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, " ", " ")

								FUL_I_TD[x] = FIZ:Update_Tooltip(x, FIZ_TXT.maxStanding, _G["FACTION_STANDING_LABEL"..fg_sid_x_d.maxStanding])
								FUL_I_TD.count = x
								FUL_I.tooltipDetails = FUL_I_TD
							end
							FIZ_UpdateList[index] = FUL_I
							index = index + 1
						end
					end
				end

				-- quests (may have items)
				local sum = 0
				local count = 0
				if (fg_sid.quests and FIZ_Data.ShowQuests) then
					local fg_sid_x=fg_sid.quests
					for i = 0, fg_sid_x.count do
						local fg_sid_x_d=fg_sid_x.data[i]
						local showQuest = true
						if (fg_sid_x_d.profession) then
							local fg_sid_x_d_p=fg_sid_x_d.profession
							if ((fg_sid_x_d_p == FIZ_LIMIT_TYPE_Herb) and not FIZ_Herb) then
								-- if list of known professions does not contain Herbology
								showQuest = false
							elseif ((fg_sid_x_d_p == FIZ_LIMIT_TYPE_Skin) and not FIZ_Skin) then
								-- if list of known professions does not contain Herbology
								showQuest = false
							elseif ((fg_sid_x_d_p == FIZ_LIMIT_TYPE_Mine) and not FIZ_Mine) then
								-- if list of known professions does not contain Herbology
								showQuest = false
							elseif ((fg_sid_x_d_p == FIZ_LIMIT_TYPE_Gather) and not (FIZ_Herb or FIZ_Skin or FIZ_Mine)) then
								-- no gathering profession
								showQuest = false
							elseif ((fg_sid_x_d_p == FIZ_LIMIT_TYPE_Jewe) and not FIZ_Jewel) then
								-- if list of known professions does not contain jewelcrafting
								showQuest = false
							elseif ((fg_sid_x_d_p == FIZ_LIMIT_TYPE_Cook) and not FIZ_Cook) then
								-- if list of known professions does not contain jewelcrafting
								showQuest = false
							elseif ((fg_sid_x_d_p == FIZ_LIMIT_TYPE_Arch) and not FIZ_Arch) then
								-- if list of known professions does not contain jewelcrafting
								showQuest = false
							elseif ((fg_sid_x_d_p == FIZ_LIMIT_TYPE_Fish) and not FIZ_Fish) then
								-- if list of known professions does not contain jewelcrafting
								showQuest = false
							elseif ((fg_sid_x_d_p == FIZ_LIMIT_TYPE_Aid) and not FIZ_Aid) then
								-- if list of known professions does not contain jewelcrafting
								showQuest = false
							elseif ((fg_sid_x_d_p == FIZ_LIMIT_TYPE_Blac) and not FIZ_Black) then
								-- if list of known professions does not contain BLACKsmith
								showQuest = false
							elseif ((fg_sid_x_d_p == FIZ_LIMIT_TYPE_Tail) and not FIZ_Tailor) then
								-- if list of known professions does not contain tailor
								showQuest = false
							elseif ((fg_sid_x_d_p == FIZ_LIMIT_TYPE_Leat) and not FIZ_Leath) then
								-- if list of known professions does not contain leather
								showQuest = false
							elseif ((fg_sid_x_d_p == FIZ_LIMIT_TYPE_Ench) and not FIZ_Enchan) then
								-- if list of known professions does not contain enchanter
								showQuest = false
							elseif ((fg_sid_x_d_p == FIZ_LIMIT_TYPE_Engi) and not FIZ_Engin) then
								-- if list of known professions does not contain BLACKsmith
								showQuest = false
							elseif ((fg_sid_x_d_p == FIZ_LIMIT_TYPE_Incr) and not FIZ_Incrip) then
								-- if list of known professions does not contain leather
								showQuest = false
							elseif ((fg_sid_x_d_p == FIZ_LIMIT_TYPE_Alch) and not FIZ_Alche) then
								-- if list of known professions does not contain enchanter
								showQuest = false
							else
								-- unexpected limit -> ignore this and still show quest ggg
							end
						end

					if (showQuest) then
						if (not fg_sid_x_d.limit or (normCurrent < fg_sid_x_d.limit)) then
							local toDo = ceil(repToNext / fg_sid_x_d.rep)
							if (fg_sid_x_d.limit) then
								toDo = ceil((fg_sid_x_d.limit - normCurrent) / fg_sid_x_d.rep)
							end
							FIZ_UpdateList[index] = {}
							local FUL_I = FIZ_UpdateList[index]
							FUL_I.type = FIZ_TXT.questShort
							FUL_I.times = toDo.."x"
							FUL_I.rep = string.format("%d", fg_sid_x_d.rep)
							FUL_I.index = index
							FUL_I.belongsTo = nil
							FUL_I.isShown = true
							local bul_name = FIZ:Quest_Names(fg_sid_x_d.name)
							FUL_I.name = bul_name
							FUL_I.originalName = FUL_I.name

							FUL_I.tooltipHead = FIZ_TXT.questHead
							FUL_I.tooltipTip = FIZ_TXT.questTip

							FUL_I.faction = faction
							FUL_I.canSuppress = true
							FUL_I.suppress = nil
							if (FIZ_Suppressed and FIZ_Suppressed[oFaction] and FIZ_Suppressed[oFaction][FUL_I.originalName]) then
								FUL_I.suppress = true
							end

							FUL_I.tooltipDetails = {}
							local FUL_I_TD = FUL_I.tooltipDetails
							local x = 0
							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.quest2, FUL_I.name)
							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.reputation, FUL_I.rep)
							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.toDo, FUL_I.times)
							if (not FUL_I.suppress) then
								sum = sum + fg_sid_x_d.rep
								count = count + 1
							end

							if (fg_sid_x_d.items) then
								FUL_I.hasList = true
								FUL_I.listShown = false
								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, " ", " ")
								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.itemsRequired, " ")
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
											FUL_I.name = FUL_I.name..FIZ_QUEST_ACTIVE_COLOUR.." ("..FIZ_TXT.active..")|r"
										end
									end
								end

								-- add items
								local itemIndex = index+1
								local currentQuestTimesBag = -1
								local currentQuestTimesBagBank = -1

								for item in pairs(fg_sid_x_d.items) do
									FIZ_UpdateList[itemIndex] = {}
									local FUL_II = FIZ_UpdateList[itemIndex]
									FUL_II.type = ""
									FUL_II.times = (fg_sid_x_d.items[item] * toDo).."x"
									FUL_II.rep = nil
									FUL_II.index = itemIndex
									FUL_II.belongsTo = index
									FUL_II.hasList = nil
									FUL_II.listShown = nil
									FUL_II.isShown = FUL_I.listShown
									FUL_II.name = FIZ:InitItemName(item).." ("..fg_sid_x_d.items[item].."x)"

									FUL_I_TD[x], x = FIZ:Update_Tooltip(x, fg_sid_x_d.items[item].."x", FIZ:InitItemName(item))

									FUL_II, currentQuestTimesBag, currentQuestTimesBagBank = FIZ:Quest_Items(fg_sid_x_d.items[item], currentQuestTimesBag, currentQuestTimesBagBank, FUL_II, item)

									FIZ_UpdateList[itemIndex] = FUL_II					--come here
									itemIndex = itemIndex + 1
								end
								if (currentQuestTimesBag > 0) then
									FUL_I.highlight = true
									FUL_I.lowlight = nil
									FUL_I.name = FUL_I.name..FIZ_BAG_COLOUR.." ["..currentQuestTimesBag.."x]|r"
									FUL_I.currentTimesBag = currentQuestTimesBag
									FUL_I.currentRepBag = currentQuestTimesBag * FUL_I.rep
									FIZ_CurrentRepInBag = FIZ_CurrentRepInBag + FUL_I.currentRepBag
									FUL_I.name = FUL_I.originalName
									FUL_I_TD[x], x = FIZ:Update_Tooltip(x, " ", " ")
									FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.inBag, " ")
									FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.turnIns, string.format("%d", FUL_I.currentTimesBag))
									FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.reputation, string.format("%d", FUL_I.currentRepBag))
								else
									FUL_I.currentTimesBag = nil
									FUL_I.currentRepBag = nil

								end
								if (currentQuestTimesBagBank > 0) then
									FUL_I.name = FUL_I.name..FIZ_BAG_BANK_COLOUR.." ["..currentQuestTimesBagBank.."x]|r"
									FUL_I.currentTimesBagBank = currentQuestTimesBagBank
									FUL_I.currentRepBagBank = currentQuestTimesBagBank * FUL_I.rep
									FUL_I.highlight = true
									FUL_I.name = FUL_I.originalName
									FUL_I.lowlight = nil
									FIZ_CurrentRepInBagBank = FIZ_CurrentRepInBagBank + FUL_I.currentRepBagBank
									FUL_I_TD[x], x = FIZ:Update_Tooltip(x, " ", " ")
									FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.inBagBank, " ")
									FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.turnIns, string.format("%d", FUL_I.currentTimesBagBank))
									FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.reputation, string.format("%d", FUL_I.currentRepBagBank))
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
												FUL_I.name = FUL_I.name..FIZ_QUEST_COLOUR.." ("..FIZ_TXT.complete..")|r"
												FUL_I.currentTimesQuest = 1
												FUL_I.currentRepQuest = FUL_I.rep
												FIZ_CurrentRepInQuest = FIZ_CurrentRepInQuest + fg_sid_x_d.rep

												FUL_I_TD[x], x = FIZ:Update_Tooltip(x, " ", " ")
												FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.questCompleted, " ")
												FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.reputation, string.format("%d", FUL_I.currentRepQuest))
											else
												FUL_I.lowlight = true
												FUL_I.name = FUL_I.name..FIZ_QUEST_ACTIVE_COLOUR.." ("..FIZ_TXT.active..")|r"
											end
										end
									end
								end
							index = index + 1
							end

							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, " ", " ")
							FUL_I_TD[x] = FIZ:Update_Tooltip(x, FIZ_TXT.maxStanding, _G["FACTION_STANDING_LABEL"..fg_sid_x_d.maxStanding])
							FUL_I_TD.count = x
						end
					end
				end
				if ((sum > 0) and (count > 1)) then
					-- add virtual quest to show summary of all quests:
					local toDo = ceil(repToNext / sum)
					FIZ_UpdateList[index] = {}
					local FUL_I = FIZ_UpdateList[index]
					FUL_I.type = FIZ_TXT.questShort
					FUL_I.times = toDo.."x"
					FUL_I.rep = string.format("%d", sum)
					FUL_I.index = index
					FUL_I.belongsTo = nil
					FUL_I.isShown = true
					FUL_I.name = string.format(FIZ_TXT.allOfTheAbove, count)
					FUL_I.tooltipHead = string.format(FIZ_TXT.questSummaryHead, count)
					FUL_I.tooltipTip = FIZ_TXT.questSummaryTip

					FUL_I_TD = {}
					local x = 0
					FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.reputation, FUL_I.rep)

					FUL_I_TD[x], x  = FIZ:Update_Tooltip(x, FIZ_TXT.timesToDo, FUL_I.times)
					FUL_I_TD.count = x-1
					FUL_I.tooltipDetails = FUL_I_TD
					FIZ_UpdateList[index] = FUL_I
					index = index + 1
				end
			end

			-- items
			if (fg_sid.items and FIZ_Data.ShowItems) then
				local fg_sid_x=fg_sid.items
				for i = 0, fg_sid_x.count do
					local fg_sid_x_d=fg_sid_x.data[i]
					if (not fg_sid_x_d.limit or (normCurrent < fg_sid_x_d.limit)) then
						local toDo = ceil(repToNext / fg_sid_x_d.rep)
						if (fg_sid_x_d.limit) then
							toDo = ceil((fg_sid_x_d.limit - normCurrent) / fg_sid_x_d.rep)
						end
						if (fg_sid_x_d.items) then
							FIZ_UpdateList[index] = {}
							local FUL_I = FIZ_UpdateList[index]
							FUL_I.type = FIZ_TXT.itemsShort
							FUL_I.times = toDo.."x"
							FUL_I.rep = string.format("%d", fg_sid_x_d.rep)
							FUL_I.index = index
							FUL_I.belongsTo = nil
							FUL_I.isShown = true
							FUL_I.name = FIZ_TXT.itemsName
							FUL_I.hasList = true
							FUL_I.listShown = false
							FUL_I.tooltipHead = FIZ_TXT.itemsHead
							FUL_I.tooltipTip = FIZ_TXT.itemsTip

							FUL_I.tooltipDetails = {}
							local FUL_I_TD = FUL_I.tooltipDetails
							local x = 0

							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FUL_I.name, " ")
							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, " ", " ")
							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.itemsRequired, " ")

							-- add items
							local itemIndex = index+1

							local currentQuestTimesBag = -1
							local currentQuestTimesBagBank = -1
							for item in pairs(fg_sid_x_d.items) do
								FIZ_UpdateList[itemIndex] = {}
								local FUL_II = FIZ_UpdateList[itemIndex]
								FUL_II.type = ""
								FUL_II.times = (fg_sid_x_d.items[item] * toDo).."x"
								FUL_II.rep = nil
								FUL_II.index = itemIndex
								FUL_II.belongsTo = index
								FUL_II.hasList = nil
								FUL_II.listShown = nil
								FUL_II.isShown = FUL_I.listShown
								FUL_II.name = FIZ:InitItemName(item).." ("..fg_sid_x_d.items[item].."x)"

								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, fg_sid_x_d.items[item].."x", FIZ:InitItemName(item))

								FUL_II, currentQuestTimesBag, currentQuestTimesBagBank = FIZ:Quest_Items(fg_sid_x_d.items[item], currentQuestTimesBag, currentQuestTimesBagBank, FUL_II, item)

								FIZ_UpdateList[itemIndex] = FUL_II
								itemIndex = itemIndex + 1
							end
							if (currentQuestTimesBag > 0) then
								FUL_I.highlight = true
								FUL_I.lowlight = nil
								FUL_I.name = FUL_I.name..FIZ_BAG_COLOUR.." ["..currentQuestTimesBag.."x]|r"
								FUL_I.currentTimesBag = currentQuestTimesBag
								FUL_I.currentRepBag = currentQuestTimesBag * FUL_I.rep
								FIZ_CurrentRepInBag = FIZ_CurrentRepInBag + FUL_I.currentRepBag

								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, " ", " ")
								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.inBag, " ")
								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.turnIns, string.format("%d", FUL_I.currentTimesBag))
								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.reputation, string.format("%d", FUL_I.currentRepBag))
							else
								FUL_I.currentTimesBag = nil
								FUL_I.currentRepBag = nil
								FUL_I.highlight = nil
							end
							if (currentQuestTimesBagBank > 0) then
								FUL_I.highlight = true
								FUL_I.lowlight = nil
								FUL_I.name = FUL_I.name..FIZ_BAG_BANK_COLOUR.." ["..currentQuestTimesBagBank.."]|r"
								FUL_I.currentTimesBagBank = currentQuestTimesBagBank

								FUL_I.currentRepBagBank = currentQuestTimesBagBank * FUL_I.rep
								FIZ_CurrentRepInBagBank = FIZ_CurrentRepInBagBank + FUL_I.currentRepBagBank

								FUL_I_TD[x] = {}
								if (not FIZ_UpdateList[index].hasList) then return end	-- not a list Header entry

								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, " ", " ")
								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.inBagBank, " ")
								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.turnIns, string.format("%d", FUL_I.currentTimesBagBank))
								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.reputation, string.format("%d", FUL_I.currentRepBagBank))
							else
								FUL_I.currentTimesBagBank = nil
								FUL_I.currentRepBagBank = nil
								FUL_I.highlight = nil
							end
							if ((currentQuestTimesBag == 0) and (currentQuestTimesBagBank)) then
								FUL_I.highlight = nil
							end

							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, " ", " ")
							FUL_I_TD[x] = FIZ:Update_Tooltip(x, FIZ_TXT.maxStanding, _G["FACTION_STANDING_LABEL"..fg_sid_x_d.maxStanding])

							FUL_I_TD.count = x
							FUL_I.tooltipDetails = FUL_I_TD
							FIZ_UpdateList[index] = FUL_I
							index = itemIndex
						end
					end
				end
			end
				-- General
				if (fg_sid.general and FIZ_Data.ShowGeneral) then
					local fg_sid_x=fg_sid.general
					for i = 0, fg_sid_x.count do
						local fg_sid_x_d=fg_sid_x.data[i]
						if (not fg_sid_x_d.limit or (normCurrent < fg_sid_x_d.limit)) then
							local toDo = string.format("%.2f", repToNext / fg_sid_x_d.rep)
							if (fg_sid_x_d.limit) then
								toDo = string.format("%.2f", (fg_sid_x_d.limit - normCurrent) / fg_sid_x_d.rep)
							end
							-- calculate Number of times to do differently for Guild cap
							FIZ_UpdateList[index] = {}
							local FUL_I = FIZ_UpdateList[index]
							FUL_I.type = FIZ_TXT.generalShort
							FUL_I.times = toDo.."x"
							FUL_I.rep = string.format("%d", fg_sid_x_d.rep)
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
								FUL_I.tooltipHead = FIZ_TXT.generalHead
							end
							if (fg_sid_x_d.tip and fg_sid_x_d.tip ~= "") then
								FUL_I.tooltipTip = fg_sid_x_d.tip
							else
								FUL_I.tooltipTip = FIZ_TXT.generalTip
							end

							FUL_I.tooltipDetails = {}
							local FUL_I_TD = FUL_I.tooltipDetails
							local x = 0
							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.general2, bul_name)
							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.reputation, FUL_I.rep)
							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, FIZ_TXT.timesToRun, FUL_I.times)
							FUL_I_TD[x], x = FIZ:Update_Tooltip(x, " ", " ")
							if (fg_sid_x_d.tipList) then
								for tip in pairs(fg_sid_x_d.tipList) do

									FUL_I_TD[x], x = FIZ:Update_Tooltip(x, tip, fg_sid_x_d.tipList[tip])
								end
								FUL_I_TD[x], x = FIZ:Update_Tooltip(x, " ", " ")

							end
							FUL_I_TD[x] = FIZ:Update_Tooltip(x, FIZ_TXT.maxStanding, _G["FACTION_STANDING_LABEL"..fg_sid_x_d.maxStanding])
							FUL_I_TD.count = x
							local FUL_I_TD = FUL_I.tooltipDetails
							FIZ_UpdateList[index] = FUL_I
							index = index + 1

						end
					end
				end
			end
		end
	end

	--FIZ:Print("Added "..(index-1).." entries for ["..faction.."] at standing "..standingId)

	FIZ_UpdateList_Update()
end

function FIZ:Quest_Items(itemsNeed, currentQuestTimesBag, currentQuestTimesBagBank, QuestItem, item)
	if not QuestItem.times then 
		QuestItem = {}
		QuestItem.name = "James"
	end
	if (GetItemCount(item, true)==0) then
		-- not enough of this item for quest -> set to 0
		currentQuestTimesBag = 0
	else
		local itemBag = GetItemCount(item)
		local itemTotal = GetItemCount(item, true)
		local itemBank = itemTotal - itemBag
		if ((itemBag >= itemsNeed) and (itemsNeed > 0)) then
			QuestItem.currentTimesBag = floor(itemBag / itemsNeed)
			QuestItem.name = QuestItem.name..FIZ_BAG_COLOUR.." ["..itemBag.."x]|r"
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
		if itemBank then
			if ((itemTotal >= itemsNeed) and (itemsNeed > 0)) then
				QuestItem.name = QuestItem.name..FIZ_BAG_BANK_COLOUR.." ["..itemTotal.."x]|r"
				QuestItem.currentTimesBagBank = floor(itemTotal / itemsNeed)
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

function FIZ:GetUpdateListSize()
	-- sub function of	FIZ_UpdateList_Update()
	--fpt hed f_guls	FIZ:Printtest("","","f_guls 1")
	local count = 0
	local highest = 0
	for i in pairs(FIZ_UpdateList) do
		if (FIZ_UpdateList[i].isShown) then
			count = count + 1
			if (i > highest) then
				highest = i
			end
		end
	end

	return count, highest
end

function FIZ:ShowUpdateEntry(index, show)
	--fpt hed f_sue	FIZ:Printtest("","","f_sue 1")
	if (not FIZ_UpdateList[index]) then return end		-- invalid index
	if (not FIZ_UpdateList[index].hasList) then return end	-- not a list Header entry
	if (type(show)~="boolean") then return end		-- wrong data type

	FIZ_UpdateList[index].listShown = show
	for i in pairs(FIZ_UpdateList) do
		if (FIZ_UpdateList[i].belongsTo == index) then
			FIZ_UpdateList[i].isShown = show
		end
	end

	FIZ_UpdateList_Update()
end

function FIZ_ShowUpdateEntries(show)
	if (type(show)~="boolean") then return end		-- wrong data type

	for i in pairs(FIZ_UpdateList) do
		if (FIZ_UpdateList[i].belongsTo == nil) then
			-- always show parent entries, show or Hide their children
			FIZ_UpdateList[i].isShown = true
			FIZ_UpdateList[i].listShown = show
		else
			-- show or Hide child entries
			FIZ_UpdateList[i].isShown = show
		end
	end

	FIZ_UpdateList_Update()
end

function FIZ_ShowLineToolTip(self)
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

function FIZ_ShowHelpToolTip(self, element)
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
	if (FIZ_TXT.elements and
		FIZ_TXT.elements.name and
		FIZ_TXT.elements.tip and
		FIZ_TXT.elements.name[name] and
		FIZ_TXT.elements.tip[name]) then
		tip = FIZ_TXT.elements.tip[name]
		head = FIZ_TXT.elements.name[name]

		if (FIZ_Data.needsTip and FIZ_Data.needsTip[name]) then
			FIZ_Data.needsTip[name] = nil
		end
	else
		if (not FIZ_Data.needsTip) then
			FIZ_Data.needsTip = {}
		end
		FIZ_Data.needsTip[name] = true
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
function FIZ:DumpReputationChangesToChat(initOnly)
	if not FIZ_StoredRep then FIZ_StoredRep = {} end

	local numFactions = GetNumFactions();
	local factionIndex, watchIndex, watchedIndex, watchName
	local name, standingID, barMin, barMax, barValue, isHeader, hasRep
	local RepRemains

	watchIndex = 0
	watchedIndex = 0
	watchName = nil
	for factionIndex=1, numFactions, 1 do
		name, _, standingID, barMin, barMax, barValue, _, _, isHeader, _, hasRep, isWatched = GetFactionInfo(factionIndex)

		--if (not isHeader) then
		if (not isHeader or hasRep) then
			if (isWatched) then
				watchedIndex = factionIndex
			end
			if FIZ_StoredRep[name] and not initOnly then
				if (FIZ_Data.WriteChatMessage) then
					if (not FIZ_Data.NoGuildGain or name ~= FIZ_GuildName) then
						local sign=""
						if ((barValue-FIZ_StoredRep[name].origRep)>0) then
							sign = "+"
						end
						if (barValue > FIZ_StoredRep[name].rep) then
							-- increased rep
							FIZ:Print(FIZ_NEW_REP_COLOUR..string.format(FACTION_STANDING_INCREASED..FIZ_TXT.stats, name, barValue-FIZ_StoredRep[name].rep, sign, barValue-FIZ_StoredRep[name].origRep, barMax-barValue))
						elseif (barValue < FIZ_StoredRep[name].rep) then
							FIZ:Print(FIZ_NEW_REP_COLOUR..string.format(FACTION_STANDING_DECREASED..FIZ_TXT.stats, name, FIZ_StoredRep[name].rep-barValue, sign, barValue-FIZ_StoredRep[name].origRep, barMax-barValue))
							-- decreased rep
						end
						if (FIZ_StoredRep[name].standingID ~= standingID) then
							FIZ:Print(FIZ_NEW_STANDING_COLOUR..string.format(FACTION_STANDING_CHANGED, _G["FACTION_STANDING_LABEL"..standingID], name))
						end
					end
				end
				if (FIZ_Data.SwitchFactionBar) then
					if (not FIZ_Data.NoGuildSwitch or name ~= FIZ_GuildName) then
						if (barValue > FIZ_StoredRep[name].rep) then
							--FIZ:Print("Marking faction ["..tostring(name).."] index ["..tostring(factionIndex).."] for rep watch bar")
							watchIndex = factionIndex
							watchName = name
						--elseif (barValue ~= FIZ_StoredRep[name].rep) then
							--FIZ:Print("Faction ["..tostring(name).."] lost rep")
						end
					end
				end
			else
				FIZ_StoredRep[name] = {}
				FIZ_StoredRep[name].origRep = barValue
			end
			FIZ_StoredRep[name].standingID = standingID
			FIZ_StoredRep[name].rep = barValue
		end
	end
	if (watchIndex > 0) then
		if (watchIndex ~= watchedIndex) then
			if (not FIZ_Data.SilentSwitch) then
				FIZ:Print(FIZ_Help_COLOUR..FIZ_NAME..":|r "..FIZ_TXT.switchBar.." ["..tostring(watchName).."|r]")
			end
		end
		-- choose Faction to show
		SetWatchedFactionIndex(watchIndex)
		ReputationFrame_Update(); -- rfl functions
	end
end

function FIZ:ClearSessionGain()
	local factionIndex = GetSelectedFaction()
	local name, _, standingID, barMin, barMax, barValue, _, _, isHeader, _, hasRep, isWatched = GetFactionInfo(factionIndex)

	if (name) then
		FIZ_StoredRep[name] = {}
		FIZ_StoredRep[name].origRep = barValue
		FIZ_StoredRep[name].standingID = standingID
		FIZ_StoredRep[name].rep = barValue
	end
	FIZ_ReputationFrame_Update()
end

-----------------------------------
-- _13_ chat filtering
-----------------------------------

--function FIZ_ChatFrame_OnEvent(self, event, ...)
function FIZ_ChatFilter(chatFrame, event, ...) -- chatFrame = self
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
	if (FIZ_Data.SuppressOriginalChat and event) then

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
function FIZ:ToggleConfigWindow()
	--- fpt f_tcw	FIZ:Printtest("f_tcw","","")
	if ReputationFrame:IsVisible() then
		if FIZ_OptionsFrame:IsVisible() then
			-- both windows shown -> hide them both
			FIZ_OptionsFrame:Hide()
			HideUIPanel(CharacterFrame)
		else
			-- options window not shown -> show, hide any detail window
			FIZ_OptionsFrame:Show()
			FIZ_ReputationDetailFrame:Hide();
			ReputationDetailFrame:Hide();
		end
	else
		-- window not shown -> show both
		ToggleCharacter("ReputationFrame")
		FIZ_ReputationDetailFrame:Hide();
		ReputationDetailFrame:Hide();
		FIZ_OptionsFrame:Show()
	end
end

function FIZ:ToggleDetailWindow()
	--- fpt f_tdw	FIZ:Printtest("f_tdw","","")
	if ReputationFrame:IsVisible() then
		if (FIZ_Data.ExtendDetails) then
			if FIZ_ReputationDetailFrame:IsVisible() then
				-- both windows shown -> hide them both
				FIZ_ReputationDetailFrame:Hide()
				HideUIPanel(CharacterFrame)
			else
				-- detail window not shown -> show it, hide any others
				FIZ_ReputationDetailFrame:Show()
				ReputationDetailFrame:Hide();
				FIZ_OptionsFrame:Hide();
				ReputationFrame_Update(); -- rfl Event
			end
		else
			if ReputationDetailFrame:IsVisible() then
				-- both windows shown -> hide them both
				ReputationDetailFrame:Hide()
				HideUIPanel(CharacterFrame)
			else
				-- detail window not shown -> show it, hide any others
				FIZ_ReputationDetailFrame:Hide()
				ReputationDetailFrame:Show();
				FIZ_OptionsFrame:Hide();
				ReputationFrame_Update(); -- rfl Event
			end
		end
	else
		-- window not shown -> show both
		ToggleCharacter("ReputationFrame")
		if (FIZ_Data.ExtendDetails) then
			FIZ_ReputationDetailFrame:Show();
		else
			ReputationDetailFrame:Show();
		end
		FIZ_OptionsFrame:Hide()
		ReputationFrame_Update(); -- rfl Event
	end
end



-----------------------------------
-- _14_ Testing
-----------------------------------


function FIZ_Test()

	if (FIZ_GuildFactionBar:GetParent()) then
		FIZ:Print("FIZ_GuildFactionBar parent: "..tostring(FIZ_GuildFactionBar:GetParent():GetName()))
	else
		FIZ:Print("FIZ_GuildFactionBar has no parent")
	end

	if (FIZ_GuildFactionBarCapHeader:GetParent()) then
		FIZ:Print("FIZ_GuildFactionBarCapHeader parent: "..tostring(FIZ_GuildFactionBarCapHeader:GetParent():GetName()))
	else
		FIZ:Print("FIZ_GuildFactionBarCapHeader has no parent")
	end
	if (FIZ_GuildFactionBarCapText:GetParent()) then
		FIZ:Print("FIZ_GuildFactionBarCapText parent: "..tostring(FIZ_GuildFactionBarCapText:GetParent():GetName()))
	else
		FIZ:Print("FIZ_GuildFactionBarCapText has no parent")
	end
	if (FIZ_GuildFactionBarCapMarker:GetParent()) then
		FIZ:Print("FIZ_GuildFactionBarCapMarker parent: "..tostring(FIZ_GuildFactionBarCapMarker:GetParent():GetName()))
	else
		FIZ:Print("FIZ_GuildFactionBarCapMarker has no parent")
	end
	if (FIZ_GuildFactionBarBaseMarker:GetParent()) then
		FIZ:Print("FIZ_GuildFactionBarBaseMarker parent: "..tostring(FIZ_GuildFactionBarBaseMarker:GetParent():GetName()))
	else
		FIZ:Print("FIZ_GuildFactionBarBaseMarker has no parent")
	end
end

-------------------------------------------
-- _15_ Getting reputation ready to hand In
-------------------------------------------
function FIZ:GetReadyReputation(factionIndex)
	local result = 0
	return result end	--[[-- curently disabled 
	if not factionIndex then return result end

	if (not ReputationFrame:IsVisible()) then return result end

	local maxFactionIndex = GetNumFactions()
	if (factionIndex > maxFactionIndex) then return result end

	local faction, description, standingId, barMin, barMax, barValue, atWarWith, canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild = FIZ_Orig_GetFactionInfo(factionIndex)
	if (isHeader) then return result end

	if (faction) then
		origFaction = faction
		faction = string.lower(faction)
		if (FIZ_FactionMapping[faction]) then
			faction = FIZ_FactionMapping[faction]
		end

		-- Normalize Values
		local normMax = barMax - barMin
		local normCurrent = barValue - barMin
		local repToNext = barMax - barValue

		local FIZ_FG_f=FIZ_FactionGain[faction]
		if (FIZ_FG_f) then
		local FIZ_FG_fs=FIZ_FG_f[standingId]
			if (FIZ_FG_fs) then

				-- quests (may have items)
				local FIZ_FG_fs_h=FIZ_FG_fs.quests
				if (FIZ_FG_fs_h) then
					for i = 0, FIZ_FG_fs_h.count do
					local FIZ_FG_fs_h_d=FIZ_FG_fs_h.data[i]
						if (not FIZ_FG_fs_h_d.limit or (normCurrent < FIZ_FG_fs_h_d.limit)) then
							local toDo = ceil(repToNext / FIZ_FG_fs_h_d.rep)
							if (FIZ_FG_fs_h_d.limit) then
								toDo = ceil((FIZ_FG_fs_h_d.limit - normCurrent) / FIZ_FG_fs_h_d.rep)
							end

							if (FIZ_FG_fs_h_d.items) then
								local currentQuestTimesBag = -1
								local currentQuestTimesBagBank = -1
								for item in pairs(FIZ_FG_fs_h_d.items) do
								_,currentQuestTimesBag, currentQuestTimesBagBank = FIZ:Quest_Items(FIZ_FG_fs_h_d.items[item], currentQuestTimesBag, currentQuestTimesBagBank, "nil", item)
								end
								if (currentQuestTimesBag > toDo) then
									currentQuestTimesBag = toDo
								end
								if (currentQuestTimesBagBank > toDo) then
									currentQuestTimesBagBank = toDo
								end
								if (currentQuestTimesBagBank > 0) then
									result = result + currentQuestTimesBagBank * FIZ_FG_fs_h_d.rep
								elseif (currentQuestTimesBag > 0) then
									result = result + currentQuestTimesBag * FIZ_FG_fs_h_d.rep
								else
									-- nothing to add
								end
							else
								-- no items, check if this quest is completed
								local entries, quests = GetNumQuestLogEntries()
								for z=1,entries do
									local title,level,tag,group,header,collapsed,complete,daily = GetQuestLogTitle(z)
									if (title and not header and complete) then
										if string.find(string.lower(FIZ:Quest_Names(FIZ_FG_fs_h_d.name)), string.lower(title)) then
											-- this quest matches
											result = result + FIZ_FG_fs_h_d.rep
										end
									end
								end
							end
						end
					end
				end

				-- items
				local FIZ_FG_fs_h=FIZ_FG_fs.items
				if (FIZ_FG_fs_h and FIZ_Data.ShowItems) then
					for i = 0, FIZ_FG_fs_h.count do
					local FIZ_FG_fs_h_d=FIZ_FG_fs_h.data[i]
						if (not FIZ_FG_fs_h_d.limit or (normCurrent < FIZ_FG_fs_h_d.limit)) then
							local toDo = ceil(repToNext / FIZ_FG_fs_h_d.rep)
							if (FIZ_FG_fs_h_d.limit) then
								toDo = ceil((FIZ_FG_fs_h_d.limit - normCurrent) / FIZ_FG_fs_h_d.rep)
							end
							if (FIZ_FG_fs_h_d.items) then
								local currentQuestTimesBag = -1
								local currentQuestTimesBagBank = -1
								for item in pairs(FIZ_FG_fs_h_d.items) do
								_,currentQuestTimesBag, currentQuestTimesBagBank = FIZ:Quest_Items(FIZ_FG_fs_h_d.items[item], currentQuestTimesBag, currentQuestTimesBagBank, "nil", item)
								end
								if (currentQuestTimesBag > toDo) then
									currentQuestTimesBag = toDo
								end
								if (currentQuestTimesBagBank > toDo) then
									currentQuestTimesBagBank = toDo
								end
								if (currentQuestTimesBagBank > 0) then
									result = result + currentQuestTimesBagBank * FIZ_FG_fs_h_d.rep
								elseif (currentQuestTimesBag > 0) then
									result = result + currentQuestTimesBag * FIZ_FG_fs_h_d.rep
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
function FIZ:StandingSort()
-- del	local name, description, standingID, barMin, barMax, barValue, atWarWith, canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild, factionID, hasBonusRepGain, canBeLFGBonus;
	local standings = {}
	local numFactions = GetNumFactions();

	for i=1,numFactions do
		local name, description, standingID, _, barMax, barValue, _, _, isHeader, _, hasRep, isWatched, isChild, factionID, hasBonusRepGain, canBeLFGBonus= GetFactionInfo(i);

		--if (not isHeader) then only list factions, not Faction groups headers
		if (not isHeader or hasRep) then
			if not standings[standingID] then
				standings[standingID] = {}
			end
			local size = FIZ:TableSize(standings[standingID])
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
	FIZ_Entries = {}
	if (not FIZ_Collapsed) then
		FIZ_Collapsed = {}
	end
	for i=8,1, -1 do
	--for i In pairs(standings) do
		if FIZ:TableSize(standings[i]) then
			if (standings[i]) then
				numFactions = numFactions + 1 -- count standing as header
				FIZ_Entries[numFactions] = {}
				FIZ_Entries[numFactions].header = true
				FIZ_Entries[numFactions].i = i	-- this is the standingID
				FIZ_Entries[numFactions].size = FIZ:TableSize(standings[i]) -- this is the number of factions with this standing
				if (not FIZ_Collapsed[i]) then
					for j in pairs(standings[i]) do
						numFactions = numFactions + 1 -- count each faction in the current standing
						FIZ_Entries[numFactions] = {}
						FIZ_Entries[numFactions].header = false
						FIZ_Entries[numFactions].i = standings[i][j].i -- this is the index into the faction table
						FIZ_Entries[numFactions].size = 0
					end
				end
			end
		end
	end
	FIZ_OBS_numFactions = numFactions
end
-- ^ 2 rfl ptr v R_D_F_IS
function FIZ_ReputationDetailFrame_IsShown(faction,flag,flag2,i)
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
function FIZ:Rep_Detail_Frame(faction,colorID,barValue,barMax,origBarValue,standingID,toExalted,factionStandingtext, toBFF)
	local name, description, _, _, _, _, atWarWith, canToggleAtWar, _, _, _, isWatched, _, _, _, _ = GetFactionInfo(faction);
	local gender = UnitSex("player");
	FIZ:BuildUpdateList()

	FIZ_ReputationDetailFactionName:SetText(name);
	FIZ_ReputationDetailFactionDescription:SetText(description);

	FIZ_ReputationDetailStandingName:SetText(factionStandingtext)
	local color = FACTION_BAR_COLORS[colorID]
	FIZ_ReputationDetailStandingName:SetTextColor(color.r, color.g, color.b)

	FIZ_ReputationDetailStandingCurrent:SetText(FIZ_TXT.currentRep)
	FIZ_ReputationDetailStandingNeeded:SetText(FIZ_TXT.neededRep)
	FIZ_ReputationDetailStandingMissing:SetText(FIZ_TXT.missingRep)
	FIZ_ReputationDetailStandingBag:SetText(FIZ_TXT.repInBag)
	FIZ_ReputationDetailStandingBagBank:SetText(FIZ_TXT.repInBagBank)
	FIZ_ReputationDetailStandingQuests:SetText(FIZ_TXT.repInQuest)
	FIZ_ReputationDetailStandingGained:SetText(FIZ_TXT.factionGained)

	FIZ_ReputationDetailStandingCurrentValue:SetText(barValue)
	FIZ_ReputationDetailStandingNeededValue:SetText(barMax)
	FIZ_ReputationDetailStandingMissingValue:SetText(barMax-barValue)
	FIZ_ReputationDetailStandingBagValue:SetText(FIZ_CurrentRepInBag)
	FIZ_ReputationDetailStandingBagBankValue:SetText(FIZ_CurrentRepInBagBank)
	FIZ_ReputationDetailStandingQuestsValue:SetText(FIZ_CurrentRepInQuest)
	if (FIZ_StoredRep and FIZ_StoredRep[name] and FIZ_StoredRep[name].origRep) then
		FIZ_ReputationDetailStandingGainedValue:SetText(string.format("%d", origBarValue-FIZ_StoredRep[name].origRep))
	else
		FIZ_ReputationDetailStandingGainedValue:SetText("")
	end

	if (standingID <8) then
		color = FACTION_BAR_COLORS[standingID+1]
		--FIZ_ReputationDetailStandingNext:SetText(FIZ_TXT.nextLevel)
		FIZ_ReputationDetailStandingNextValue:SetText("(--> "..GetText("FACTION_STANDING_LABEL"..standingID+1, gender)..")")
		FIZ_ReputationDetailStandingNextValue:SetTextColor(color.r, color.g, color.b)
	else
		--FIZ_ReputationDetailStandingNext:SetText("")
		FIZ_ReputationDetailStandingNextValue:SetText("")
	end
	if (standingID <7) then
		FIZ_ReputationDetailStandingToExaltedHeader:SetText(FIZ_TXT.toExalted)
		FIZ_ReputationDetailStandingToExaltedValue:SetText(toExalted)
	else
		FIZ_ReputationDetailStandingToExaltedHeader:SetText("")
		FIZ_ReputationDetailStandingToExaltedValue:SetText("")
	end

	if ( atWarWith ) then
		FIZ_ReputationDetailAtWarCheckBox:SetChecked(true);
	else
		FIZ_ReputationDetailAtWarCheckBox:SetChecked(false);
	end
	if ( canToggleAtWar ) then
		FIZ_ReputationDetailAtWarCheckBox:Enable();
		FIZ_ReputationDetailAtWarCheckBoxText:SetTextColor(RED_FONT_COLOR.r, RED_FONT_COLOR.g, RED_FONT_COLOR.b);
	else
		FIZ_ReputationDetailAtWarCheckBox:Disable();
		FIZ_ReputationDetailAtWarCheckBoxText:SetTextColor(GRAY_FONT_COLOR.r, GRAY_FONT_COLOR.g, GRAY_FONT_COLOR.b);
	end

	if ( IsFactionInactive(faction) ) then
		FIZ_ReputationDetailInactiveCheckBox:SetChecked(true);
	else
		FIZ_ReputationDetailInactiveCheckBox:SetChecked(false);
	end
	if ( isWatched ) then
		FIZ_ReputationDetailMainScreenCheckBox:SetChecked(true);
	else
		FIZ_ReputationDetailMainScreenCheckBox:SetChecked(false);
	end
end
-- ^ rfl R_D_F

function FIZ_Friend_Detail(factionID, standingID,factionRow)
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
function FIZ:ListByStanding(standing)
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
			FIZ:Print(FIZ_Help_COLOUR..FIZ_NAME..":|r "..FIZ:RGBToColour_perc(1, FACTION_BAR_COLORS[i].r, FACTION_BAR_COLORS[i].g, FACTION_BAR_COLORS[i].b).."--- "..FIZ_TXT_STAND_LV[i].." ("..i..") ---|r")
			for p in pairs(list[i]) do
				--FIZ:Print("    "..p..": "..list[i][p].value.."/"..list[i][p].max.." ("..FIZ_TXT.missing2..": "..list[i][p].max-list[i][p].value..")")
				FIZ:Print("    "..p..": "..FIZ_TXT.missing2..": "..list[i][p].max-list[i][p].value)
			end
			if (not standing) then
				FIZ:Print(" ")
			end
		end
	end
end

------------------------
-- _17_ extracting Skill information
------------------------
function FIZ:ExtractSkills() --- ggg
	FIZ_Herb = false
	FIZ_Skin = false
	FIZ_Mine = false
	FIZ_Alche = false
	FIZ_Black = false
	FIZ_Enchan = false
	FIZ_Engin = false
	FIZ_Jewel = false
	FIZ_Incrip = false
	FIZ_Leath = false
	FIZ_Tailor = false
	FIZ_Aid = false
	FIZ_Arch = false
	FIZ_Cook = false
	FIZ_Fish = false

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
		if (skillName == FIZ_TXT.skillHerb) then
			FIZ_Herb = true
		elseif (skillName == FIZ_TXT.skillSkin) then
			FIZ_Skin = true
		elseif (skillName == FIZ_TXT.skillMine) then
			FIZ_Mine = true
		elseif (skillName == FIZ_TXT.skillAlch) then
			FIZ_Alche = true
		elseif (skillName == FIZ_TXT.skillBlack) then
			FIZ_Black = true
		elseif (skillName == FIZ_TXT.skillEnch) then
			FIZ_Enchan = true
		elseif (skillName == FIZ_TXT.skillEngi) then
			FIZ_Engin = true
		elseif (skillName == FIZ_TXT.skillIncrip) then
			FIZ_Incrip = true
		elseif (skillName == FIZ_TXT.skillJewel) then
			FIZ_Jewel = true
		elseif (skillName == FIZ_TXT.skillLeath) then
			FIZ_Leath = true
		elseif (skillName == FIZ_TXT.skillTail) then
			FIZ_Tailor = true
		elseif (skillName == FIZ_TXT.skillAid) then
			FIZ_Aid = true
		elseif (skillName == FIZ_TXT.skillArch) then
			FIZ_Arch = true
		elseif (skillName == FIZ_TXT.skillCook) then
			FIZ_Cook = true
		elseif (skillName == FIZ_TXT.skillFish) then
			FIZ_Fish = true
		end
	end
--[[----------------------------------------------------------
	FIZ:Printtest(prof1, prof2, archaeology)--fpt --zzz
	FIZ:Printtest(fishing, cooking, firstaid)--fpt --zzz
	FIZ:Printtest("skillHerb",FIZ_TXT.skillHerb,FIZ_Herb)
	FIZ:Printtest("skillHerb",FIZ_TXT.skillMine,FIZ_Mine)
	FIZ:Printtest("skillHerb",FIZ_TXT.skillSkin,FIZ_Skin)
	FIZ:Printtest("skillHerb",FIZ_TXT.skillAlch,FIZ_Alche)
	FIZ:Printtest("skillHerb",FIZ_TXT.skillBlack,FIZ_Black)
	FIZ:Printtest("skillHerb",FIZ_TXT.skillEnch,FIZ_Enchan)
	FIZ:Printtest("skillHerb",FIZ_TXT.skillEngi,FIZ_Engin)
	FIZ:Printtest("skillHerb",FIZ_TXT.skillIncrip,FIZ_Incrip)
	FIZ:Printtest("skillHerb",FIZ_TXT.skillJewel,FIZ_Jewel)
	FIZ:Printtest("skillHerb",FIZ_TXT.skillLeath,FIZ_Leath)
	FIZ:Printtest("skillHerb",FIZ_TXT.skillAid,FIZ_Aid)
	FIZ:Printtest("skillHerb",FIZ_TXT.skillArch,FIZ_Arch)
	FIZ:Printtest("skillHerb",FIZ_TXT.skillCook,FIZ_Cook)
	FIZ:Printtest("skillHerb",FIZ_TXT.skillFish,FIZ_Fish)--]]--
end

--------------------------
-- _18_ classic options
--------------------------
function FIZ_OnShowOptionFrame()
	FIZ_EnableMissingBox:SetChecked(FIZ_Data.ShowMissing)
	FIZ_ExtendDetailsBox:SetChecked(FIZ_Data.ExtendDetails)
	FIZ_GainToChatBox:SetChecked(FIZ_Data.WriteChatMessage)
	FIZ_NoGuildGainBox:SetChecked(FIZ_Data.NoGuildGain)
	FIZ_SupressOriginalGainBox:SetChecked(FIZ_Data.SuppressOriginalChat)
	FIZ_ShowPreviewRepBox:SetChecked(FIZ_Data.ShowPreviewRep)
	FIZ_SwitchFactionBarBox:SetChecked(FIZ_Data.SwitchFactionBar)
	FIZ_NoGuildSwitchBox:SetChecked(FIZ_Data.NoGuildSwitch)
	FIZ_SilentSwitchBox:SetChecked(FIZ_Data.SilentSwitch)
	FIZ_OrderByStandingCheckBox:SetChecked(FIZ_Data.SortByStanding)

end

--------------------------
-- _19_ interface options
--------------------------
function FIZ_OnLoadOptions(panel)
	panel.name = FIZ_NAME
	panel.okay = FIZ_OptionsOk
	panel.cancel = FIZ_OptionsCancel
	panel.default = FIZ_OptionsDefault

	InterfaceOptions_AddCategory(panel);

	FIZ_OptionEnableMissingCBText:SetText(FIZ_TXT.showMissing)
	FIZ_OptionExtendDetailsCBText:SetText(FIZ_TXT.extendDetails)
	FIZ_OptionGainToChatCBText:SetText(FIZ_TXT.gainToChat)
	FIZ_OptionNoGuildGainCBText:SetText(FIZ_TXT.noGuildGain)
	FIZ_OptionSupressOriginalGainCBText:SetText(FIZ_TXT.suppressOriginalGain)
	FIZ_OptionShowPreviewRepCBText:SetText(FIZ_TXT.showPreviewRep)
	FIZ_OptionSwitchFactionBarCBText:SetText(FIZ_TXT.switchFactionBar)
	FIZ_OptionNoGuildSwitchCBText:SetText(FIZ_TXT.noGuildSwitch)
	FIZ_OptionSilentSwitchCBText:SetText(FIZ_TXT.silentSwitch)

end

------------------------------------------------------------
function FIZ_OnShowOptions(self)
	if (FIZ_Data and FIZ_VarsLoaded) then
		FIZ_OptionsShown = true
		FIZ_OptionEnableMissingCB:SetChecked(FIZ_Data.ShowMissing)
		FIZ_OptionExtendDetailsCB:SetChecked(FIZ_Data.ExtendDetails)
		FIZ_OptionGainToChatCB:SetChecked(FIZ_Data.WriteChatMessage)
		FIZ_OptionNoGuildGainCB:SetChecked(FIZ_Data.NoGuildGain)
		FIZ_OptionSupressOriginalGainCB:SetChecked(FIZ_Data.SuppressOriginalChat)
		FIZ_OptionShowPreviewRepCB:SetChecked(FIZ_Data.ShowPreviewRep)
		FIZ_OptionSwitchFactionBarCB:SetChecked(FIZ_Data.SwitchFactionBar)
		FIZ_OptionNoGuildSwitchCB:SetChecked(FIZ_Data.NoGuildSwitch)
		FIZ_OptionSilentSwitchCB:SetChecked(FIZ_Data.SilentSwitch)

	end
end

------------------------------------------------------------
function FIZ_OptionsOk()
	if (FIZ_OptionsShown) then
		FIZ_Data.ShowMissing = FIZ_OptionEnableMissingCB:GetChecked()
		FIZ_Data.ExtendDetails = FIZ_OptionExtendDetailsCB:GetChecked()
		FIZ_Data.WriteChatMessage = FIZ_OptionGainToChatCB:GetChecked()
		FIZ_Data.NoGuildGain = FIZ_OptionNoGuildGainCB:GetChecked()
		FIZ_Data.SuppressOriginalChat = FIZ_OptionSupressOriginalGainCB:GetChecked()
		FIZ_Data.ShowPreviewRep = FIZ_OptionShowPreviewRepCB:GetChecked()
		FIZ_Data.SwitchFactionBar = FIZ_OptionSwitchFactionBarCB:GetChecked()
		FIZ_Data.NoGuildSwitch = FIZ_OptionNoGuildSwitchCB:GetChecked()
		FIZ_Data.SilentSwitch = FIZ_OptionSilentSwitchCB:GetChecked()

		ReputationFrame_Update()
	end
	FIZ_OptionsShown = nil
end

------------------------------------------------------------
function FIZ_OptionsCancel()
	-- nothing to do
	FIZ_OptionsShown = nil
end

------------------------------------------------------------
function FIZ_OptionsDefault()
	-- nothing to do
end

--------------------------
-- _20_ rep Main window
--------------------------
function FIZ:SortByStanding(i,factionIndex,factionRow,factionBar,factionBarPreview,factionTitle,factionButton,factionStanding,factionBackground)
-- v rfl SBS set 2 start

	local OBS_fi = FIZ_Entries[factionIndex]
	local OBS_fi_i = OBS_fi.i

	if (OBS_fi.header) then
		FIZ_ReputationFrame_SetRowType(factionRow, isChild, OBS_fi.header, hasRep);
		factionRow.LFGBonusRepButton:SetShown(false);
		-- display the standingID as Header
		if (OBS_fi_i == 8) then
			factionTitle:SetText(GetText("FACTION_STANDING_LABEL"..OBS_fi_i, gender).." ("..tostring(OBS_fi.size)..")");
		else
			factionTitle:SetText(GetText("FACTION_STANDING_LABEL"..OBS_fi_i, gender).." -> "..GetText("FACTION_STANDING_LABEL"..OBS_fi_i+1, gender).." ("..tostring(OBS_fi.size)..")");
		end
-- v rfl SBS 2
-- v rfl SBS 2.1
		if ( FIZ_Collapsed[OBS_fi_i] ) then
-- ^ rfl SBS 2.1
			factionButton:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up");
		else
			factionButton:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up");
		end
		factionRow.index = factionIndex
-- v rfl 2.2.2
		factionRow.isCollapsed = FIZ_Collapsed[OBS_fi_i];
-- ^ rfl SBS 2.2
-- ^ rfl SBS 2
	else
-- v rfl SBS 1
		-- get the info for this Faction
		local name, description, standingID, barMin, barMax, barValue, atWarWith, canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild, factionID, hasBonusRepGain, canBeLFGBonus = GetFactionInfo(OBS_fi_i);
		factionTitle:SetText(name);
-- ^ rfl SBS 1
-- v rfl _16_
	local colorIndex, isCappedFriendship, factionStandingtext  = FIZ_Friend_Detail(factionID, standingID, factionRow);
-- ^ rfl  _16_
-- v rfl SBS 4
		-- Normalize Values

		local origBarValue = barValue

		if ( factionID and C_Reputation.IsFactionParagon(factionID) ) then
        	local paragonFrame = ReputationFrame.paragonFramesPool:Acquire();
        	paragonFrame.factionID = factionID;
        	paragonFrame:SetPoint("RIGHT", factionRow, 11, 0);
        	local currentValue, threshold, rewardQuestID, hasRewardPending = C_Reputation.GetFactionParagonInfo(factionID);
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

		barMax = barMax - barMin;
		barValue = barValue - barMin;
		barMin = 0;

		if(isCapped or isCappedFriendship) then
			factionRow.rolloverText = nil;
		elseif(FIZ_Data.ShowMissing ~= true) then
			factionRow.rolloverText = HIGHLIGHT_FONT_COLOR_CODE.." "..format(REPUTATION_PROGRESS_FORMAT, barValue, barMax)..FONT_COLOR_CODE_CLOSE;
		else
			factionRow.rolloverText = nil;
		end
-- ^ rfl SBS 4
-- v rfl SBS 3
-- v rfl SBS 3.1
		local toExalted = 0
		if (standingID <8) then
			toExalted = FIZ_ToExalted[standingID] + barMax - barValue;
		end

		--local toBFF = 0
		--if (isCappedFriendship ~= true and isFriend and FIZ_ToBFF[factionStandingtext] ~= nil) then
		--	FIZ:Print(factionStandingtext);
		--	toBFF = FIZ_ToBFF[factionStandingtext] + barMax - barValue;
		--	FIZ:Print("toBFF: "..toBFF.." ID: "..factionID.." toBFF: "..toBFF);
		--end

		factionRow.index = OBS_fi_i;

		if (FIZ_Data.ShowMissing) then
			if ((barMax-barValue) ~= 0) then
				factionRow.standingText = factionStandingtext.." ("..barMax - barValue..")";
			else
				factionRow.standingText = factionStandingtext;
			end
		else
-- ^ rfl SBS 3.1
			factionRow.standingText = factionStandingtext;
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
-- ^ rfl SBS 5
		local previewValue = 0
		if (FIZ_Data.ShowPreviewRep) then
			previewValue = FIZ:GetReadyReputation(OBS_fi_i)
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
		FIZ_ReputationFrame_SetRowType(factionRow, isChild, OBS_fi.header, hasRep);
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
				FIZ_ReputationDetailFrame_IsShown(OBS_fi_I,flag,1)
			end
			if ( FIZ_ReputationDetailFrame:IsVisible() ) then 
				FIZ:Rep_Detail_Frame(OBS_fi_i,standingID,barValue,barMax,origBarValue,standingID,toExalted,factionStandingtext, toBFF)

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
function FIZ:OriginalRepOrder(i,factionIndex,factionRow,factionBar,factionBarPreview,factionTitle,factionButton,factionStanding,factionBackground)
-- v rfl ORO set 2 start







-- v rfl ORO 1
	-- get the info for this Faction
	local name, description, standingID, barMin, barMax, barValue, atWarWith, canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild, factionID, hasBonusRepGain, canBeLFGBonus = GetFactionInfo(factionIndex);
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
	local colorIndex, isCappedFriendship, factionStandingtext, isFriend = FIZ_Friend_Detail(factionID, standingID, factionRow);
-- ^ rfl  _16_
-- v rfl ORO 4
	

	local origBarValue = barValue

	if ( factionID and C_Reputation.IsFactionParagon(factionID) ) then
        local paragonFrame = ReputationFrame.paragonFramesPool:Acquire();
        paragonFrame.factionID = factionID;
        paragonFrame:SetPoint("RIGHT", factionRow, 11, 0);
        local currentValue, threshold, rewardQuestID, hasRewardPending = C_Reputation.GetFactionParagonInfo(factionID);
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
-- Normalize Values
	barMax = barMax - barMin;
	barValue = barValue - barMin;
	barMin = 0;

	if(isCapped or isCappedFriendship) then
		factionRow.rolloverText = nil;
	elseif(FIZ_Data.ShowMissing ~= true) then
		factionRow.rolloverText = HIGHLIGHT_FONT_COLOR_CODE.." "..format(REPUTATION_PROGRESS_FORMAT, barValue, barMax)..FONT_COLOR_CODE_CLOSE;
	else
		factionRow.rolloverText = nil;
	end

-- ^ rfl ORO 4
-- v rfl ORO 3
-- v rfl ORO 3.1
	local toExalted = 0
	if (standingID <8) then
		toExalted = FIZ_ToExalted[standingID] + barMax - barValue;
	end

	local toBFF = 0
	--if (isCappedFriendship ~= true and isFriend and FIZ_ToBFF[factionStandingtext] ~= nil) then
	--	FIZ:Print(factionStandingtext);
	--	toBFF = FIZ_ToBFF[factionStandingtext] + barMax - barValue;
	--	FIZ:Print("toBFF: "..toBFF.." ID: "..factionID.." toBFF: "..toBFF);
	--end


	if (FIZ_Data.ShowMissing) then
		if ((barMax-barValue) ~= 0) then
			factionRow.standingText = factionStandingtext.." ("..barMax - barValue..")";
		else
			factionRow.standingText = factionStandingtext;
		end
	else
-- ^ rfl SBS 3.1
		factionRow.standingText = factionStandingtext;
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
-- ^ rfl ORO 5
	local previewValue = 0
	if (FIZ_Data.ShowPreviewRep) then
		previewValue = FIZ:GetReadyReputation(factionIndex)
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
			FIZ_ReputationDetailFrame_IsShown(factionIndex,flag,2)
		end
		if ( FIZ_ReputationDetailFrame:IsVisible() ) then 
			FIZ:Rep_Detail_Frame(factionIndex,colorIndex,barValue,barMax,origBarValue,standingID,toExalted,factionStandingtext,toBFF) 
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