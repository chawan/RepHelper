-- Default (English)		
--------------------	--------------------	
		
		
-- Binding names		
BINDING_HEADER_REPHELPER	= "RepHelper"	
BINDING_NAME_SHOWCONFIG	= "Show options window"	
BINDING_NAME_SHOWDETAILS	= "Show reputation detail window"	
		
RPH_TXT	= {}
RPH_TXT.Mob = {}
-- help		
RPH_TXT.help	= "A tool to manage your reputation"	
RPH_TXT.command	= "Could not parse command"	
RPH_TXT.usage	= "Usage"	
RPH_TXT.helphelp	= "Show this help text"	
RPH_TXT.helpabout	= "Show author information"	
RPH_TXT.helpstatus	= "Show configuration status"	
-- about		
RPH_TXT.by	= "by"	
RPH_TXT.version	= "Version"	
RPH_TXT.date	= "Date"	
RPH_TXT.web	= "Website"	
RPH_TXT.slash	= "Slash command"	
RPH_TXT_STAND_LV	= {}	
RPH_TXT_STAND_LV[0]	= "Unknown"	
RPH_TXT_STAND_LV[1]	= "Hated"	
RPH_TXT_STAND_LV[2]	= "Hostile"	
RPH_TXT_STAND_LV[3]	= "Unfriendly"	
RPH_TXT_STAND_LV[4]	= "Neutral"	
RPH_TXT_STAND_LV[5]	= "Friendly"	
RPH_TXT_STAND_LV[6]	= "Honored"	
RPH_TXT_STAND_LV[7]	= "Revered"	
RPH_TXT_STAND_LV[8]	= "Exalted"	
-- status		
RPH_TXT.status	= "Status"	
RPH_TXT.disabled	= "disabled"	
RPH_TXT.enabled	= "enabled"	
RPH_TXT.statMobs	= "Show Mobs [M]"	
RPH_TXT.statQuests	= "Show Quests [Q]"	
RPH_TXT.statInstances	= "Show Instances [D]"	
RPH_TXT.statItems	= "Show Items [I]"	
RPH_TXT.statGeneral	= "Show General [G]"	
RPH_TXT.statMissing	= "Show missing reputation"	
RPH_TXT.statDetails	= "Show extended detail frame"	
RPH_TXT.statChat	= "Detailed chat message"	
RPH_TXT.statNoGuildChat	= "No chat for guild rep"	
RPH_TXT.statSuppress	= "Suppress original chat message"	
RPH_TXT.statPreview	= "Show preview rep in reputation frame"	
RPH_TXT.statSwitch	= "Automatically switch faction of rep bar"	
RPH_TXT.statNoGuildSwitch	= "No switching for guild rep"	
RPH_TXT.statSilentSwitch	= "No message when switching bar"	
RPH_TXT.statGuildCap	= "Show guild reputation cap in chat"	
-- XML UI elements		
RPH_TXT.showQuests	= "Show Quests"	
RPH_TXT.showInstances	= "Show Instances"	
RPH_TXT.showMobs	= "Show Mobs"	
RPH_TXT.showItems	= "Show Items"	
RPH_TXT.showGeneral	= "Show General"	
RPH_TXT.showAll	= "Show All"	
RPH_TXT.showNone	= "Show None"	
RPH_TXT.expand	= "Expand"
RPH_TXT.darkmoonFaireBuff = "DMF Buff"	
RPH_TXT.collapse	= "Collapse"	
RPH_TXT.supressNoneFaction	= "Clear exclusion for faction"	
RPH_TXT.supressNoneGlobal	= "Clear exclusion for all"	
RPH_TXT.suppressHint	= "Right-click on a quest to exclude it from the summary"	
RPH_TXT.clearSessionGain	= "Clear session gain counter"	
-- options dialog		
RPH_TXT.showMissing	= "Show missing reputation in reputation frame"	
RPH_TXT.extendDetails	= "Show extended reputation detail frame"	
RPH_TXT.gainToChat	= "Replace original faction gain messages with a more detailed version"	
RPH_TXT.noGuildGain	= "Do not write to chat for guild reputation"	
RPH_TXT.suppressOriginalGain	= "Supress original faction gain messages"	
RPH_TXT.showPreviewRep	= "Show reputation that can be handed in in reputation frame"	
RPH_TXT.switchFactionBar	= "Switch reputation bar to faction for whom just gained reputation"	
RPH_TXT.noGuildSwitch	= "Do not switch reputation bar for guild reputation"	
RPH_TXT.silentSwitch	= "No message to chat when switching bar"	
RPH_TXT.guildCap	= "Show guild reputation cap in chat"	
RPH_TXT.defaultChatFrame	= "Using default chat frame"	
RPH_TXT.chatFrame	= "Using chat frame %d (%s)"	
RPH_TXT.usingDefaultChatFrame	= "Now using default chat frame"	
RPH_TXT.usingChatFrame	= "Now using chat frame"
RPH_TXT.EnableParagonBar = "Display paragon reputation in bars."	
-- various LUA		
RPH_TXT.options	= "Options"	
RPH_TXT.orderByStanding	= "Order by Standing"	
RPH_TXT.lookup	= "Looking up faction "	
RPH_TXT.allFactions	= "Listing all factions"	
RPH_TXT.missing	= "(to next)"	
RPH_TXT.missing2	= "Missing"	
RPH_TXT.heroic	= "Heroic"	
RPH_TXT.normal	= "Normal"	
RPH_TXT.switchBar	= "Changing reputation bar to"	
-- RPH_ShowFactions		
RPH_TXT.faction	= "Faction"	
RPH_TXT.is	= "is"	
RPH_TXT.withStanding	= "with standing"	
RPH_TXT.needed	= "needed"	
RPH_TXT.mob	= "[Mob]"	
RPH_TXT.limited	= "is limited to"	
RPH_TXT.limitedPl	= "are limited to"	
RPH_TXT.quest	= "[Quest]"	
RPH_TXT.instance	= "[Instance]"	
RPH_TXT.items	= "[Items]"	
RPH_TXT.unknown	= "is not known to this player"	
-- mob Details		
RPH_TXT.tmob	= "Trash mobs"	
RPH_TXT.oboss	= "Other Bosses"	
RPH_TXT.aboss	= "All Bosses"	
RPH_TXT.pboss	= "Per Boss"	
RPH_TXT.fclear	= "full clear"	
RPH_TXT.AU	= "Any Unnamed"	
RPH_TXT.AN	= "Any named"	
RPH_TXT.BB	= "Bloodsail Buccaneer"	
RPH_TXT.SSP	= "Southsea Pirate"	
RPH_TXT.Wa	= "Wastewander"	
RPH_TXT.VCm	= "Any Venture Co. mob"	
RPH_TXT.Mob.MoshOgg_Spellcrafter = "Mosh'Ogg Spellcrafter"
RPH_TXT.Mob.BoulderfistOgre = "Boulderfist Ogre"
-- Quest Details		
RPH_TXT.cdq	= "Main city cooking daily quests"	
RPH_TXT.coq	= "Other city cooking daily quests"	
RPH_TXT.fdq	= "Main city fishing daily quests"	
RPH_TXT.foq	= "Other city fishing daily quests"	
RPH_TXT.ndq	= "no daily quests"	
RPH_TXT.deleted	= "Outdated"	
RPH_TXT.Championing	= "Championing (Tabard)"	
RPH_TXT.bpqfg	= "By percent of quest faction gain"	
		
