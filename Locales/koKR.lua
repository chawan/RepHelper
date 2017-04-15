-- Korean(한국어)	
--------------------	--------------------
if (GetLocale() =="koKR") then	
	
-- Binding names	
BINDING_HEADER_FACTIONIZER	= "Factionizer"
BINDING_NAME_SHOWCONFIG	= "옵션 창에서보기"
BINDING_NAME_SHOWDETAILS	= "명성 세부 정보 창 표시"
	
FIZ_TXT	= {}
-- help	
FIZ_TXT.help	= "당신의 평판을 관리하는 도구"
FIZ_TXT.command	= "명령을 구문 분석 할 수 없습니다"
FIZ_TXT.usage	= "용법"
FIZ_TXT.helphelp	= "이 도움말 텍스트를 표시"
FIZ_TXT.helpabout	= "저자 정보보기"
FIZ_TXT.helpstatus	= "구성 상태를 표시"
-- about	
FIZ_TXT.by	= "로"
FIZ_TXT.version	= "버전"
FIZ_TXT.date	= "당일"
FIZ_TXT.web	= "웹 사이트"
FIZ_TXT.slash	= "명령을 슬래시"
FIZ_TXT_STAND_LV	= {}
FIZ_TXT_STAND_LV[0]	= "알 수없는"
FIZ_TXT_STAND_LV[1]	= "미워하는"
FIZ_TXT_STAND_LV[2]	= "적의"
FIZ_TXT_STAND_LV[3]	= "해로운"
FIZ_TXT_STAND_LV[4]	= "중립국"
FIZ_TXT_STAND_LV[5]	= "친한"
FIZ_TXT_STAND_LV[6]	= "영광"
FIZ_TXT_STAND_LV[7]	= "존경"
FIZ_TXT_STAND_LV[8]	= "고귀한"
-- status	
FIZ_TXT.status	= "지위"
FIZ_TXT.disabled	= "비활성화"
FIZ_TXT.enabled	= "사용"
FIZ_TXT.statMobs	= "몬스터보기 [M]"
FIZ_TXT.statQuests	= "顯示任務 [Q]"
FIZ_TXT.statInstances	= "인스턴스보기 [D]"
FIZ_TXT.statItems	= "항목 표시 [I]"
FIZ_TXT.statGeneral	= "일반 표시 [G]"
FIZ_TXT.statMissing	= "누락 된 평판 표시"
FIZ_TXT.statDetails	= "확장 세부 프레임을 보여줍니다"
FIZ_TXT.statChat	= "자세한 채팅 메시지"
FIZ_TXT.statNoGuildChat	= "길드 평판에 대한 채팅"
FIZ_TXT.statSuppress	= "원래의 채팅 메시지를 표시"
FIZ_TXT.statPreview	= "평판 프레임에 미리 평판 표시"
FIZ_TXT.statSwitch	= "자동 평판 바의 파벌을 전환"
FIZ_TXT.statNoGuildSwitch	= "길드 평판에 대한 전환 없음"
FIZ_TXT.statSilentSwitch	= "줄을 전환 아무런 메시지도 없습니다"
FIZ_TXT.statGuildCap	= "채팅 길드 평판 모자보기"
-- XML UI elements	
FIZ_TXT.showQuests	= "쇼 퀘스트"
FIZ_TXT.showInstances	= "인스턴스보기"
FIZ_TXT.showMobs	= "몬스터보기"
FIZ_TXT.showItems	= "항목 표시"
FIZ_TXT.showGeneral	= "일반 표시"
FIZ_TXT.showAll	= "모두 표시"
FIZ_TXT.showNone	= "없음을 보여"
FIZ_TXT.expand	= "확대"
FIZ_TXT.collapse	= "축소"
FIZ_TXT.supressNoneFaction	= "파벌에 대한 명확한 제외"
FIZ_TXT.supressNoneGlobal	= "모두 지우기 제외"
FIZ_TXT.suppressHint	= "요약에서 제외 할 수있는 퀘스트를 마우스 오른쪽 단추로 클릭"
FIZ_TXT.clearSessionGain	= "분명 세션 이득 카운터"
-- options dialog	
FIZ_TXT.showMissing	= "평판 구조에서 누락 명성을 보여"
FIZ_TXT.extendDetails	= "확장 명성 세부 프레임을 보여줍니다"
FIZ_TXT.gainToChat	= "채팅 창을 상세 진영 이득 메시지를 작성"
FIZ_TXT.noGuildGain	= "길드 평판 채팅 쓰지 않는다"
FIZ_TXT.suppressOriginalGain	= "원래 진영 이득 메시지를 억제합니다"
FIZ_TXT.showPreviewRep	= "평판 프레임에서 손으로 할 수있는 평판 표시"
FIZ_TXT.switchFactionBar	= "에 대한 파벌로 전환 명성 줄은 명성을 얻고"
FIZ_TXT.noGuildSwitch	= "길드 평판 평판 표시 줄을 변경하지 마십시오"
FIZ_TXT.silentSwitch	= "줄을 전환 할 때 채팅하는 메시지가 없습니다."
FIZ_TXT.guildCap	= "채팅 길드 평판 캡을 보여줍니다."
FIZ_TXT.defaultChatFrame	= "기본적으로 채팅 프레임을 사용하여"
FIZ_TXT.chatFrame	= "채팅 프레임 %d 개 (%s) 을 (를) 사용"
FIZ_TXT.usingDefaultChatFrame	= "Now using default chat frame"
FIZ_TXT.usingChatFrame	= "Now using chat frame"
FIZ_TXT.EnableParagonBar = "Display paragon reputation in bars."
-- various LUA	
FIZ_TXT.options	= "Options"
FIZ_TXT.orderByStanding	= "Order by Standing"
FIZ_TXT.lookup	= "Looking up faction "
FIZ_TXT.allFactions	= "모든 파벌 목록"
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
FIZ_TXT.AU	= "모든 이름없는"
FIZ_TXT.AN	= "모든 이름"
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
FIZ_TXT.questSummaryTip	= "이 항목은 위에 나열된 모든 퀘스트의 요약을 보여줍니다.\R\N  이것은이 당신이 매일 모든 일일 퀘스트를 수행하면 다음 신뢰도 수준에 도달하는 당신을 데려 갈 것이다 얼마나 많은 일을 보여줍니다로 나열된 모든 퀘스트는 일일 퀘스트 있다는 가정에 유용합니다."
FIZ_TXT.complete	= "완전한"
FIZ_TXT.active	= "활동적인"
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
FIZ_TXT.skillHerb	= "약초 채집"
FIZ_TXT.skillMine	= "채광"
FIZ_TXT.skillSkin	= "무두질"
FIZ_TXT.skillAlch	= "연금술"
FIZ_TXT.skillBlack	= "대장장이"
FIZ_TXT.skillEnch	= "마법부여"
FIZ_TXT.skillEngi	= "기계공학"
FIZ_TXT.skillIncrip	= "비문"
FIZ_TXT.skillJewel	= "보석세공"
FIZ_TXT.skillLeath	= "가죽세공"
FIZ_TXT.skillTail	= "재봉술"
FIZ_TXT.skillAid	= "응급 치료"
FIZ_TXT.skillArch	= "고고학"
FIZ_TXT.skillCook	= "요리"
FIZ_TXT.skillFish	= "낚시"
-- Tooltip	
FIZ_TXT.elements	= {}
FIZ_TXT.elements.name	= {}
FIZ_TXT.elements.tip	= {}
	
