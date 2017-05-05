-- Korean(한국어)	
--------------------	--------------------
if (GetLocale() =="koKR") then	
	
-- Binding names	
BINDING_HEADER_REPHELPER	= "RepHelper"
BINDING_NAME_SHOWCONFIG	= "옵션 창에서보기"
BINDING_NAME_SHOWDETAILS	= "명성 세부 정보 창 표시"
	
RPH_TXT	= {}
-- help	
RPH_TXT.help	= "당신의 평판을 관리하는 도구"
RPH_TXT.command	= "명령을 구문 분석 할 수 없습니다"
RPH_TXT.usage	= "용법"
RPH_TXT.helphelp	= "이 도움말 텍스트를 표시"
RPH_TXT.helpabout	= "저자 정보보기"
RPH_TXT.helpstatus	= "구성 상태를 표시"
-- about	
RPH_TXT.by	= "로"
RPH_TXT.version	= "버전"
RPH_TXT.date	= "당일"
RPH_TXT.web	= "웹 사이트"
RPH_TXT.slash	= "명령을 슬래시"
RPH_TXT_STAND_LV	= {}
RPH_TXT_STAND_LV[0]	= "알 수없는"
RPH_TXT_STAND_LV[1]	= "미워하는"
RPH_TXT_STAND_LV[2]	= "적의"
RPH_TXT_STAND_LV[3]	= "해로운"
RPH_TXT_STAND_LV[4]	= "중립국"
RPH_TXT_STAND_LV[5]	= "친한"
RPH_TXT_STAND_LV[6]	= "영광"
RPH_TXT_STAND_LV[7]	= "존경"
RPH_TXT_STAND_LV[8]	= "고귀한"
-- status	
RPH_TXT.status	= "지위"
RPH_TXT.disabled	= "비활성화"
RPH_TXT.enabled	= "사용"
RPH_TXT.statMobs	= "몬스터보기 [M]"
RPH_TXT.statQuests	= "顯示任務 [Q]"
RPH_TXT.statInstances	= "인스턴스보기 [D]"
RPH_TXT.statItems	= "항목 표시 [I]"
RPH_TXT.statGeneral	= "일반 표시 [G]"
RPH_TXT.statMissing	= "누락 된 평판 표시"
RPH_TXT.statDetails	= "확장 세부 프레임을 보여줍니다"
RPH_TXT.statChat	= "자세한 채팅 메시지"
RPH_TXT.statNoGuildChat	= "길드 평판에 대한 채팅"
RPH_TXT.statSuppress	= "원래의 채팅 메시지를 표시"
RPH_TXT.statPreview	= "평판 프레임에 미리 평판 표시"
RPH_TXT.statSwitch	= "자동 평판 바의 파벌을 전환"
RPH_TXT.statNoGuildSwitch	= "길드 평판에 대한 전환 없음"
RPH_TXT.statSilentSwitch	= "줄을 전환 아무런 메시지도 없습니다"
RPH_TXT.statGuildCap	= "채팅 길드 평판 모자보기"
-- XML UI elements	
RPH_TXT.showQuests	= "쇼 퀘스트"
RPH_TXT.showInstances	= "인스턴스보기"
RPH_TXT.showMobs	= "몬스터보기"
RPH_TXT.showItems	= "항목 표시"
RPH_TXT.showGeneral	= "일반 표시"
RPH_TXT.showAll	= "모두 표시"
RPH_TXT.showNone	= "없음을 보여"
RPH_TXT.expand	= "확대"
RPH_TXT.collapse	= "축소"
RPH_TXT.supressNoneFaction	= "파벌에 대한 명확한 제외"
RPH_TXT.supressNoneGlobal	= "모두 지우기 제외"
RPH_TXT.suppressHint	= "요약에서 제외 할 수있는 퀘스트를 마우스 오른쪽 단추로 클릭"
RPH_TXT.clearSessionGain	= "분명 세션 이득 카운터"
-- options dialog	
RPH_TXT.showMissing	= "평판 구조에서 누락 명성을 보여"
RPH_TXT.extendDetails	= "확장 명성 세부 프레임을 보여줍니다"
RPH_TXT.gainToChat	= "Replace original faction gain messages with a more detailed version"
RPH_TXT.noGuildGain	= "길드 평판 채팅 쓰지 않는다"
RPH_TXT.suppressOriginalGain	= "원래 진영 이득 메시지를 억제합니다"
RPH_TXT.showPreviewRep	= "평판 프레임에서 손으로 할 수있는 평판 표시"
RPH_TXT.switchFactionBar	= "에 대한 파벌로 전환 명성 줄은 명성을 얻고"
RPH_TXT.noGuildSwitch	= "길드 평판 평판 표시 줄을 변경하지 마십시오"
RPH_TXT.silentSwitch	= "줄을 전환 할 때 채팅하는 메시지가 없습니다."
RPH_TXT.guildCap	= "채팅 길드 평판 캡을 보여줍니다."
RPH_TXT.defaultChatFrame	= "기본적으로 채팅 프레임을 사용하여"
RPH_TXT.chatFrame	= "채팅 프레임 %d 개 (%s) 을 (를) 사용"
RPH_TXT.usingDefaultChatFrame	= "Now using default chat frame"
RPH_TXT.usingChatFrame	= "Now using chat frame"
RPH_TXT.EnableParagonBar = "Display paragon reputation in bars."
-- various LUA	
RPH_TXT.options	= "Options"
RPH_TXT.orderByStanding	= "Order by Standing"
RPH_TXT.lookup	= "Looking up faction "
RPH_TXT.allFactions	= "모든 파벌 목록"
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
RPH_TXT.AU	= "모든 이름없는"
RPH_TXT.AN	= "모든 이름"
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
RPH_TXT.questSummaryTip	= "이 항목은 위에 나열된 모든 퀘스트의 요약을 보여줍니다.\r\n  이것은이 당신이 매일 모든 일일 퀘스트를 수행하면 다음 신뢰도 수준에 도달하는 당신을 데려 갈 것이다 얼마나 많은 일을 보여줍니다로 나열된 모든 퀘스트는 일일 퀘스트 있다는 가정에 유용합니다."
RPH_TXT.complete	= "완전한"
RPH_TXT.active	= "활동적인"
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
RPH_TXT.skillHerb	= "약초 채집"
RPH_TXT.skillMine	= "채광"
RPH_TXT.skillSkin	= "무두질"
RPH_TXT.skillAlch	= "연금술"
RPH_TXT.skillBlack	= "대장장이"
RPH_TXT.skillEnch	= "마법부여"
RPH_TXT.skillEngi	= "기계공학"
RPH_TXT.skillIncrip	= "비문"
RPH_TXT.skillJewel	= "보석세공"
RPH_TXT.skillLeath	= "가죽세공"
RPH_TXT.skillTail	= "재봉술"
RPH_TXT.skillAid	= "응급 치료"
RPH_TXT.skillArch	= "고고학"
RPH_TXT.skillCook	= "요리"
RPH_TXT.skillFish	= "낚시"
-- Tooltip	
RPH_TXT.elements	= {}
RPH_TXT.elements.name	= {}
RPH_TXT.elements.tip	= {}
	