-- items Details		
RPH_TXT.cbadge	= "Other city Commendation Badge"	
-- instance Details		
RPH_TXT.srfd	= "Spillover rep from dungeons"	
RPH_TXT.tbd	= "ToBe Done"	
RPH_TXT.nci	= "Normal Cataclysm instances"	
RPH_TXT.hci	= "Heroic Cataclysm instances"	
-- ToBeDone general		
RPH_TXT.tfr	= "Tiller Farming rep"	
RPH_TXT.nswts	= "Not sure when this starts"	
RPH_TXT.mnd	= "Max number of daily quests"	
RPH_TXT.mnds	= "The max number of dallies is "	
		
		
		
		
		
-- ReputationDetails		
RPH_TXT.currentRep	= "Current reputation"	
RPH_TXT.neededRep	= "Reputation needed"	
RPH_TXT.missingRep	= "Reputation missing"	
RPH_TXT.repInBag	= "Reputation in bag"	
RPH_TXT.repInBagBank	= "Reputation in bag & bank"	
RPH_TXT.repInQuest	= "Reputation in quests"	
RPH_TXT.factionGained	= "Gained this session"	
RPH_TXT.noInfo	= "No information available for this faction/reputation."	
RPH_TXT.toExalted	= "Reputation to exalted"
RPH_TXT.toBestFriend = "Reputation to best friend"
-- to chat		
RPH_TXT.stats	= " (Total: %s%d, Left: %d)"	
-- config changed		
RPH_TXT.configQuestion	= "Some (new) settings were enabled. This is only done once for a setting. It is recommended that you verify the RepHelper options."	
RPH_TXT.showConfig	= "View config"	
RPH_TXT.later	= "Later"	
-- UpdateList		
RPH_TXT.mobShort	= "[M]"	
RPH_TXT.questShort	= "[Q]"	
RPH_TXT.instanceShort	= "[D]"	
RPH_TXT.itemsShort	= "[I]"	
RPH_TXT.generalShort	= "[G]"	
RPH_TXT.mobHead	= "Gain reputation by killing this mob"	
RPH_TXT.questHead	= "Gain reputation by doing this quest"	
RPH_TXT.instanceHead	= "Gain reputation by running this instance"	
RPH_TXT.itemsHead	= "Gain reputation by handing in items"	
RPH_TXT.generalHead	= "General information about gaining reputation"	
RPH_TXT.mobTip	= "Each time you kill this mob, you gain reputation. Doing this often enough, will help you reach the next level."	
RPH_TXT.questTip	= "Each time you complete this repeatable or daily quest, you gain reputation. Doing this often enough, will help you reach the next level."	
RPH_TXT.instanceTip	= "Each time you run this instance, you gain reputation. Doing this often enough, will help you reach the next level."	
RPH_TXT.itemsName	= "Item hand-in"	
RPH_TXT.itemsTip	= "Each time you hand in the listed items, you will gain reputation. Doing this often enough, will help you reach the next level."	
RPH_TXT.generalTip	= "This is information about reputation gain with a faction that does not necessarily relate to repeatable gain methods."	
RPH_TXT.allOfTheAbove	= "Summary of %d quests listed above"	
RPH_TXT.questSummaryHead	= RPH_TXT.allOfTheAbove	
RPH_TXT.questSummaryTip	= "This entry shows a summary of all the quests listed above.\r\nThis is useful assuming that all the quests listed are daily quests, as this will show you how many days it will take you to reach the next reputation level if you do all the daily quests each day."	
RPH_TXT.complete	= "complete"	
RPH_TXT.active	= "active"	
RPH_TXT.inBag	= "In bags"	
RPH_TXT.turnIns	= "Turn-ins:"	
RPH_TXT.reputation	= "Reputation:"	
RPH_TXT.reputationCap	= "Reputation cap:"	
RPH_TXT.reputationCapCurrent	= "Current reputation:"	
RPH_TXT.inBagBank	= "In bags and bank"	
RPH_TXT.questCompleted	= "Quest completed"	
RPH_TXT.timesToDo	= "Times to do:"	
RPH_TXT.instance2	= "Instance:"	
RPH_TXT.mode	= "Mode:"	
RPH_TXT.timesToRun	= "Times to run:"	
RPH_TXT.mob2	= "Mob:"	
RPH_TXT.location	= "Location:"	
RPH_TXT.toDo	= "To do:"	
RPH_TXT.quest2	= "Quest:"	
RPH_TXT.itemsRequired	= "Items required"	
RPH_TXT.general2	= "General:"	
RPH_TXT.maxStanding	= "Yields reputation until"	
-- skills		
RPH_TXT.skillHerb	= "Herbalism"	
RPH_TXT.skillMine	= "Mining"	
RPH_TXT.skillSkin	= "Skinning"	
RPH_TXT.skillAlch	= "Alchemy"	
RPH_TXT.skillBlack	= "Blacksmithing"	
RPH_TXT.skillEnch	= "Enchanting"	
RPH_TXT.skillEngi	= "Engineering"	
RPH_TXT.skillIncrip	= "Inscription"	
RPH_TXT.skillJewel	= "Jewelcrafting"	
RPH_TXT.skillLeath	= "Leatherworking"	
RPH_TXT.skillTail	= "Tailoring"	
RPH_TXT.skillAid	= "First Aid"	
RPH_TXT.skillArch	= "Archaeology"	
RPH_TXT.skillCook	= "Cooking"	
RPH_TXT.skillFish	= "Fishing"	
-- Tooltip		
RPH_TXT.elements	= {}	
RPH_TXT.elements.name	= {}	
RPH_TXT.elements.tip	= {}	
		
