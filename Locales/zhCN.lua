-- Simplified Chinese (简体中文)	
--------------------	--------------------
if (GetLocale() =="zhCN") then	
	
-- Binding names	
BINDING_HEADER_REPHELPER	= "RepHelper"
BINDING_NAME_SHOWCONFIG	= "显示选项“窗口"
BINDING_NAME_SHOWDETAILS	= "显示声誉细节窗口"
	
RPH_TXT	= {}
-- help	
RPH_TXT.help	= "一个工具来管理你的声誉"
RPH_TXT.command	= "无法解析命令"
RPH_TXT.usage	= "用法"
RPH_TXT.helphelp	= "显示此帮助文本"
RPH_TXT.helpabout	= "只看该作者信息"
RPH_TXT.helpstatus	= "显示配置状态"
-- about	
RPH_TXT.by	= "由"
RPH_TXT.version	= "版本"
RPH_TXT.date	= "日"
RPH_TXT.web	= "网站"
RPH_TXT.slash	= "斜线命令"
RPH_TXT_STAND_LV	= {}
RPH_TXT_STAND_LV[0]	= "未知"
RPH_TXT_STAND_LV[1]	= "讨厌"
RPH_TXT_STAND_LV[2]	= "敌对的"
RPH_TXT_STAND_LV[3]	= "不友好"
RPH_TXT_STAND_LV[4]	= "中性"
RPH_TXT_STAND_LV[5]	= "友好"
RPH_TXT_STAND_LV[6]	= "荣幸"
RPH_TXT_STAND_LV[7]	= "崇敬"
RPH_TXT_STAND_LV[8]	= "崇高的"
-- status	
RPH_TXT.status	= "状态"
RPH_TXT.disabled	= "禁用"
RPH_TXT.enabled	= "启用"
RPH_TXT.statMobs	= "显示暴民 [M]"
RPH_TXT.statQuests	= "显示任务 [Q]"
RPH_TXT.statInstances	= "显示实例 [D]"
RPH_TXT.statItems	= "显示项目 [I]"
RPH_TXT.statGeneral	= "显示一般 [G]"
RPH_TXT.statMissing	= "显示缺少信誉"
RPH_TXT.statDetails	= "显示延长详细框架"
RPH_TXT.statChat	= "详细的聊天消息"
RPH_TXT.statNoGuildChat	= "没有公会声望聊天"
RPH_TXT.statSuppress	= "抑制原始的聊天信息"
RPH_TXT.statPreview	= "显示预览信誉在声誉帧"
RPH_TXT.statSwitch	= "自动切换派系信誉栏"
RPH_TXT.statNoGuildSwitch	= "公会声望没有切换"
RPH_TXT.statSilentSwitch	= "没有消息的时候切换杆"
RPH_TXT.statGuildCap	= "显示在聊天的公会声望上限"
-- XML UI elements	
RPH_TXT.showQuests	= "显示任务"
RPH_TXT.showInstances	= "显示实例"
RPH_TXT.showMobs	= "显示暴民"
RPH_TXT.showItems	= "显示项目"
RPH_TXT.showGeneral	= "显示一般"
RPH_TXT.showAll	= "显示全部"
RPH_TXT.showNone	= "显示“无”"
RPH_TXT.expand	= "扩大"
RPH_TXT.collapse	= "崩溃"
RPH_TXT.supressNoneFaction	= "清除排除派"
RPH_TXT.supressNoneGlobal	= "清除排除"
RPH_TXT.suppressHint	= "右键单击一个任务，排除它从汇总"
RPH_TXT.clearSessionGain	= "清除会话增益计数器"
-- options dialog	
RPH_TXT.showMissing	= "显示缺少的声誉，声誉框架"
RPH_TXT.extendDetails	= "显示延长声誉细节框架"
RPH_TXT.gainToChat	= "写详细的派增益消息，聊天窗口"
RPH_TXT.noGuildGain	= "不要写聊天公会声望"
RPH_TXT.suppressOriginalGain	= "剿原派增益消息"
RPH_TXT.showPreviewRep	= "显示声誉，可以传世的声誉帧"
RPH_TXT.switchFactionBar	= "开关信誉栏对他们来说，只是派享有声誉"
RPH_TXT.noGuildSwitch	= "不要切换公会声望信誉栏"
RPH_TXT.silentSwitch	= "没有消息聊天的时候切换杆。"
RPH_TXT.guildCap	= "显示在聊天的公会声望上限。"
RPH_TXT.defaultChatFrame	= "使用默认的聊天框"
RPH_TXT.chatFrame	= "使用聊天框 %d (%s)"
RPH_TXT.usingDefaultChatFrame	= "Now using default chat frame"
RPH_TXT.usingChatFrame	= "Now using chat frame"
RPH_TXT.EnableParagonBar = "Display paragon reputation in bars."
-- various LUA	
RPH_TXT.options	= "Options"
RPH_TXT.orderByStanding	= "Order by Standing"
RPH_TXT.lookup	= "Looking up faction "
RPH_TXT.allFactions	= "列出所有派别"
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
RPH_TXT.AU	= "任何无名"
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
RPH_TXT.questSummaryTip	= "该条目显示了一个总结上面列出的所有任务。\R\N 假设所有列出的任务是日常任务，因为这会告诉你有多少天它会带你到达下一个信誉等级，如果你做所有的日常任务每天，这是非常有用的。"
RPH_TXT.complete	= "完成"
RPH_TXT.active	= "活跃"
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
RPH_TXT.skillHerb	= "草药"
RPH_TXT.skillMine	= "采矿"
RPH_TXT.skillSkin	= "剥皮"
RPH_TXT.skillAlch	= "炼金"
RPH_TXT.skillBlack	= "锻造"
RPH_TXT.skillEnch	= "附魔"
RPH_TXT.skillEngi	= "工程学"
RPH_TXT.skillIncrip	= "题词"
RPH_TXT.skillJewel	= "珠宝加工"
RPH_TXT.skillLeath	= "制皮"
RPH_TXT.skillTail	= "裁缝"
RPH_TXT.skillAid	= "急救"
RPH_TXT.skillArch	= "考古"
RPH_TXT.skillCook	= "烹饪"
RPH_TXT.skillFish	= "钓鱼"
-- Tooltip	
RPH_TXT.elements	= {}
RPH_TXT.elements.name	= {}
RPH_TXT.elements.tip	= {}
	