RPH_TXT.elements.name.RPH_OptionsButton	= RPH_TXT.options
RPH_TXT.elements.tip.RPH_OptionsButton	= "RepHelper를 구성하는 창을 엽니 다."
RPH_TXT.elements.name.RPH_OrderByStandingCheckBox	= RPH_TXT.orderByStanding
RPH_TXT.elements.tip.RPH_OrderByStandingCheckBox	= "이 확인란을 선택하지 않으면 파벌 목록은 논리적 알파벳 순서로 그룹화 기본 블리자드 정렬로 표시됩니다. 이 상자를 선택하면, 파벌 목록 서에 의해 정렬됩니다. |cFFFAA0A0 비활성 r 파벌이 상자를 선택 취소하고 목록의 맨 아래로 이동을 볼 수 있습니다."
	
RPH_TXT.elements.name.RPH_ShowMobsButton	= RPH_TXT.showMobs
RPH_TXT.elements.tip.RPH_ShowMobsButton	= "당신의 평판을 개선하기 위해 죽일 수있는 몹을 보려면이 단추를 선택하십시오."
RPH_TXT.elements.name.RPH_ShowQuestButton	= RPH_TXT.showQuests
RPH_TXT.elements.tip.RPH_ShowQuestButton	= "당신의 평판을 개선하기 위해 할 수있는 퀘스트를 보려면이 단추를 선택하십시오."
RPH_TXT.elements.name.RPH_ShowItemsButton	= RPH_TXT.showItems
RPH_TXT.elements.tip.RPH_ShowItemsButton	= "당신의 평판을 개선하기 위해 손 수있는 항목을 보려면이 단추를 선택하십시오."
RPH_TXT.elements.name.RPH_ShowInstancesButton	= RPH_TXT.showInstances
RPH_TXT.elements.tip.RPH_ShowInstancesButton	= "당신의 평판을 개선하기 위해 실행할 수있는 인스턴스를 참조하려면이 단추를 선택하십시오."
RPH_TXT.elements.name.RPH_ShowGeneralButton	= RPH_TXT.showGeneral
RPH_TXT.elements.tip.RPH_ShowGeneralButton	= "명성 향상에 대한 일반적인 정보를 보려면이 단추를 선택하십시오."
	