RPH_TXT.elements.name.RPH_OptionsButton	= RPH_TXT.options	
RPH_TXT.elements.tip.RPH_OptionsButton	= "Open a window to configure RepHelper."	
RPH_TXT.elements.name.RPH_OrderByStandingCheckBox	= RPH_TXT.orderByStanding	
RPH_TXT.elements.tip.RPH_OrderByStandingCheckBox	= "If this box is unchecked, the faction list is displayed by default (Blizzard) sorting, grouped by logical and alphabetical order.\r\n\r\nIf this box is checked, the faction list is sorted by standing.\r\n\r\nTo view the |cFFFAA0A0inactive|r factions, uncheck this box and go to the bottom of the list."	
		
RPH_TXT.elements.name.RPH_ShowMobsButton	= RPH_TXT.showMobs	
RPH_TXT.elements.tip.RPH_ShowMobsButton	= "Check this button to see mobs you can kill to improve your reputation."	
RPH_TXT.elements.name.RPH_ShowQuestButton	= RPH_TXT.showQuests	
RPH_TXT.elements.tip.RPH_ShowQuestButton	= "Check this button to see quests you can do to improve your reputation."	
RPH_TXT.elements.name.RPH_ShowItemsButton	= RPH_TXT.showItems	
RPH_TXT.elements.tip.RPH_ShowItemsButton	= "Check this button to see items you can hand in to improve your reputation."	
RPH_TXT.elements.name.RPH_ShowInstancesButton	= RPH_TXT.showInstances	
RPH_TXT.elements.tip.RPH_ShowInstancesButton	= "Check this button to see instances you can run to improve your reputation."	
RPH_TXT.elements.name.RPH_ShowGeneralButton	= RPH_TXT.showGeneral	
RPH_TXT.elements.tip.RPH_ShowGeneralButton	= "Check this button to see general information about improving your reputation."	
		
