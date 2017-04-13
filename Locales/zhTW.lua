-- Traditional Chinese (正體中文)	
--------------------	--------------------
if (GetLocale() =="zhTW") then	
	
-- Binding names	
BINDING_HEADER_FACTIONIZER	= "Factionizer"
BINDING_NAME_SHOWCONFIG	= "顯示選項“窗口"
BINDING_NAME_SHOWDETAILS	= "顯示聲譽細節窗口"
	
FIZ_TXT	= {}
-- help	
FIZ_TXT.help	= "一個工具來管理你的聲譽"
FIZ_TXT.command	= "無法解析命令"
FIZ_TXT.usage	= "用法"
FIZ_TXT.helphelp	= "顯示此幫助文本"
FIZ_TXT.helpabout	= "只看該作者信息"
FIZ_TXT.helpstatus	= "顯示配置狀態"
-- about	
FIZ_TXT.by	= "由"
FIZ_TXT.version	= "版本"
FIZ_TXT.date	= "日"
FIZ_TXT.web	= "網站"
FIZ_TXT.slash	= "斜線命令"
FIZ_TXT_STAND_LV	= {}
FIZ_TXT_STAND_LV[0]	= "未知"
FIZ_TXT_STAND_LV[1]	= "討厭"
FIZ_TXT_STAND_LV[2]	= "敵對的"
FIZ_TXT_STAND_LV[3]	= "不友好"
FIZ_TXT_STAND_LV[4]	= "中性"
FIZ_TXT_STAND_LV[5]	= "友好"
FIZ_TXT_STAND_LV[6]	= "榮幸"
FIZ_TXT_STAND_LV[7]	= "崇敬"
FIZ_TXT_STAND_LV[8]	= "崇高的"
-- status	
FIZ_TXT.status	= "狀態"
FIZ_TXT.disabled	= "禁用"
FIZ_TXT.enabled	= "啟用"
FIZ_TXT.statMobs	= "顯示暴民 [M]"
FIZ_TXT.statQuests	= "顯示任務 [Q]"
FIZ_TXT.statInstances	= "顯示實例 [D]"
FIZ_TXT.statItems	= "顯示項目 [I]"
FIZ_TXT.statGeneral	= "顯示一般 [G]"
FIZ_TXT.statMissing	= "顯示缺少信譽"
FIZ_TXT.statDetails	= "顯示延長詳細框架"
FIZ_TXT.statChat	= "詳細的聊天消息"
FIZ_TXT.statNoGuildChat	= "沒有公會聲望聊天"
FIZ_TXT.statSuppress	= "抑制原始的聊天信息"
FIZ_TXT.statPreview	= "顯示預覽信譽在聲譽幀"
FIZ_TXT.statSwitch	= "自動切換派系信譽欄"
FIZ_TXT.statNoGuildSwitch	= "公會聲望沒有切換"
FIZ_TXT.statSilentSwitch	= "沒有消息的時候切換桿"
FIZ_TXT.statGuildCap	= "顯示在聊天的公會聲望上限"
-- XML UI elements	
FIZ_TXT.showQuests	= "顯示任務"
FIZ_TXT.showInstances	= "顯示實例"
FIZ_TXT.showMobs	= "顯示暴民"
FIZ_TXT.showItems	= "顯示項目"
FIZ_TXT.showGeneral	= "顯示一般"
FIZ_TXT.showAll	= "顯示全部"
FIZ_TXT.showNone	= "顯示“無”"
FIZ_TXT.expand	= "擴大"
FIZ_TXT.collapse	= "崩潰"
FIZ_TXT.supressNoneFaction	= "清除排除派"
FIZ_TXT.supressNoneGlobal	= "清除排除"
FIZ_TXT.suppressHint	= "右鍵單擊一個任務，排除它從匯總"
FIZ_TXT.clearSessionGain	= "清除會話增益計數器"
-- options dialog	
FIZ_TXT.showMissing	= "顯示缺少的聲譽，聲譽框架"
FIZ_TXT.extendDetails	= "顯示延長聲譽細節框架"
FIZ_TXT.gainToChat	= "寫詳細的派增益消息，聊天窗口"
FIZ_TXT.noGuildGain	= "不要寫聊天公會聲望"
FIZ_TXT.suppressOriginalGain	= "剿原派增益消息"
FIZ_TXT.showPreviewRep	= "顯示聲譽，可以傳世的聲譽幀"
FIZ_TXT.switchFactionBar	= "開關信譽欄對他們來說，只是派享有聲譽"
FIZ_TXT.noGuildSwitch	= "不要切換公會聲望信譽欄"
FIZ_TXT.silentSwitch	= "沒有消息聊天的時候切換桿。"
FIZ_TXT.guildCap	= "顯示在聊天的公會聲望上限。"
FIZ_TXT.defaultChatFrame	= "使用默認的聊天框"
FIZ_TXT.chatFrame	= "使用聊天框 %d (%s)"
FIZ_TXT.usingDefaultChatFrame	= "Now using default chat frame"
FIZ_TXT.usingChatFrame	= "Now using chat frame"
-- various LUA	
FIZ_TXT.options	= "Options"
FIZ_TXT.orderByStanding	= "Order by Standing"
FIZ_TXT.lookup	= "Looking up faction "
FIZ_TXT.allFactions	= "列出所有派別"
FIZ_TXT.missing	= "(to next)"
FIZ_TXT.missing2	= "Missing"
FIZ_TXT.heroic	= "Heroic"
FIZ_TXT.normal	= "Normal"
FIZ_TXT.switchBar	= "Changing reputation bar to"
-- FIZ_ShowFactions	
FIZ_TXT.faction	= "Faction"
FIZ_TXT.is	= "is"
FIZ_TXT.withStanding	= "with standing"
FIZ_TXT.needed	= "needed"
FIZ_TXT.mob	= "[Mob]"
FIZ_TXT.limited	= "is limited to"
FIZ_TXT.limitedPl	= "are limited to"
FIZ_TXT.quest	= "[Quest]"
FIZ_TXT.instance	= "[Instance]"
FIZ_TXT.items	= "[Items]"
FIZ_TXT.unknown	= "is not known to this player"
-- mob Details	
FIZ_TXT.tmob	= "Trash mobs"
FIZ_TXT.oboss	= "Other Bosses"
FIZ_TXT.aboss	= "All Bosses"
FIZ_TXT.pboss	= "Per Boss"
FIZ_TXT.fclear	= "full clear"
FIZ_TXT.AU	= "任何無名"
FIZ_TXT.AN	= "任何命名"
FIZ_TXT.BB	= "Bloodsail Buccaneer"
FIZ_TXT.SSP	= "Southsea Pirate"
FIZ_TXT.Wa	= "Wastewander"
FIZ_TXT.VCm	= "Any Venture Co. mob"
-- Quest Details	
FIZ_TXT.cdq	= "Main city cooking daily quests"
FIZ_TXT.coq	= "Other city cooking daily quests"
FIZ_TXT.fdq	= "Main city fishing daily quests"
FIZ_TXT.foq	= "Other city fishing daily quests"
FIZ_TXT.ndq	= "no daily quests"
FIZ_TXT.deleted	= "Outdated"
FIZ_TXT.Championing	= "Championing (Tabard)"
FIZ_TXT.bpqfg	= "By percent of quest faction gain"
	