RPH_TXT.elements.name.RPH_OptionsButton	= RPH_TXT.options
RPH_TXT.elements.tip.RPH_OptionsButton	= "打开窗口配置RepHelper。"
RPH_TXT.elements.name.RPH_OrderByStandingCheckBox	= RPH_TXT.orderByStanding
RPH_TXT.elements.tip.RPH_OrderByStandingCheckBox	= "如果不选中此框，派列表显示默认（暴雪）排序，分组逻辑和字母顺序排列。\r\n\r\n如果选中此复选框，派列表排序站在\r\ n\ r \ n要查看| cFFFAA0A0无效|r派系，取消选中此框和列表的底部。"
	
RPH_TXT.elements.name.RPH_ShowMobsButton	= RPH_TXT.showMobs
RPH_TXT.elements.tip.RPH_ShowMobsButton	= "检查此按钮，看看你能杀的小怪来提高你的声誉。"
RPH_TXT.elements.name.RPH_ShowQuestButton	= RPH_TXT.showQuests
RPH_TXT.elements.tip.RPH_ShowQuestButton	= "检查此按钮可看到任务可以做，以提高你的声誉。"
RPH_TXT.elements.name.RPH_ShowItemsButton	= RPH_TXT.showItems
RPH_TXT.elements.tip.RPH_ShowItemsButton	= "检查此按钮，看到手的项目，你可以提高你的声誉。"
RPH_TXT.elements.name.RPH_ShowInstancesButton	= RPH_TXT.showInstances
RPH_TXT.elements.tip.RPH_ShowInstancesButton	= "检查此按钮可看到运行的情况下，你可以提高你的声誉。"
RPH_TXT.elements.name.RPH_ShowGeneralButton	= RPH_TXT.showGeneral
RPH_TXT.elements.tip.RPH_ShowGeneralButton	= "检查此按钮可看到一般信息，提高你的声誉。"
	
RPH_TXT.elements.name.RPH_ShowAllButton	= RPH_TXT.showAll
RPH_TXT.elements.tip.RPH_ShowAllButton	= "按下此按钮可检查所有四个复选框的左侧。\r\n这将显示小怪，任务，物品和实例，让你的声誉目前选定的派系。"
RPH_TXT.elements.name.RPH_ShowNoneButton	= RPH_TXT.showNone
RPH_TXT.elements.tip.RPH_ShowNoneButton	= "按下此按钮，取消所有的四个复选框的左侧。\r\n这会告诉你的方法没有赢得口碑，目前选择的派系。"
	