RPH_TXT.elements.name.RPH_ShowAllButton	= RPH_TXT.showAll	
RPH_TXT.elements.tip.RPH_ShowAllButton	= "Press this button to check all four of the checkboxes to the left.\r\nThis will show mobs, quests, items and instances that give you reputation for the currently selected faction."	
RPH_TXT.elements.name.RPH_ShowNoneButton	= RPH_TXT.showNone	
RPH_TXT.elements.tip.RPH_ShowNoneButton	= "Press this button to deselect all four of the checkboxes to the left.\r\nThis will show you none of the ways to gain reputation for the currently selected faction."	
		
RPH_TXT.elements.name.RPH_ExpandButton	= RPH_TXT.expand	
RPH_TXT.elements.tip.RPH_ExpandButton	= "Press this button to expand all entries in the list. This will show you the materials needed to hand in any item gathering quests."	
RPH_TXT.elements.name.RPH_CollapseButton	= RPH_TXT.collapse	
RPH_TXT.elements.tip.RPH_CollapseButton	= "Press this button to collapse all entries in the list. This will hide the materials needed to hand in gathering quests."	
RPH_TXT.elements.name.RPH_SupressNoneFactionButton	= RPH_TXT.supressNoneFaction	
RPH_TXT.elements.tip.RPH_SupressNoneFactionButton	= "Press this button to re-enable all quests for this faction that you have excluded by righ-clicking on it."	
RPH_TXT.elements.name.RPH_SupressNoneGlobalButton	= RPH_TXT.supressNoneGlobal	
RPH_TXT.elements.tip.RPH_SupressNoneGlobalButton	= "Press this button to re-enable all quests for all factions that you have excluded by right-clicking on it."	
RPH_TXT.elements.name.RPH_ClearSessionGainButton	= RPH_TXT.clearSessionGain	
RPH_TXT.elements.tip.RPH_ClearSessionGainButton	= "Press this button to clear reset the counter for reputation gained this session."
RPH_TXT.elements.name.RPH_ShowDarkmoonFaireButton = "Darkmoon Faire Buff"	
RPH_TXT.elements.tip.RPH_ShowDarkmoonFaireButton = "Toggle this option to show how much reputation you would earn with the Darkmoon Faire buff active."
		