-- items Details	
FIZ_TXT.cbadge	= "Other city Commendation Badge"
-- instance Details	
FIZ_TXT.srfd	= "Spillover rep from dungeons"
FIZ_TXT.tbd	= "ToBe Done"
FIZ_TXT.nci	= "Normal Cataclysm instances"
FIZ_TXT.hci	= "Heroic Cataclysm instances"
-- ToBeDone general	
FIZ_TXT.tfr	= "Tiller Farming rep"
FIZ_TXT.nswts	= "Not sure when this starts"
FIZ_TXT.mnd	= "Max number of daily quests"
FIZ_TXT.mnds	= "The max number of dallies is "
	
	
	
	
	
-- ReputationDetails	
FIZ_TXT.currentRep	= "Current reputation"
FIZ_TXT.neededRep	= "Reputation needed"
FIZ_TXT.missingRep	= "Reputation missing"
FIZ_TXT.repInBag	= "Reputation in bag"
FIZ_TXT.repInBagBank	= "Reputation in bag & bank"
FIZ_TXT.repInQuest	= "Reputation in quests"
FIZ_TXT.factionGained	= "Gained this session"
FIZ_TXT.noInfo	= "No information available for this faction/reputation."
FIZ_TXT.toExalted	= "Reputation to exalted"
FIZ_TXT.toBestFriend = "Reputation to best friend"
-- to chat	
FIZ_TXT.stats	= " (Total: %s%d, Left: %d)"
-- config changed	
FIZ_TXT.configQuestion	= "Some (new) settings were enabled. This is only done once for a setting. It is recommended that you verify the Factionizer options."
FIZ_TXT.showConfig	= "View config"
FIZ_TXT.later	= "Later"
-- UpdateList	
FIZ_TXT.mobShort	= "[M]"
FIZ_TXT.questShort	= "[Q]"
FIZ_TXT.instanceShort	= "[D]"
FIZ_TXT.itemsShort	= "[I]"
FIZ_TXT.generalShort	= "[G]"
FIZ_TXT.mobHead	= "Gain reputation by killing this mob"
FIZ_TXT.questHead	= "Gain reputation by doing this quest"
FIZ_TXT.instanceHead	= "Gain reputation by running this instance"
FIZ_TXT.itemsHead	= "Gain reputation by handing in items"
FIZ_TXT.generalHead	= "General information about gaining reputation"
FIZ_TXT.mobTip	= "Each time you kill this mob, you gain reputation. Doing this often enough, will help you reach the next level."
FIZ_TXT.questTip	= "Each time you complete this repeatable or daily quest, you gain reputation. Doing this often enough, will help you reach the next level."
FIZ_TXT.instanceTip	= "Each time you run this instance, you gain reputation. Doing this often enough, will help you reach the next level."
FIZ_TXT.itemsName	= "Item hand-in"
FIZ_TXT.itemsTip	= "Each time you hand in the listed items, you will gain reputation. Doing this often enough, will help you reach the next level."
FIZ_TXT.generalTip	= "This is information about reputation gain with a faction that does not necessarily relate to repeatable gain methods."
FIZ_TXT.allOfTheAbove	= "Summary of %d quests listed above"
FIZ_TXT.questSummaryHead	= FIZ_TXT.allOfTheAbove
FIZ_TXT.questSummaryTip	= "該條目顯示了一個總結上面列出的所有任務。\R\N 假設所有列出的任務是日常任務，因為這會告訴你有多少天它會帶你到達下一個信譽等級，如果你做所有的日常任務每天，這是非常有用的。"
FIZ_TXT.complete	= "完成"
FIZ_TXT.active	= "活躍"
FIZ_TXT.inBag	= "In bags"
FIZ_TXT.turnIns	= "Turn-ins:"
FIZ_TXT.reputation	= "Reputation:"
FIZ_TXT.reputationCap	= "Reputation cap:"
FIZ_TXT.reputationCapCurrent	= "Current reputation:"
FIZ_TXT.inBagBank	= "In bags and bank"
FIZ_TXT.questCompleted	= "Quest completed"
FIZ_TXT.timesToDo	= "Times to do:"
FIZ_TXT.instance2	= "Instance:"
FIZ_TXT.mode	= "Mode:"
FIZ_TXT.timesToRun	= "Times to run:"
FIZ_TXT.mob2	= "Mob:"
FIZ_TXT.location	= "Location:"
FIZ_TXT.toDo	= "To do:"
FIZ_TXT.quest2	= "Quest:"
FIZ_TXT.itemsRequired	= "Items required"
FIZ_TXT.general2	= "General:"
FIZ_TXT.maxStanding	= "Yields reputation until"
-- skills	
FIZ_TXT.skillHerb	= "草藥"
FIZ_TXT.skillMine	= "採礦"
FIZ_TXT.skillSkin	= "剝皮"
FIZ_TXT.skillAlch	= "煉金"
FIZ_TXT.skillBlack	= "鍛造"
FIZ_TXT.skillEnch	= "附魔"
FIZ_TXT.skillEngi	= "工程學"
FIZ_TXT.skillIncrip	= "題詞"
FIZ_TXT.skillJewel	= "珠寶加工"
FIZ_TXT.skillLeath	= "製皮"
FIZ_TXT.skillTail	= "裁縫"
FIZ_TXT.skillAid	= "急救"
FIZ_TXT.skillArch	= "考古"
FIZ_TXT.skillCook	= "烹飪"
FIZ_TXT.skillFish	= "釣魚"
-- Tooltip	
FIZ_TXT.elements	= {}
FIZ_TXT.elements.name	= {}
FIZ_TXT.elements.tip	= {}
	