RPH_TXT.elements.name.RPH_ShowAllButton	= RPH_TXT.showAll
RPH_TXT.elements.tip.RPH_ShowAllButton	= "왼쪽에있는 체크 박스의 모든 네 가지를 확인하려면이 버튼을 누릅니다. \r\n이가 몹, 퀘스트, 아이템과 현재 선택된 파 당신에게 명성을주고 인스턴스를 표시합니다."
RPH_TXT.elements.name.RPH_ShowNoneButton	= RPH_TXT.showNone
RPH_TXT.elements.tip.RPH_ShowNoneButton	= "왼쪽에있는 체크 박스의 모든 네 가지의 선택을 해제하려면이 버튼을 누릅니다. \r\n이 당신에게 현재 선택한 진영에 대한 평판을 얻을 수있는 방법을 전혀 표시되지 않습니다."
	
RPH_TXT.elements.name.RPH_ExpandButton	= RPH_TXT.expand
RPH_TXT.elements.tip.RPH_ExpandButton	= "목록에있는 모든 항목을 확장하려면이 버튼을 누릅니다. 이것은 당신에게 어떤 아이템 수집 퀘스트의 손에 필요한 자료를 표시합니다."
RPH_TXT.elements.name.RPH_CollapseButton	= RPH_TXT.collapse
RPH_TXT.elements.tip.RPH_CollapseButton	= "목록에서 모든 항목을 축소하려면이 버튼을 누릅니다. 이 퀘스트 수집을 손에 필요한 자료를 숨 깁니다."
RPH_TXT.elements.name.RPH_SupressNoneFactionButton	= RPH_TXT.supressNoneFaction
RPH_TXT.elements.tip.RPH_SupressNoneFactionButton	= "당신이 그것에 맞 클릭하여 제외 한이 파벌의 모든 퀘스트를 다시 사용하려면이 버튼을 누릅니다."
RPH_TXT.elements.name.RPH_SupressNoneGlobalButton	= RPH_TXT.supressNoneGlobal
RPH_TXT.elements.tip.RPH_SupressNoneGlobalButton	= "당신이 그것을 마우스 오른쪽 버튼으로 클릭하여 제외 한 모든 세력에 대한 모든 퀘스트를 다시 사용하려면이 버튼을 누릅니다."
RPH_TXT.elements.name.RPH_ClearSessionGainButton	= RPH_TXT.clearSessionGain
RPH_TXT.elements.tip.RPH_ClearSessionGainButton	= "재설정이 세션을 얻은 평판 카운터를 지우려면이 버튼을 누르십시오."
	
