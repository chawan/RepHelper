-- Traditional Chinese (正體中文)	
--------------------	--------------------
if (GetLocale() =="zhTW") then	
	
-- Binding names	
BINDING_HEADER_REPHELPER	= "RepHelper"
BINDING_NAME_SHOWCONFIG	= "顯示選項“窗口"
BINDING_NAME_SHOWDETAILS	= "顯示聲譽細節窗口"
	
RPH_TXT	= {}
-- help	
RPH_TXT.help	= "一個工具來管理你的聲譽"
RPH_TXT.command	= "無法解析命令"
RPH_TXT.usage	= "用法"
RPH_TXT.helphelp	= "顯示此幫助文本"
RPH_TXT.helpabout	= "只看該作者信息"
RPH_TXT.helpstatus	= "顯示配置狀態"
-- about	
RPH_TXT.by	= "由"
RPH_TXT.version	= "版本"
RPH_TXT.date	= "日"
RPH_TXT.web	= "網站"
RPH_TXT.slash	= "斜線命令"
RPH_TXT_STAND_LV	= {}
RPH_TXT_STAND_LV[0]	= "未知"
RPH_TXT_STAND_LV[1]	= "討厭"
RPH_TXT_STAND_LV[2]	= "敵對的"
RPH_TXT_STAND_LV[3]	= "不友好"
RPH_TXT_STAND_LV[4]	= "中性"
RPH_TXT_STAND_LV[5]	= "友好"
RPH_TXT_STAND_LV[6]	= "榮幸"
RPH_TXT_STAND_LV[7]	= "崇敬"
RPH_TXT_STAND_LV[8]	= "崇高的"
-- status	
RPH_TXT.status	= "狀態"
RPH_TXT.disabled	= "禁用"
RPH_TXT.enabled	= "啟用"
RPH_TXT.statMobs	= "顯示暴民 [M]"
RPH_TXT.statQuests	= "顯示任務 [Q]"
RPH_TXT.statInstances	= "顯示實例 [D]"
RPH_TXT.statItems	= "顯示項目 [I]"
RPH_TXT.statGeneral	= "顯示一般 [G]"
RPH_TXT.statMissing	= "顯示缺少信譽"
RPH_TXT.statDetails	= "顯示延長詳細框架"
RPH_TXT.statChat	= "詳細的聊天消息"
RPH_TXT.statNoGuildChat	= "沒有公會聲望聊天"
RPH_TXT.statSuppress	= "抑制原始的聊天信息"
RPH_TXT.statPreview	= "顯示預覽信譽在聲譽幀"
RPH_TXT.statSwitch	= "自動切換派系信譽欄"
RPH_TXT.statNoGuildSwitch	= "公會聲望沒有切換"
RPH_TXT.statSilentSwitch	= "沒有消息的時候切換桿"
RPH_TXT.statGuildCap	= "顯示在聊天的公會聲望上限"
-- XML UI elements	
RPH_TXT.showQuests	= "顯示任務"
RPH_TXT.showInstances	= "顯示實例"
RPH_TXT.showMobs	= "顯示暴民"
RPH_TXT.showItems	= "顯示項目"
RPH_TXT.showGeneral	= "顯示一般"
RPH_TXT.showAll	= "顯示全部"
RPH_TXT.showNone	= "顯示“無”"
RPH_TXT.expand	= "擴大"
RPH_TXT.collapse	= "崩潰"
RPH_TXT.supressNoneFaction	= "清除排除派"
RPH_TXT.supressNoneGlobal	= "清除排除"
RPH_TXT.suppressHint	= "右鍵單擊一個任務，排除它從匯總"
RPH_TXT.clearSessionGain	= "清除會話增益計數器"
-- options dialog	
RPH_TXT.showMissing	= "顯示缺少的聲譽，聲譽框架"
RPH_TXT.extendDetails	= "顯示延長聲譽細節框架"
RPH_TXT.gainToChat	= "寫詳細的派增益消息，聊天窗口"
RPH_TXT.noGuildGain	= "不要寫聊天公會聲望"
RPH_TXT.suppressOriginalGain	= "剿原派增益消息"
RPH_TXT.showPreviewRep	= "顯示聲譽，可以傳世的聲譽幀"
RPH_TXT.switchFactionBar	= "開關信譽欄對他們來說，只是派享有聲譽"
RPH_TXT.noGuildSwitch	= "不要切換公會聲望信譽欄"
RPH_TXT.silentSwitch	= "沒有消息聊天的時候切換桿。"
RPH_TXT.guildCap	= "顯示在聊天的公會聲望上限。"
RPH_TXT.defaultChatFrame	= "使用默認的聊天框"
RPH_TXT.chatFrame	= "使用聊天框 %d (%s)"
RPH_TXT.usingDefaultChatFrame	= "Now using default chat frame"
RPH_TXT.usingChatFrame	= "Now using chat frame"
RPH_TXT.EnableParagonBar = "Display paragon reputation in bars."
-- various LUA	
RPH_TXT.options	= "Options"
RPH_TXT.orderByStanding	= "Order by Standing"
RPH_TXT.lookup	= "Looking up faction "
RPH_TXT.allFactions	= "列出所有派別"
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
RPH_TXT.AU	= "任何無名"
RPH_TXT.AN	= "任何命名"
RPH_TXT.BB	= "Bloodsail Buccaneer"
RPH_TXT.SSP	= "Southsea Pirate"
RPH_TXT.Wa	= "Wastewander"
RPH_TXT.VCm	= "Any Venture Co. mob"
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
RPH_TXT.questSummaryTip	= "該條目顯示了一個總結上面列出的所有任務。\r\n 假設所有列出的任務是日常任務，因為這會告訴你有多少天它會帶你到達下一個信譽等級，如果你做所有的日常任務每天，這是非常有用的。"
RPH_TXT.complete	= "完成"
RPH_TXT.active	= "活躍"
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
RPH_TXT.skillHerb	= "草藥"
RPH_TXT.skillMine	= "採礦"
RPH_TXT.skillSkin	= "剝皮"
RPH_TXT.skillAlch	= "煉金"
RPH_TXT.skillBlack	= "鍛造"
RPH_TXT.skillEnch	= "附魔"
RPH_TXT.skillEngi	= "工程學"
RPH_TXT.skillIncrip	= "題詞"
RPH_TXT.skillJewel	= "珠寶加工"
RPH_TXT.skillLeath	= "製皮"
RPH_TXT.skillTail	= "裁縫"
RPH_TXT.skillAid	= "急救"
RPH_TXT.skillArch	= "考古"
RPH_TXT.skillCook	= "烹飪"
RPH_TXT.skillFish	= "釣魚"
-- Tooltip	
RPH_TXT.elements	= {}
RPH_TXT.elements.name	= {}
RPH_TXT.elements.tip	= {}
	
