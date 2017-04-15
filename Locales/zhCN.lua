-- Simplified Chinese (简体中文)	
--------------------	--------------------
if (GetLocale() =="zhCN") then	
	
-- Binding names	
BINDING_HEADER_FACTIONIZER	= "Factionizer"
BINDING_NAME_SHOWCONFIG	= "显示选项“窗口"
BINDING_NAME_SHOWDETAILS	= "显示声誉细节窗口"
	
FIZ_TXT	= {}
-- help	
FIZ_TXT.help	= "一个工具来管理你的声誉"
FIZ_TXT.command	= "无法解析命令"
FIZ_TXT.usage	= "用法"
FIZ_TXT.helphelp	= "显示此帮助文本"
FIZ_TXT.helpabout	= "只看该作者信息"
FIZ_TXT.helpstatus	= "显示配置状态"
-- about	
FIZ_TXT.by	= "由"
FIZ_TXT.version	= "版本"
FIZ_TXT.date	= "日"
FIZ_TXT.web	= "网站"
FIZ_TXT.slash	= "斜线命令"
FIZ_TXT_STAND_LV	= {}
FIZ_TXT_STAND_LV[0]	= "未知"
FIZ_TXT_STAND_LV[1]	= "讨厌"
FIZ_TXT_STAND_LV[2]	= "敌对的"
FIZ_TXT_STAND_LV[3]	= "不友好"
FIZ_TXT_STAND_LV[4]	= "中性"
FIZ_TXT_STAND_LV[5]	= "友好"
FIZ_TXT_STAND_LV[6]	= "荣幸"
FIZ_TXT_STAND_LV[7]	= "崇敬"
FIZ_TXT_STAND_LV[8]	= "崇高的"
-- status	
FIZ_TXT.status	= "状态"
FIZ_TXT.disabled	= "禁用"
FIZ_TXT.enabled	= "启用"
FIZ_TXT.statMobs	= "显示暴民 [M]"
FIZ_TXT.statQuests	= "显示任务 [Q]"
FIZ_TXT.statInstances	= "显示实例 [D]"
FIZ_TXT.statItems	= "显示项目 [I]"
FIZ_TXT.statGeneral	= "显示一般 [G]"
FIZ_TXT.statMissing	= "显示缺少信誉"
FIZ_TXT.statDetails	= "显示延长详细框架"
FIZ_TXT.statChat	= "详细的聊天消息"
FIZ_TXT.statNoGuildChat	= "没有公会声望聊天"
FIZ_TXT.statSuppress	= "抑制原始的聊天信息"
FIZ_TXT.statPreview	= "显示预览信誉在声誉帧"
FIZ_TXT.statSwitch	= "自动切换派系信誉栏"
FIZ_TXT.statNoGuildSwitch	= "公会声望没有切换"
FIZ_TXT.statSilentSwitch	= "没有消息的时候切换杆"
FIZ_TXT.statGuildCap	= "显示在聊天的公会声望上限"
-- XML UI elements	
FIZ_TXT.showQuests	= "显示任务"
FIZ_TXT.showInstances	= "显示实例"
FIZ_TXT.showMobs	= "显示暴民"
FIZ_TXT.showItems	= "显示项目"
FIZ_TXT.showGeneral	= "显示一般"
FIZ_TXT.showAll	= "显示全部"
FIZ_TXT.showNone	= "显示“无”"
FIZ_TXT.expand	= "扩大"
FIZ_TXT.collapse	= "崩溃"
FIZ_TXT.supressNoneFaction	= "清除排除派"
FIZ_TXT.supressNoneGlobal	= "清除排除"
FIZ_TXT.suppressHint	= "右键单击一个任务，排除它从汇总"
FIZ_TXT.clearSessionGain	= "清除会话增益计数器"
-- options dialog	
FIZ_TXT.showMissing	= "显示缺少的声誉，声誉框架"
FIZ_TXT.extendDetails	= "显示延长声誉细节框架"
FIZ_TXT.gainToChat	= "写详细的派增益消息，聊天窗口"
FIZ_TXT.noGuildGain	= "不要写聊天公会声望"
FIZ_TXT.suppressOriginalGain	= "剿原派增益消息"
FIZ_TXT.showPreviewRep	= "显示声誉，可以传世的声誉帧"
FIZ_TXT.switchFactionBar	= "开关信誉栏对他们来说，只是派享有声誉"
FIZ_TXT.noGuildSwitch	= "不要切换公会声望信誉栏"
FIZ_TXT.silentSwitch	= "没有消息聊天的时候切换杆。"
FIZ_TXT.guildCap	= "显示在聊天的公会声望上限。"
FIZ_TXT.defaultChatFrame	= "使用默认的聊天框"
FIZ_TXT.chatFrame	= "使用聊天框 %d (%s)"
FIZ_TXT.usingDefaultChatFrame	= "Now using default chat frame"
FIZ_TXT.usingChatFrame	= "Now using chat frame"
FIZ_TXT.EnableParagonBar = "Display paragon reputation in bars."
-- various LUA	
FIZ_TXT.options	= "Options"
FIZ_TXT.orderByStanding	= "Order by Standing"
FIZ_TXT.lookup	= "Looking up faction "
FIZ_TXT.allFactions	= "列出所有派别"
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
FIZ_TXT.AU	= "任何无名"
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
FIZ_TXT.questSummaryTip	= "该条目显示了一个总结上面列出的所有任务。\R\N 假设所有列出的任务是日常任务，因为这会告诉你有多少天它会带你到达下一个信誉等级，如果你做所有的日常任务每天，这是非常有用的。"
FIZ_TXT.complete	= "完成"
FIZ_TXT.active	= "活跃"
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
FIZ_TXT.skillHerb	= "草药"
FIZ_TXT.skillMine	= "采矿"
FIZ_TXT.skillSkin	= "剥皮"
FIZ_TXT.skillAlch	= "炼金"
FIZ_TXT.skillBlack	= "锻造"
FIZ_TXT.skillEnch	= "附魔"
FIZ_TXT.skillEngi	= "工程学"
FIZ_TXT.skillIncrip	= "题词"
FIZ_TXT.skillJewel	= "珠宝加工"
FIZ_TXT.skillLeath	= "制皮"
FIZ_TXT.skillTail	= "裁缝"
FIZ_TXT.skillAid	= "急救"
FIZ_TXT.skillArch	= "考古"
FIZ_TXT.skillCook	= "烹饪"
FIZ_TXT.skillFish	= "钓鱼"
-- Tooltip	
FIZ_TXT.elements	= {}
FIZ_TXT.elements.name	= {}
FIZ_TXT.elements.tip	= {}
	