RPH_TXT.elements.name.RPH_EnableMissingBox	= RPH_TXT.showMissing	
RPH_TXT.elements.tip.RPH_EnableMissingBox	= "Enable this setting to add the missing reputation points needed for the next reputation level behind the current standing of each faction in the reputation frame."	
RPH_TXT.elements.name.RPH_ExtendDetailsBox	= RPH_TXT.extendDetails	
RPH_TXT.elements.tip.RPH_ExtendDetailsBox	= "Enable this setting to display an extended reputation detail frame.\r\nIn addition the information shown in the original detail frame, this will display the missing reputation needed to reach the next reputation level and a list of ways to gain this reputation by listing quests, mobs, items and instances that yield reputation for the chosen faction."	
RPH_TXT.elements.name.RPH_GainToChatBox	= RPH_TXT.gainToChat	
RPH_TXT.elements.tip.RPH_GainToChatBox	= "Enable this setting to display reputation gained for all factions whenever you gain reputation.\r\nThis differs from the standard way of reporting reputation gain, as normally, only the gain with the main faction is listed."	
RPH_TXT.elements.name.RPH_NoGuildGainBox	= RPH_TXT.noGuildGain	
RPH_TXT.elements.tip.RPH_NoGuildGainBox	= "Enable this setting to not print messages to chat for guild reputation."	
RPH_TXT.elements.name.RPH_SupressOriginalGainBox	= RPH_TXT.suppressOriginalGain	
RPH_TXT.elements.tip.RPH_SupressOriginalGainBox	= "Enable this setting to suppress the standard reputation gain messages.\r\nThis makes sense if you have enabled the detailed faction gain messages, so you don't get identical listings from the standard and extended versions."	
RPH_TXT.elements.name.RPH_ShowPreviewRepBox	= RPH_TXT.showPreviewRep	
RPH_TXT.elements.tip.RPH_ShowPreviewRepBox	= "Enable this setting to show the reputation you can gain by handing in items and completed quests as a grey bar overlaid over the normal reputation bar in the reputation frame."	
RPH_TXT.elements.name.RPH_SwitchFactionBarBox	= RPH_TXT.switchFactionBar	
RPH_TXT.elements.tip.RPH_SwitchFactionBarBox	= "Enable this setting to automatically switch the faction being watched to the last faction whom you have gained reputation for."	
RPH_TXT.elements.name.RPH_NoGuildSwitchBox	= RPH_TXT.noGuildSwitch	
RPH_TXT.elements.tip.RPH_NoGuildSwitchBox	= "Enable this setting to not switch the watched faction for guild reputation gains."	
RPH_TXT.elements.name.RPH_SilentSwitchBox	= RPH_TXT.silentSwitch	
RPH_TXT.elements.tip.RPH_SilentSwitchBox	= "Enable this setting to switch the reputation bar silently (without a message to chat)."	
RPH_TXT.elements.name.RPH_GuildCapBox	= RPH_TXT.guildCap	
RPH_TXT.elements.name.RPH_ChatFrameSlider	= "Chat frame"	
RPH_TXT.elements.tip.RPH_ChatFrameSlider	= "Select which chat frame RepHelper prints its messages."
RPH_TXT.elements.name.RPH_EnableParagonBarBox = RPH_TXT.EnableParagonBar
RPH_TXT.elements.tip.RPH_EnableParagonBarBox  = "Enable this option to display your current paragon progress in the reputation bars."		
		