RPH_TXT.elements.name.RPH_OptionsButton	= RPH_TXT.options
RPH_TXT.elements.tip.RPH_OptionsButton	= "打開窗口配置RepHelper。"
RPH_TXT.elements.name.RPH_OrderByStandingCheckBox	= RPH_TXT.orderByStanding
RPH_TXT.elements.tip.RPH_OrderByStandingCheckBox	= "如果不選中此框，派列表顯示默認（暴雪）排序，分組邏輯和字母順序排列。\r\n\r\n如果選中此複選框，派列表排序站在\r\n\r\n要查看| cFFFAA0A0無效|r派系，取消選中此框和列表的底部。"
	
RPH_TXT.elements.name.RPH_ShowMobsButton	= RPH_TXT.showMobs
RPH_TXT.elements.tip.RPH_ShowMobsButton	= "檢查此按鈕，看你能殺小怪來提高你的聲譽。"
RPH_TXT.elements.name.RPH_ShowQuestButton	= RPH_TXT.showQuests
RPH_TXT.elements.tip.RPH_ShowQuestButton	= "檢查此按鈕可看到任務可以做，以提高你的聲譽。"
RPH_TXT.elements.name.RPH_ShowItemsButton	= RPH_TXT.showItems
RPH_TXT.elements.tip.RPH_ShowItemsButton	= "檢查此按鈕，看到手的項目，你可以提高你的聲譽。"
RPH_TXT.elements.name.RPH_ShowInstancesButton	= RPH_TXT.showInstances
RPH_TXT.elements.tip.RPH_ShowInstancesButton	= "檢查此按鈕可看到運行的情況下，你可以提高你的聲譽。"
RPH_TXT.elements.name.RPH_ShowGeneralButton	= RPH_TXT.showGeneral
RPH_TXT.elements.tip.RPH_ShowGeneralButton	= "檢查此按鈕可看到一般信息，提高你的聲譽。"
	
RPH_TXT.elements.name.RPH_ShowAllButton	= RPH_TXT.showAll
RPH_TXT.elements.tip.RPH_ShowAllButton	= "按下此按鈕可檢查所有四個複選框的左側。\r\n這將顯示小怪，任務，物品和實例，讓你的聲譽目前選定的派系。"
RPH_TXT.elements.name.RPH_ShowNoneButton	= RPH_TXT.showNone
RPH_TXT.elements.tip.RPH_ShowNoneButton	= "按下此按鈕，取消所有的四個複選框的左側。\r\n這會告訴你的方法沒有贏得口碑，目前選擇的派系。"
	