FIZ_TXT.elements.name.FIZ_OptionsButton	= FIZ_TXT.options
FIZ_TXT.elements.tip.FIZ_OptionsButton	= "打开窗口配置Factionizer。"
FIZ_TXT.elements.name.FIZ_OrderByStandingCheckBox	= FIZ_TXT.orderByStanding
FIZ_TXT.elements.tip.FIZ_OrderByStandingCheckBox	= "如果不选中此框，派列表显示默认（暴雪）排序，分组逻辑和字母顺序排列。\r\n\r\n如果选中此复选框，派列表排序站在\r\ n\ r \ n要查看| cFFFAA0A0无效|r派系，取消选中此框和列表的底部。"
	
FIZ_TXT.elements.name.FIZ_ShowMobsButton	= FIZ_TXT.showMobs
FIZ_TXT.elements.tip.FIZ_ShowMobsButton	= "检查此按钮，看看你能杀的小怪来提高你的声誉。"
FIZ_TXT.elements.name.FIZ_ShowQuestButton	= FIZ_TXT.showQuests
FIZ_TXT.elements.tip.FIZ_ShowQuestButton	= "检查此按钮可看到任务可以做，以提高你的声誉。"
FIZ_TXT.elements.name.FIZ_ShowItemsButton	= FIZ_TXT.showItems
FIZ_TXT.elements.tip.FIZ_ShowItemsButton	= "检查此按钮，看到手的项目，你可以提高你的声誉。"
FIZ_TXT.elements.name.FIZ_ShowInstancesButton	= FIZ_TXT.showInstances
FIZ_TXT.elements.tip.FIZ_ShowInstancesButton	= "检查此按钮可看到运行的情况下，你可以提高你的声誉。"
FIZ_TXT.elements.name.FIZ_ShowGeneralButton	= FIZ_TXT.showGeneral
FIZ_TXT.elements.tip.FIZ_ShowGeneralButton	= "检查此按钮可看到一般信息，提高你的声誉。"
	
FIZ_TXT.elements.name.FIZ_ShowAllButton	= FIZ_TXT.showAll
FIZ_TXT.elements.tip.FIZ_ShowAllButton	= "按下此按钮可检查所有四个复选框的左侧。\r\n这将显示小怪，任务，物品和实例，让你的声誉目前选定的派系。"
FIZ_TXT.elements.name.FIZ_ShowNoneButton	= FIZ_TXT.showNone
FIZ_TXT.elements.tip.FIZ_ShowNoneButton	= "按下此按钮，取消所有的四个复选框的左侧。\r\n这会告诉你的方法没有赢得口碑，目前选择的派系。"
	