RPH_TXT.elements.name.RPH_OptionEnableMissing	= RPH_TXT.elements.name.RPH_EnableMissingBox	
RPH_TXT.elements.tip.RPH_OptionEnableMissing	= RPH_TXT.elements.tip.RPH_EnableMissingBox	
RPH_TXT.elements.name.RPH_OptionEnableMissingCB	= RPH_TXT.elements.name.RPH_EnableMissingBox	
RPH_TXT.elements.tip.RPH_OptionEnableMissingCB	= RPH_TXT.elements.tip.RPH_EnableMissingBox	
RPH_TXT.elements.name.RPH_OptionExtendDetails	= RPH_TXT.elements.name.RPH_ExtendDetailsBox	
RPH_TXT.elements.tip.RPH_OptionExtendDetails	= RPH_TXT.elements.tip.RPH_ExtendDetailsBox	
RPH_TXT.elements.name.RPH_OptionExtendDetailsCB	= RPH_TXT.elements.name.RPH_ExtendDetailsBox	
RPH_TXT.elements.tip.RPH_OptionExtendDetailsCB	= RPH_TXT.elements.tip.RPH_ExtendDetailsBox	
RPH_TXT.elements.name.RPH_OptionGainToChat	= RPH_TXT.elements.name.RPH_GainToChatBox	
RPH_TXT.elements.tip.RPH_OptionGainToChat	= RPH_TXT.elements.tip.RPH_GainToChatBox	
RPH_TXT.elements.name.RPH_OptionGainToChatCB	= RPH_TXT.elements.name.RPH_GainToChatBox	
RPH_TXT.elements.tip.RPH_OptionGainToChatCB	= RPH_TXT.elements.tip.RPH_GainToChatBox	
RPH_TXT.elements.name.RPH_OptionNoGuildGain	= RPH_TXT.elements.name.RPH_NoGuildGainBox	
RPH_TXT.elements.tip.RPH_OptionNoGuildGain	= RPH_TXT.elements.tip.RPH_NoGuildGainBox	
RPH_TXT.elements.name.RPH_OptionNoGuildGainCB	= RPH_TXT.elements.name.RPH_NoGuildGainBox	
RPH_TXT.elements.tip.RPH_OptionNoGuildGainCB	= RPH_TXT.elements.tip.RPH_NoGuildGainBox	
RPH_TXT.elements.name.RPH_OptionSupressOriginalGain	= RPH_TXT.elements.name.RPH_SupressOriginalGainBox	
RPH_TXT.elements.tip.RPH_OptionSupressOriginalGain	= RPH_TXT.elements.tip.RPH_SupressOriginalGainBox	
RPH_TXT.elements.name.RPH_OptionSupressOriginalGainCB	= RPH_TXT.elements.name.RPH_SupressOriginalGainBox	
RPH_TXT.elements.tip.RPH_OptionSupressOriginalGainCB	= RPH_TXT.elements.tip.RPH_SupressOriginalGainBox	
RPH_TXT.elements.name.RPH_OptionShowPreviewRep	= RPH_TXT.elements.name.RPH_ShowPreviewRepBox	
RPH_TXT.elements.tip.RPH_OptionShowPreviewRep	= RPH_TXT.elements.tip.RPH_ShowPreviewRepBox	
RPH_TXT.elements.name.RPH_OptionShowPreviewRepCB	= RPH_TXT.elements.name.RPH_ShowPreviewRepBox	
RPH_TXT.elements.tip.RPH_OptionShowPreviewRepCB	= RPH_TXT.elements.tip.RPH_ShowPreviewRepBox	
RPH_TXT.elements.name.RPH_OptionSwitchFactionBar	= RPH_TXT.elements.name.RPH_SwitchFactionBarBox	
RPH_TXT.elements.tip.RPH_OptionSwitchFactionBar	= RPH_TXT.elements.tip.RPH_SwitchFactionBarBox	
RPH_TXT.elements.name.RPH_OptionSwitchFactionBarCB	= RPH_TXT.elements.name.RPH_SwitchFactionBarBox	
RPH_TXT.elements.tip.RPH_OptionSwitchFactionBarCB	= RPH_TXT.elements.tip.RPH_SwitchFactionBarBox	
RPH_TXT.elements.name.RPH_OptionNoGuildSwitch	= RPH_TXT.elements.name.RPH_NoGuildSwitchBox	
RPH_TXT.elements.tip.RPH_OptionNoGuildSwitch	= RPH_TXT.elements.tip.RPH_NoGuildSwitchBox	
RPH_TXT.elements.name.RPH_OptionNoGuildSwitchCB	= RPH_TXT.elements.name.RPH_NoGuildSwitchBox	
RPH_TXT.elements.tip.RPH_OptionNoGuildSwitchCB	= RPH_TXT.elements.tip.RPH_NoGuildSwitchBox	
RPH_TXT.elements.name.RPH_OptionSilentSwitch	= RPH_TXT.elements.name.RPH_SilentSwitchBox	
RPH_TXT.elements.tip.RPH_OptionSilentSwitch	= RPH_TXT.elements.tip.RPH_SilentSwitchBox	
RPH_TXT.elements.name.RPH_OptionSilentSwitchCB	= RPH_TXT.elements.name.RPH_SilentSwitchBox	
RPH_TXT.elements.tip.RPH_OptionSilentSwitchCB	= RPH_TXT.elements.tip.RPH_SilentSwitchBox	
RPH_TXT.elements.name.RPH_OptionGuildCap	= RPH_TXT.elements.name.RPH_GuildCapBox	
RPH_TXT.elements.tip.RPH_OptionGuildCap	= RPH_TXT.elements.tip.RPH_GuildCapBox	
RPH_TXT.elements.name.RPH_OptionGuildCapCB	= RPH_TXT.elements.name.RPH_GuildCapBox	
RPH_TXT.elements.tip.RPH_OptionGuildCapCB	= RPH_TXT.elements.tip.RPH_GuildCapBox	
RPH_TXT.elements.name.RPH_OptionChatFrameSlider	= RPH_TXT.elements.name.RPH_ChatFrameSlider	
RPH_TXT.elements.tip.RPH_OptionChatFrameSlider	= RPH_TXT.elements.tip.RPH_ChatFrameSlider
RPH_TXT.elements.name.RPH_OptionEnableParagonBar = RPH_TXT.elements.name.RPH_EnableParagonBarBox
RPH_TXT.elements.tip.RPH_OptionEnableParagonBar = RPH_TXT.elements.tip.RPH_EnableParagonBarBox
RPH_TXT.elements.name.RPH_OptionEnableParagonBarCB = RPH_TXT.elements.name.RPH_EnableParagonBarBox
RPH_TXT.elements.tip.RPH_OptionEnableParagonBarCB = RPH_TXT.elements.tip.RPH_EnableParagonBarBox