FIZ_TXT.elements.name.FIZ_OptionsButton	= FIZ_TXT.options
FIZ_TXT.elements.tip.FIZ_OptionsButton	= "打開窗口配置Factionizer。"
FIZ_TXT.elements.name.FIZ_OrderByStandingCheckBox	= FIZ_TXT.orderByStanding
FIZ_TXT.elements.tip.FIZ_OrderByStandingCheckBox	= "如果不選中此框，派列表顯示默認（暴雪）排序，分組邏輯和字母順序排列。\r\n\r\n如果選中此複選框，派列表排序站在\r\ n\ r\ n要查看| cFFFAA0A0無效|r派系，取消選中此框和列表的底部。"
	
FIZ_TXT.elements.name.FIZ_ShowMobsButton	= FIZ_TXT.showMobs
FIZ_TXT.elements.tip.FIZ_ShowMobsButton	= "檢查此按鈕，看你能殺小怪來提高你的聲譽。"
FIZ_TXT.elements.name.FIZ_ShowQuestButton	= FIZ_TXT.showQuests
FIZ_TXT.elements.tip.FIZ_ShowQuestButton	= "檢查此按鈕可看到任務可以做，以提高你的聲譽。"
FIZ_TXT.elements.name.FIZ_ShowItemsButton	= FIZ_TXT.showItems
FIZ_TXT.elements.tip.FIZ_ShowItemsButton	= "檢查此按鈕，看到手的項目，你可以提高你的聲譽。"
FIZ_TXT.elements.name.FIZ_ShowInstancesButton	= FIZ_TXT.showInstances
FIZ_TXT.elements.tip.FIZ_ShowInstancesButton	= "檢查此按鈕可看到運行的情況下，你可以提高你的聲譽。"
FIZ_TXT.elements.name.FIZ_ShowGeneralButton	= FIZ_TXT.showGeneral
FIZ_TXT.elements.tip.FIZ_ShowGeneralButton	= "檢查此按鈕可看到一般信息，提高你的聲譽。"
	