RPH_TXT.elements.name.RPH_EnableMissingBox	= RPH_TXT.showMissing
RPH_TXT.elements.tip.RPH_EnableMissingBox	= "평판 프레임에있는 각 파벌의 현재 서 뒤에 다음 신뢰도 수준에 필요한 누락 명성 포인트를 추가하려면이 설정을 사용합니다."
RPH_TXT.elements.name.RPH_ExtendDetailsBox	= RPH_TXT.extendDetails
RPH_TXT.elements.tip.RPH_ExtendDetailsBox	= "또한 원래의 상세 프레임에 표시된 정보의 확장 명성 세부 구조. \r\n을 표시하려면이 설정을 사용하도록 설정이 다음 신뢰도 수준에 도달하는 데 필요한 누락 된 명성이 명성을 얻을 수있는 방법의 목록을 표시합니다 리스팅 퀘스트, 몬스터, 항목 및 선택한 진영에 대한 평판을 얻을 수있는 인스턴스가 있습니다."
RPH_TXT.elements.name.RPH_GainToChatBox	= RPH_TXT.gainToChat
RPH_TXT.elements.tip.RPH_GainToChatBox	= "명성을 표시하려면이 설정을 사용하면 평판을 얻을 때마다 모든 세력에 대해 얻을 수 있습니다. \r \n이 일반적으로, 기본 파 만의 이득이 나열되는, 평판 이득을보고하는 표준 방법이 다릅니다."
RPH_TXT.elements.name.RPH_NoGuildGainBox	= RPH_TXT.noGuildGain
RPH_TXT.elements.tip.RPH_NoGuildGainBox	= "이 설정은 길드 평판 채팅 메시지를 인쇄 할 수 있습니다."
RPH_TXT.elements.name.RPH_SupressOriginalGainBox	= RPH_TXT.suppressOriginalGain
RPH_TXT.elements.tip.RPH_SupressOriginalGainBox	= "표준 평판 이득 메시지를 표시하지 않으려면이 설정을 사용합니다. \r \n이 당신이 상세한 진영 이득 메시지를 활성화 한 경우, 그래서 당신은 표준 및 확장 버전에서 동일한 목록을하지 않는 것이 좋습니다."
RPH_TXT.elements.name.RPH_ShowPreviewRepBox	= RPH_TXT.showPreviewRep
RPH_TXT.elements.tip.RPH_ShowPreviewRepBox	= "당신은 명성 프레임에 일반 평판 표시 줄에 겹쳐 회색 막대 등의 항목 및 완료 퀘스트에 건네 얻을 수있는 명성을 표시하려면이 설정을 사용합니다."
RPH_TXT.elements.name.RPH_SwitchFactionBarBox	= RPH_TXT.switchFactionBar
RPH_TXT.elements.tip.RPH_SwitchFactionBarBox	= "자동으로 당신이 명성을 얻고있다 마지막 도당에 감시 당하고 파를 전환하려면이 설정을 사용합니다."
RPH_TXT.elements.name.RPH_NoGuildSwitchBox	= RPH_TXT.noGuildSwitch
RPH_TXT.elements.tip.RPH_NoGuildSwitchBox	= "길드 평판 이익에 대한 감시 세력을 전환 할 때이 설정을 사용합니다."
RPH_TXT.elements.name.RPH_SilentSwitchBox	= RPH_TXT.silentSwitch
RPH_TXT.elements.tip.RPH_SilentSwitchBox	= "(채팅하는 메시지없이) 자동 평판 줄을 전환하려면이 설정을 사용합니다."
RPH_TXT.elements.name.RPH_GuildCapBox	= RPH_TXT.guildCap
RPH_TXT.elements.name.RPH_ChatFrameSlider	= "프레임 채팅"
RPH_TXT.elements.tip.RPH_ChatFrameSlider	= "프레임 RepHelper는 메시지를 출력하는 대화를 선택합니다."
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