RPH_TXT.elements.name.RPH_ExpandButton	= RPH_TXT.expand
RPH_TXT.elements.tip.RPH_ExpandButton	= "按下此按鈕可展開列表中的所有條目。這將顯示您在任何項目的收集任務所需的材料手。"
RPH_TXT.elements.name.RPH_CollapseButton	= RPH_TXT.collapse
RPH_TXT.elements.tip.RPH_CollapseButton	= "按下此按鈕折疊所有列表中的條目。這將隱藏在收集任務所需的材料手。"
RPH_TXT.elements.name.RPH_SupressNoneFactionButton	= RPH_TXT.supressNoneFaction
RPH_TXT.elements.tip.RPH_SupressNoneFactionButton	= "按下此按鈕可重新啟用所有權利點擊它可以排除這個派別的任務。"
RPH_TXT.elements.name.RPH_SupressNoneGlobalButton	= RPH_TXT.supressNoneGlobal
RPH_TXT.elements.tip.RPH_SupressNoneGlobalButton	= "按下此按鈕可重新啟用通過右鍵點擊它可以排除所有派別的所有任務。"
RPH_TXT.elements.name.RPH_ClearSessionGainButton	= RPH_TXT.clearSessionGain
RPH_TXT.elements.tip.RPH_ClearSessionGainButton	= "按下此按鈕來清除重置計數器聲譽，獲得了本次會議。"
	
RPH_TXT.elements.name.RPH_EnableMissingBox	= RPH_TXT.showMissing
RPH_TXT.elements.tip.RPH_EnableMissingBox	= "啟用此設置，添加丟失的聲譽點需要在未來的聲譽站在每個派別的聲譽框架背後的當前水平。"
RPH_TXT.elements.name.RPH_ExtendDetailsBox	= RPH_TXT.extendDetails
RPH_TXT.elements.tip.RPH_ExtendDetailsBox	= "啟用此設置以顯示擴展聲譽細節幀\r\n除了在原來的詳細框架顯示的信息，這會顯示丟失的聲譽需要到達下一個信譽等級，並以列表的方式來獲得這種聲譽由上市的任務，怪物，物品和實例產生選擇派的聲譽。"
RPH_TXT.elements.name.RPH_GainToChatBox	= RPH_TXT.gainToChat
RPH_TXT.elements.tip.RPH_GainToChatBox	= "啟用此設置來顯示的聲譽獲得了所有派別，每當你獲得的聲譽。\r \n這不同於報告聲譽增益的標準的方式，通常情況下，只有上市收益的主要派別。"
RPH_TXT.elements.name.RPH_NoGuildGainBox	= RPH_TXT.noGuildGain
RPH_TXT.elements.tip.RPH_NoGuildGainBox	= "啟用此設置不打印消息聊天公會聲望。"
RPH_TXT.elements.name.RPH_SupressOriginalGainBox	= RPH_TXT.suppressOriginalGain
RPH_TXT.elements.tip.RPH_SupressOriginalGainBox	= "啟用此設置來抑制標準聲譽增益消息。\r \n這是有道理的，如果已經啟用了詳細的派系增益消息，所以你無法得到相同的上市標準和擴展版本。"
RPH_TXT.elements.name.RPH_ShowPreviewRepBox	= RPH_TXT.showPreviewRep
RPH_TXT.elements.tip.RPH_ShowPreviewRepBox	= "啟用此設置，你可以獲得交付項目和已完成的任務，作為一個灰色條覆蓋在正常的聲譽酒吧的聲譽幀顯示的聲譽。"
RPH_TXT.elements.name.RPH_SwitchFactionBarBox	= RPH_TXT.switchFactionBar
RPH_TXT.elements.tip.RPH_SwitchFactionBarBox	= "啟用此設置可自動切換的派系正在觀看的最後一個派別就是你所獲得的聲譽。"
RPH_TXT.elements.name.RPH_NoGuildSwitchBox	= RPH_TXT.noGuildSwitch
RPH_TXT.elements.tip.RPH_NoGuildSwitchBox	= "啟用此設置不切換觀看派公會聲望收益。"
RPH_TXT.elements.name.RPH_SilentSwitchBox	= RPH_TXT.silentSwitch
RPH_TXT.elements.tip.RPH_SilentSwitchBox	= "啟用此設置靜默信譽欄切換（沒有消息聊天）。"
RPH_TXT.elements.name.RPH_GuildCapBox	= RPH_TXT.guildCap
RPH_TXT.elements.name.RPH_ChatFrameSlider	= "聊天幀"
RPH_TXT.elements.tip.RPH_ChatFrameSlider	= "選擇聊天框架RepHelper打印其消息。"
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
end