FIZ_TXT.elements.name.FIZ_ShowAllButton	= FIZ_TXT.showAll
FIZ_TXT.elements.tip.FIZ_ShowAllButton	= "按下此按鈕可檢查所有四個複選框的左側。\r\n這將顯示小怪，任務，物品和實例，讓你的聲譽目前選定的派系。"
FIZ_TXT.elements.name.FIZ_ShowNoneButton	= FIZ_TXT.showNone
FIZ_TXT.elements.tip.FIZ_ShowNoneButton	= "按下此按鈕，取消所有的四個複選框的左側。\r\n這會告訴你的方法沒有贏得口碑，目前選擇的派系。"
	
FIZ_TXT.elements.name.FIZ_ExpandButton	= FIZ_TXT.expand
FIZ_TXT.elements.tip.FIZ_ExpandButton	= "按下此按鈕可展開列表中的所有條目。這將顯示您在任何項目的收集任務所需的材料手。"
FIZ_TXT.elements.name.FIZ_CollapseButton	= FIZ_TXT.collapse
FIZ_TXT.elements.tip.FIZ_CollapseButton	= "按下此按鈕折疊所有列表中的條目。這將隱藏在收集任務所需的材料手。"
FIZ_TXT.elements.name.FIZ_SupressNoneFactionButton	= FIZ_TXT.supressNoneFaction
FIZ_TXT.elements.tip.FIZ_SupressNoneFactionButton	= "按下此按鈕可重新啟用所有權利點擊它可以排除這個派別的任務。"
FIZ_TXT.elements.name.FIZ_SupressNoneGlobalButton	= FIZ_TXT.supressNoneGlobal
FIZ_TXT.elements.tip.FIZ_SupressNoneGlobalButton	= "按下此按鈕可重新啟用通過右鍵點擊它可以排除所有派別的所有任務。"
FIZ_TXT.elements.name.FIZ_ClearSessionGainButton	= FIZ_TXT.clearSessionGain
FIZ_TXT.elements.tip.FIZ_ClearSessionGainButton	= "按下此按鈕來清除重置計數器聲譽，獲得了本次會議。"
	