FIZ_TXT.elements.name.FIZ_ExpandButton	= FIZ_TXT.expand
FIZ_TXT.elements.tip.FIZ_ExpandButton	= "按下此按钮可展开列表中的所有条目。这将显示您在任何项目的收集任务所需的材料手。"
FIZ_TXT.elements.name.FIZ_CollapseButton	= FIZ_TXT.collapse
FIZ_TXT.elements.tip.FIZ_CollapseButton	= "按下此按钮折叠所有列表中的条目。这将隐藏在收集任务所需的材料手。"
FIZ_TXT.elements.name.FIZ_SupressNoneFactionButton	= FIZ_TXT.supressNoneFaction
FIZ_TXT.elements.tip.FIZ_SupressNoneFactionButton	= "按下此按钮可重新启用所有权利点击它可以排除这个派别的任务。"
FIZ_TXT.elements.name.FIZ_SupressNoneGlobalButton	= FIZ_TXT.supressNoneGlobal
FIZ_TXT.elements.tip.FIZ_SupressNoneGlobalButton	= "按下此按钮可重新启用通过右键点击它可以排除所有派别​​的所有任务。"
FIZ_TXT.elements.name.FIZ_ClearSessionGainButton	= FIZ_TXT.clearSessionGain
FIZ_TXT.elements.tip.FIZ_ClearSessionGainButton	= "按下此按钮来清除重置计数器声誉，获得了本次会议。"
	
FIZ_TXT.elements.name.FIZ_EnableMissingBox	= FIZ_TXT.showMissing
FIZ_TXT.elements.tip.FIZ_EnableMissingBox	= "启用此设置，添加丢失的声誉点需要在未来的声誉站在每个派别的声誉框架背后的当前水平。"
FIZ_TXT.elements.name.FIZ_ExtendDetailsBox	= FIZ_TXT.extendDetails
FIZ_TXT.elements.tip.FIZ_ExtendDetailsBox	= "启用此设置以显示扩展声誉细节帧 \r\n除了在原来的详细框架显示的信息，这会显示丢失的声誉需要到达下一个信誉等级，并以列表的方式来获得这种声誉由上市的任务，怪物，物品和实例产生选择派的声誉。"
FIZ_TXT.elements.name.FIZ_GainToChatBox	= FIZ_TXT.gainToChat
FIZ_TXT.elements.tip.FIZ_GainToChatBox	= "启用此设置来显示的声誉获得了所有派别​​，每当你获得的声誉。\ r \ n这不同于报告声誉增益的标准的方式，通常情况下，只有上市收益的主要派别。"
FIZ_TXT.elements.name.FIZ_NoGuildGainBox	= FIZ_TXT.noGuildGain
FIZ_TXT.elements.tip.FIZ_NoGuildGainBox	= "启用此设置不打印消息聊天公会声望。"
FIZ_TXT.elements.name.FIZ_SupressOriginalGainBox	= FIZ_TXT.suppressOriginalGain
FIZ_TXT.elements.tip.FIZ_SupressOriginalGainBox	= "启用此设置来抑制标准声誉增益消息。\ r \ n这是有道理的，如果已经启用了详细的派系增益消息，所以你无法得到相同的上市标准和扩展版本。"
FIZ_TXT.elements.name.FIZ_ShowPreviewRepBox	= FIZ_TXT.showPreviewRep
FIZ_TXT.elements.tip.FIZ_ShowPreviewRepBox	= "启用此设置，你可以获得交付项目和已完成的任务，作为一个灰色条覆盖在正常的声誉酒吧的声誉帧显示的声誉。"
FIZ_TXT.elements.name.FIZ_SwitchFactionBarBox	= FIZ_TXT.switchFactionBar
FIZ_TXT.elements.tip.FIZ_SwitchFactionBarBox	= "启用此设置可自动切换的派系正在观看的最后一个派别就是你所获得的声誉。"
FIZ_TXT.elements.name.FIZ_NoGuildSwitchBox	= FIZ_TXT.noGuildSwitch
FIZ_TXT.elements.tip.FIZ_NoGuildSwitchBox	= "启用此设置不切换观看派公会声望收益。"
FIZ_TXT.elements.name.FIZ_SilentSwitchBox	= FIZ_TXT.silentSwitch
FIZ_TXT.elements.tip.FIZ_SilentSwitchBox	= "启用此设置静默信誉栏切换（没有消息聊天）。"
FIZ_TXT.elements.name.FIZ_GuildCapBox	= FIZ_TXT.guildCap
FIZ_TXT.elements.name.FIZ_ChatFrameSlider	= "聊天帧"
FIZ_TXT.elements.tip.FIZ_ChatFrameSlider	= "选择聊天框架Factionizer打印其消息。"
FIZ_TXT.elements.name.FIZ_EnableParagonBarBox = FIZ_TXT.EnableParagonBar
FIZ_TXT.elements.tip.FIZ_EnableParagonBarBox  = "Enable this option to display your current paragon progress in the reputation bars."	
	
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
FIZ_TXT.elements.name.FIZ_OptionEnableParagonBar = FIZ_TXT.elements.name.FIZ_EnableParagonBarBox
FIZ_TXT.elements.tip.FIZ_OptionEnableParagonBar = FIZ_TXT.elements.tip.FIZ_EnableParagonBarBox
FIZ_TXT.elements.name.FIZ_OptionEnableParagonBarCB = FIZ_TXT.elements.name.FIZ_EnableParagonBarBox
FIZ_TXT.elements.tip.FIZ_OptionEnableParagonBarCB = FIZ_TXT.elements.tip.FIZ_EnableParagonBarBox
end