RPH_TXT.elements.name.RPH_ExpandButton	= RPH_TXT.expand
RPH_TXT.elements.tip.RPH_ExpandButton	= "按下此按钮可展开列表中的所有条目。这将显示您在任何项目的收集任务所需的材料手。"
RPH_TXT.elements.name.RPH_CollapseButton	= RPH_TXT.collapse
RPH_TXT.elements.tip.RPH_CollapseButton	= "按下此按钮折叠所有列表中的条目。这将隐藏在收集任务所需的材料手。"
RPH_TXT.elements.name.RPH_SupressNoneFactionButton	= RPH_TXT.supressNoneFaction
RPH_TXT.elements.tip.RPH_SupressNoneFactionButton	= "按下此按钮可重新启用所有权利点击它可以排除这个派别的任务。"
RPH_TXT.elements.name.RPH_SupressNoneGlobalButton	= RPH_TXT.supressNoneGlobal
RPH_TXT.elements.tip.RPH_SupressNoneGlobalButton	= "按下此按钮可重新启用通过右键点击它可以排除所有派别​​的所有任务。"
RPH_TXT.elements.name.RPH_ClearSessionGainButton	= RPH_TXT.clearSessionGain
RPH_TXT.elements.tip.RPH_ClearSessionGainButton	= "按下此按钮来清除重置计数器声誉，获得了本次会议。"
	
RPH_TXT.elements.name.RPH_EnableMissingBox	= RPH_TXT.showMissing
RPH_TXT.elements.tip.RPH_EnableMissingBox	= "启用此设置，添加丢失的声誉点需要在未来的声誉站在每个派别的声誉框架背后的当前水平。"
RPH_TXT.elements.name.RPH_ExtendDetailsBox	= RPH_TXT.extendDetails
RPH_TXT.elements.tip.RPH_ExtendDetailsBox	= "启用此设置以显示扩展声誉细节帧 \r\n除了在原来的详细框架显示的信息，这会显示丢失的声誉需要到达下一个信誉等级，并以列表的方式来获得这种声誉由上市的任务，怪物，物品和实例产生选择派的声誉。"
RPH_TXT.elements.name.RPH_GainToChatBox	= RPH_TXT.gainToChat
RPH_TXT.elements.tip.RPH_GainToChatBox	= "启用此设置来显示的声誉获得了所有派别​​，每当你获得的声誉。\ r \ n这不同于报告声誉增益的标准的方式，通常情况下，只有上市收益的主要派别。"
RPH_TXT.elements.name.RPH_NoGuildGainBox	= RPH_TXT.noGuildGain
RPH_TXT.elements.tip.RPH_NoGuildGainBox	= "启用此设置不打印消息聊天公会声望。"
RPH_TXT.elements.name.RPH_SupressOriginalGainBox	= RPH_TXT.suppressOriginalGain
RPH_TXT.elements.tip.RPH_SupressOriginalGainBox	= "启用此设置来抑制标准声誉增益消息。\ r \ n这是有道理的，如果已经启用了详细的派系增益消息，所以你无法得到相同的上市标准和扩展版本。"
RPH_TXT.elements.name.RPH_ShowPreviewRepBox	= RPH_TXT.showPreviewRep
RPH_TXT.elements.tip.RPH_ShowPreviewRepBox	= "启用此设置，你可以获得交付项目和已完成的任务，作为一个灰色条覆盖在正常的声誉酒吧的声誉帧显示的声誉。"
RPH_TXT.elements.name.RPH_SwitchFactionBarBox	= RPH_TXT.switchFactionBar
RPH_TXT.elements.tip.RPH_SwitchFactionBarBox	= "启用此设置可自动切换的派系正在观看的最后一个派别就是你所获得的声誉。"
RPH_TXT.elements.name.RPH_NoGuildSwitchBox	= RPH_TXT.noGuildSwitch
RPH_TXT.elements.tip.RPH_NoGuildSwitchBox	= "启用此设置不切换观看派公会声望收益。"
RPH_TXT.elements.name.RPH_SilentSwitchBox	= RPH_TXT.silentSwitch
RPH_TXT.elements.tip.RPH_SilentSwitchBox	= "启用此设置静默信誉栏切换（没有消息聊天）。"
RPH_TXT.elements.name.RPH_GuildCapBox	= RPH_TXT.guildCap
RPH_TXT.elements.name.RPH_ChatFrameSlider	= "聊天帧"
RPH_TXT.elements.tip.RPH_ChatFrameSlider	= "选择聊天框架RepHelper打印其消息。"
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