FIZ_TXT.elements.name.FIZ_EnableMissingBox	= FIZ_TXT.showMissing
FIZ_TXT.elements.tip.FIZ_EnableMissingBox	= "啟用此設置，添加丟失的聲譽點需要在未來的聲譽站在每個派別的聲譽框架背後的當前水平。"
FIZ_TXT.elements.name.FIZ_ExtendDetailsBox	= FIZ_TXT.extendDetails
FIZ_TXT.elements.tip.FIZ_ExtendDetailsBox	= "啟用此設置以顯示擴展聲譽細節幀\r\n除了在原來的詳細框架顯示的信息，這會顯示丟失的聲譽需要到達下一個信譽等級，並以列表的方式來獲得這種聲譽由上市的任務，怪物，物品和實例產生選擇派的聲譽。"
FIZ_TXT.elements.name.FIZ_GainToChatBox	= FIZ_TXT.gainToChat
FIZ_TXT.elements.tip.FIZ_GainToChatBox	= "啟用此設置來顯示的聲譽獲得了所有派別，每當你獲得的聲譽。\ r \ n這不同於報告聲譽增益的標準的方式，通常情況下，只有上市收益的主要派別。"
FIZ_TXT.elements.name.FIZ_NoGuildGainBox	= FIZ_TXT.noGuildGain
FIZ_TXT.elements.tip.FIZ_NoGuildGainBox	= "啟用此設置不打印消息聊天公會聲望。"
FIZ_TXT.elements.name.FIZ_SupressOriginalGainBox	= FIZ_TXT.suppressOriginalGain
FIZ_TXT.elements.tip.FIZ_SupressOriginalGainBox	= "啟用此設置來抑制標準聲譽增益消息。\ r \ n這是有道理的，如果已經啟用了詳細的派系增益消息，所以你無法得到相同的上市標準和擴展版本。"
FIZ_TXT.elements.name.FIZ_ShowPreviewRepBox	= FIZ_TXT.showPreviewRep
FIZ_TXT.elements.tip.FIZ_ShowPreviewRepBox	= "啟用此設置，你可以獲得交付項目和已完成的任務，作為一個灰色條覆蓋在正常的聲譽酒吧的聲譽幀顯示的聲譽。"
FIZ_TXT.elements.name.FIZ_SwitchFactionBarBox	= FIZ_TXT.switchFactionBar
FIZ_TXT.elements.tip.FIZ_SwitchFactionBarBox	= "啟用此設置可自動切換的派系正在觀看的最後一個派別就是你所獲得的聲譽。"
FIZ_TXT.elements.name.FIZ_NoGuildSwitchBox	= FIZ_TXT.noGuildSwitch
FIZ_TXT.elements.tip.FIZ_NoGuildSwitchBox	= "啟用此設置不切換觀看派公會聲望收益。"
FIZ_TXT.elements.name.FIZ_SilentSwitchBox	= FIZ_TXT.silentSwitch
FIZ_TXT.elements.tip.FIZ_SilentSwitchBox	= "啟用此設置靜默信譽欄切換（沒有消息聊天）。"
FIZ_TXT.elements.name.FIZ_GuildCapBox	= FIZ_TXT.guildCap
FIZ_TXT.elements.name.FIZ_ChatFrameSlider	= "聊天幀"
FIZ_TXT.elements.tip.FIZ_ChatFrameSlider	= "選擇聊天框架Factionizer打印其消息。"
	