FIZ_TXT.elements.name.FIZ_OptionsButton	= FIZ_TXT.options
FIZ_TXT.elements.tip.FIZ_OptionsButton	= "Factionizer를 구성하는 창을 엽니 다."
FIZ_TXT.elements.name.FIZ_OrderByStandingCheckBox	= FIZ_TXT.orderByStanding
FIZ_TXT.elements.tip.FIZ_OrderByStandingCheckBox	= "이 확인란을 선택하지 않으면 파벌 목록은 논리적 알파벳 순서로 그룹화 기본 블리자드 정렬로 표시됩니다. 이 상자를 선택하면, 파벌 목록 서에 의해 정렬됩니다. |cFFFAA0A0 비활성 r 파벌이 상자를 선택 취소하고 목록의 맨 아래로 이동을 볼 수 있습니다."
	
FIZ_TXT.elements.name.FIZ_ShowMobsButton	= FIZ_TXT.showMobs
FIZ_TXT.elements.tip.FIZ_ShowMobsButton	= "당신의 평판을 개선하기 위해 죽일 수있는 몹을 보려면이 단추를 선택하십시오."
FIZ_TXT.elements.name.FIZ_ShowQuestButton	= FIZ_TXT.showQuests
FIZ_TXT.elements.tip.FIZ_ShowQuestButton	= "당신의 평판을 개선하기 위해 할 수있는 퀘스트를 보려면이 단추를 선택하십시오."
FIZ_TXT.elements.name.FIZ_ShowItemsButton	= FIZ_TXT.showItems
FIZ_TXT.elements.tip.FIZ_ShowItemsButton	= "당신의 평판을 개선하기 위해 손 수있는 항목을 보려면이 단추를 선택하십시오."
FIZ_TXT.elements.name.FIZ_ShowInstancesButton	= FIZ_TXT.showInstances
FIZ_TXT.elements.tip.FIZ_ShowInstancesButton	= "당신의 평판을 개선하기 위해 실행할 수있는 인스턴스를 참조하려면이 단추를 선택하십시오."
FIZ_TXT.elements.name.FIZ_ShowGeneralButton	= FIZ_TXT.showGeneral
FIZ_TXT.elements.tip.FIZ_ShowGeneralButton	= "명성 향상에 대한 일반적인 정보를 보려면이 단추를 선택하십시오."
	