FIZ_TXT.elements.name.FIZ_OptionEnableMissing	= FIZ_TXT.elements.name.FIZ_EnableMissingBox
FIZ_TXT.elements.tip.FIZ_OptionEnableMissing	= FIZ_TXT.elements.tip.FIZ_EnableMissingBox
FIZ_TXT.elements.name.FIZ_OptionEnableMissingCB	= FIZ_TXT.elements.name.FIZ_EnableMissingBox
FIZ_TXT.elements.tip.FIZ_OptionEnableMissingCB	= FIZ_TXT.elements.tip.FIZ_EnableMissingBox
FIZ_TXT.elements.name.FIZ_OptionExtendDetails	= FIZ_TXT.elements.name.FIZ_ExtendDetailsBox
FIZ_TXT.elements.tip.FIZ_OptionExtendDetails	= FIZ_TXT.elements.tip.FIZ_ExtendDetailsBox
FIZ_TXT.elements.name.FIZ_OptionExtendDetailsCB	= FIZ_TXT.elements.name.FIZ_ExtendDetailsBox
FIZ_TXT.elements.tip.FIZ_OptionExtendDetailsCB	= FIZ_TXT.elements.tip.FIZ_ExtendDetailsBox
FIZ_TXT.elements.name.FIZ_OptionGainToChat	= FIZ_TXT.elements.name.FIZ_GainToChatBox
FIZ_TXT.elements.tip.FIZ_OptionGainToChat	= FIZ_TXT.elements.tip.FIZ_GainToChatBox
FIZ_TXT.elements.name.FIZ_OptionGainToChatCB	= FIZ_TXT.elements.name.FIZ_GainToChatBox
FIZ_TXT.elements.tip.FIZ_OptionGainToChatCB	= FIZ_TXT.elements.tip.FIZ_GainToChatBox
FIZ_TXT.elements.name.FIZ_OptionNoGuildGain	= FIZ_TXT.elements.name.FIZ_NoGuildGainBox
FIZ_TXT.elements.tip.FIZ_OptionNoGuildGain	= FIZ_TXT.elements.tip.FIZ_NoGuildGainBox
FIZ_TXT.elements.name.FIZ_OptionNoGuildGainCB	= FIZ_TXT.elements.name.FIZ_NoGuildGainBox
FIZ_TXT.elements.tip.FIZ_OptionNoGuildGainCB	= FIZ_TXT.elements.tip.FIZ_NoGuildGainBox
FIZ_TXT.elements.name.FIZ_OptionSupressOriginalGain	= FIZ_TXT.elements.name.FIZ_SupressOriginalGainBox
FIZ_TXT.elements.tip.FIZ_OptionSupressOriginalGain	= FIZ_TXT.elements.tip.FIZ_SupressOriginalGainBox
FIZ_TXT.elements.name.FIZ_OptionSupressOriginalGainCB	= FIZ_TXT.elements.name.FIZ_SupressOriginalGainBox
FIZ_TXT.elements.tip.FIZ_OptionSupressOriginalGainCB	= FIZ_TXT.elements.tip.FIZ_SupressOriginalGainBox
FIZ_TXT.elements.name.FIZ_OptionShowPreviewRep	= FIZ_TXT.elements.name.FIZ_ShowPreviewRepBox
FIZ_TXT.elements.tip.FIZ_OptionShowPreviewRep	= FIZ_TXT.elements.tip.FIZ_ShowPreviewRepBox
FIZ_TXT.elements.name.FIZ_OptionShowPreviewRepCB	= FIZ_TXT.elements.name.FIZ_ShowPreviewRepBox
FIZ_TXT.elements.tip.FIZ_OptionShowPreviewRepCB	= FIZ_TXT.elements.tip.FIZ_ShowPreviewRepBox
FIZ_TXT.elements.name.FIZ_OptionSwitchFactionBar	= FIZ_TXT.elements.name.FIZ_SwitchFactionBarBox
FIZ_TXT.elements.tip.FIZ_OptionSwitchFactionBar	= FIZ_TXT.elements.tip.FIZ_SwitchFactionBarBox
FIZ_TXT.elements.name.FIZ_OptionSwitchFactionBarCB	= FIZ_TXT.elements.name.FIZ_SwitchFactionBarBox
FIZ_TXT.elements.tip.FIZ_OptionSwitchFactionBarCB	= FIZ_TXT.elements.tip.FIZ_SwitchFactionBarBox
FIZ_TXT.elements.name.FIZ_OptionNoGuildSwitch	= FIZ_TXT.elements.name.FIZ_NoGuildSwitchBox
FIZ_TXT.elements.tip.FIZ_OptionNoGuildSwitch	= FIZ_TXT.elements.tip.FIZ_NoGuildSwitchBox
FIZ_TXT.elements.name.FIZ_OptionNoGuildSwitchCB	= FIZ_TXT.elements.name.FIZ_NoGuildSwitchBox
FIZ_TXT.elements.tip.FIZ_OptionNoGuildSwitchCB	= FIZ_TXT.elements.tip.FIZ_NoGuildSwitchBox
FIZ_TXT.elements.name.FIZ_OptionSilentSwitch	= FIZ_TXT.elements.name.FIZ_SilentSwitchBox
FIZ_TXT.elements.tip.FIZ_OptionSilentSwitch	= FIZ_TXT.elements.tip.FIZ_SilentSwitchBox
FIZ_TXT.elements.name.FIZ_OptionSilentSwitchCB	= FIZ_TXT.elements.name.FIZ_SilentSwitchBox
FIZ_TXT.elements.tip.FIZ_OptionSilentSwitchCB	= FIZ_TXT.elements.tip.FIZ_SilentSwitchBox
FIZ_TXT.elements.name.FIZ_OptionGuildCap	= FIZ_TXT.elements.name.FIZ_GuildCapBox
FIZ_TXT.elements.tip.FIZ_OptionGuildCap	= FIZ_TXT.elements.tip.FIZ_GuildCapBox
FIZ_TXT.elements.name.FIZ_OptionGuildCapCB	= FIZ_TXT.elements.name.FIZ_GuildCapBox
FIZ_TXT.elements.tip.FIZ_OptionGuildCapCB	= FIZ_TXT.elements.tip.FIZ_GuildCapBox
FIZ_TXT.elements.name.FIZ_OptionChatFrameSlider	= FIZ_TXT.elements.name.FIZ_ChatFrameSlider
FIZ_TXT.elements.tip.FIZ_OptionChatFrameSlider	= FIZ_TXT.elements.tip.FIZ_ChatFrameSlider
end