FIZ_TXT.elements.name.FIZ_ShowAllButton	= FIZ_TXT.showAll
FIZ_TXT.elements.tip.FIZ_ShowAllButton	= "왼쪽에있는 체크 박스의 모든 네 가지를 확인하려면이 버튼을 누릅니다. \r\n이가 몹, 퀘스트, 아이템과 현재 선택된 파 당신에게 명성을주고 인스턴스를 표시합니다."
FIZ_TXT.elements.name.FIZ_ShowNoneButton	= FIZ_TXT.showNone
FIZ_TXT.elements.tip.FIZ_ShowNoneButton	= "왼쪽에있는 체크 박스의 모든 네 가지의 선택을 해제하려면이 버튼을 누릅니다. \r\n이 당신에게 현재 선택한 진영에 대한 평판을 얻을 수있는 방법을 전혀 표시되지 않습니다."
	
FIZ_TXT.elements.name.FIZ_ExpandButton	= FIZ_TXT.expand
FIZ_TXT.elements.tip.FIZ_ExpandButton	= "목록에있는 모든 항목을 확장하려면이 버튼을 누릅니다. 이것은 당신에게 어떤 아이템 수집 퀘스트의 손에 필요한 자료를 표시합니다."
FIZ_TXT.elements.name.FIZ_CollapseButton	= FIZ_TXT.collapse
FIZ_TXT.elements.tip.FIZ_CollapseButton	= "목록에서 모든 항목을 축소하려면이 버튼을 누릅니다. 이 퀘스트 수집을 손에 필요한 자료를 숨 깁니다."
FIZ_TXT.elements.name.FIZ_SupressNoneFactionButton	= FIZ_TXT.supressNoneFaction
FIZ_TXT.elements.tip.FIZ_SupressNoneFactionButton	= "당신이 그것에 맞 클릭하여 제외 한이 파벌의 모든 퀘스트를 다시 사용하려면이 버튼을 누릅니다."
FIZ_TXT.elements.name.FIZ_SupressNoneGlobalButton	= FIZ_TXT.supressNoneGlobal
FIZ_TXT.elements.tip.FIZ_SupressNoneGlobalButton	= "당신이 그것을 마우스 오른쪽 버튼으로 클릭하여 제외 한 모든 세력에 대한 모든 퀘스트를 다시 사용하려면이 버튼을 누릅니다."
FIZ_TXT.elements.name.FIZ_ClearSessionGainButton	= FIZ_TXT.clearSessionGain
FIZ_TXT.elements.tip.FIZ_ClearSessionGainButton	= "재설정이 세션을 얻은 평판 카운터를 지우려면이 버튼을 누르십시오."
	
FIZ_TXT.elements.name.FIZ_EnableMissingBox	= FIZ_TXT.showMissing
FIZ_TXT.elements.tip.FIZ_EnableMissingBox	= "평판 프레임에있는 각 파벌의 현재 서 뒤에 다음 신뢰도 수준에 필요한 누락 명성 포인트를 추가하려면이 설정을 사용합니다."
FIZ_TXT.elements.name.FIZ_ExtendDetailsBox	= FIZ_TXT.extendDetails
FIZ_TXT.elements.tip.FIZ_ExtendDetailsBox	= "또한 원래의 상세 프레임에 표시된 정보의 확장 명성 세부 구조. \ r\ n을 표시하려면이 설정을 사용하도록 설정이 다음 신뢰도 수준에 도달하는 데 필요한 누락 된 명성이 명성을 얻을 수있는 방법의 목록을 표시합니다 리스팅 퀘스트, 몬스터, 항목 및 선택한 진영에 대한 평판을 얻을 수있는 인스턴스가 있습니다."
FIZ_TXT.elements.name.FIZ_GainToChatBox	= FIZ_TXT.gainToChat
FIZ_TXT.elements.tip.FIZ_GainToChatBox	= "명성을 표시하려면이 설정을 사용하면 평판을 얻을 때마다 모든 세력에 대해 얻을 수 있습니다. \ r \ n이 일반적으로, 기본 파 만의 이득이 나열되는, 평판 이득을보고하는 표준 방법이 다릅니다."
FIZ_TXT.elements.name.FIZ_NoGuildGainBox	= FIZ_TXT.noGuildGain
FIZ_TXT.elements.tip.FIZ_NoGuildGainBox	= "이 설정은 길드 평판 채팅 메시지를 인쇄 할 수 있습니다."
FIZ_TXT.elements.name.FIZ_SupressOriginalGainBox	= FIZ_TXT.suppressOriginalGain
FIZ_TXT.elements.tip.FIZ_SupressOriginalGainBox	= "표준 평판 이득 메시지를 표시하지 않으려면이 설정을 사용합니다. \ r \ n이 당신이 상세한 진영 이득 메시지를 활성화 한 경우, 그래서 당신은 표준 및 확장 버전에서 동일한 목록을하지 않는 것이 좋습니다."
FIZ_TXT.elements.name.FIZ_ShowPreviewRepBox	= FIZ_TXT.showPreviewRep
FIZ_TXT.elements.tip.FIZ_ShowPreviewRepBox	= "당신은 명성 프레임에 일반 평판 표시 줄에 겹쳐 회색 막대 등의 항목 및 완료 퀘스트에 건네 얻을 수있는 명성을 표시하려면이 설정을 사용합니다."
FIZ_TXT.elements.name.FIZ_SwitchFactionBarBox	= FIZ_TXT.switchFactionBar
FIZ_TXT.elements.tip.FIZ_SwitchFactionBarBox	= "자동으로 당신이 명성을 얻고있다 마지막 도당에 감시 당하고 파를 전환하려면이 설정을 사용합니다."
FIZ_TXT.elements.name.FIZ_NoGuildSwitchBox	= FIZ_TXT.noGuildSwitch
FIZ_TXT.elements.tip.FIZ_NoGuildSwitchBox	= "길드 평판 이익에 대한 감시 세력을 전환 할 때이 설정을 사용합니다."
FIZ_TXT.elements.name.FIZ_SilentSwitchBox	= FIZ_TXT.silentSwitch
FIZ_TXT.elements.tip.FIZ_SilentSwitchBox	= "(채팅하는 메시지없이) 자동 평판 줄을 전환하려면이 설정을 사용합니다."
FIZ_TXT.elements.name.FIZ_GuildCapBox	= FIZ_TXT.guildCap
FIZ_TXT.elements.name.FIZ_ChatFrameSlider	= "프레임 채팅"
FIZ_TXT.elements.tip.FIZ_ChatFrameSlider	= "프레임 Factionizer는 메시지를 출력하는 대화를 선택합니다."
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