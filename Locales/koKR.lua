-- Korean(한국어)	
--------------------	--------------------
if (GetLocale() =="koKR") then	
	
-- Binding names	
BINDING_HEADER_REPHELPER	= "RepHelper"
BINDING_NAME_SHOWCONFIG	= "옵션 창을 표시"
BINDING_NAME_SHOWDETAILS	= "평판 세부 정보 창 표시"
    
RPH_TXT	= {}
-- help	
RPH_TXT.help	= "평판 관리 도구"
RPH_TXT.command	= "분석 할 수 없는 명령"
RPH_TXT.usage	= "사용법"
RPH_TXT.helphelp	= "이 도움말 표시"
RPH_TXT.helpabout	= "작성자 정보 표시"
RPH_TXT.helpstatus	= "구성 상태를 표시"
-- about	
RPH_TXT.by	= "by"	
RPH_TXT.version	= "Version"	
RPH_TXT.date	= "Date"	
RPH_TXT.web	= "Website"	
RPH_TXT.slash	= "슬래쉬 명령어"
RPH_TXT_STAND_LV	= {}
RPH_TXT_STAND_LV[0]	= "미확인"
RPH_TXT_STAND_LV[1]	= "매우 적대적"
RPH_TXT_STAND_LV[2]	= "적대적"
RPH_TXT_STAND_LV[3]	= "약간 적대적"
RPH_TXT_STAND_LV[4]	= "중립적"
RPH_TXT_STAND_LV[5]	= "약간 우호적"
RPH_TXT_STAND_LV[6]	= "우호적"
RPH_TXT_STAND_LV[7]	= "매우 우호적"
RPH_TXT_STAND_LV[8]	= "확고한 동맹"
-- status	
RPH_TXT.status	= "상태"
RPH_TXT.disabled	= "비활성화"
RPH_TXT.enabled	= "활성화"
RPH_TXT.statMobs	= "몬스터 표시 [M]"
RPH_TXT.statQuests	= "퀘스트 표시 [Q]"
RPH_TXT.statInstances	= "던전 표시 [D]"
RPH_TXT.statItems	= "아이템 표시 [I]"
RPH_TXT.statGeneral	= "일반 표시 [G]"
RPH_TXT.statMissing	= "누락 된 평판 표시"
RPH_TXT.statDetails	= "확장 세부 프레임 표시"
RPH_TXT.statChat	= "자세한 채팅 메시지"
RPH_TXT.statNoGuildChat	= "길드 평판에 대한 메세지 없음"
RPH_TXT.statSuppress	= "기존 채팅 메시지 삭제"
RPH_TXT.statPreview	= "평판 프레임에 미리보기 평판 표시"
RPH_TXT.statSwitch	= "평판 바의 진영을 자동 전환"
RPH_TXT.statNoGuildSwitch	= "길드 평판 전환 없음"
RPH_TXT.statSilentSwitch	= "평판 자동 전환 메세지 표시 안 함"
RPH_TXT.statGuildCap	= "채팅에서 길드 평판 말머리 표시"
-- XML UI elements	
RPH_TXT.showQuests	= "퀘스트"
RPH_TXT.showInstances	= "던전"
RPH_TXT.showMobs	= "몬스터"
RPH_TXT.showItems	= "아이템"
RPH_TXT.showGeneral	= "일반"
RPH_TXT.showAll	= "모두 표시"
RPH_TXT.showNone	= "모두 숨기기"
RPH_TXT.expand	= "펼치기"
RPH_TXT.darkmoonFaireBuff = "다크문 축제 버프"
RPH_TXT.collapse	= "접기"
RPH_TXT.supressNoneFaction	= "해당 진영 퀘스트 제외 취소"
RPH_TXT.supressNoneGlobal	= "모든 진영 퀘스트 제외 취소"
RPH_TXT.suppressHint	= "마우스 우클릭으로 퀘스트를 총합에서 제외"
RPH_TXT.clearSessionGain	= "해당 진영 재설정"
-- options dialog	
RPH_TXT.showMissing	= "평판 프레임에 다음 등급까지 필요한 평판 표시"
RPH_TXT.extendDetails	= "확장 된 평판 세부 정보 프레임 표시"
RPH_TXT.gainToChat	= "기존 평판 획득 메시지를 더 자세한 메시지로 대체"
RPH_TXT.noGuildGain	= "채팅 창에 길드 평판 메시지는 표시하지 않음"
RPH_TXT.suppressOriginalGain	= "오리지널 진영 평판 획득 메시지 삭제"
RPH_TXT.showPreviewRep	= "평판 프레임에 획득 할 수 있는 평판 표시"
RPH_TXT.switchFactionBar	= "평판을 얻을 때 평판 표시 줄을 해당 진영으로 전환"
RPH_TXT.noGuildSwitch	= "길드 평판으로 평판 바 변경 제한"
RPH_TXT.silentSwitch	= "전환 할 때 채팅 메시지가 없음"
RPH_TXT.guildCap	= "채팅에서 길드 평판 말머리 표시"
RPH_TXT.defaultChatFrame	= "기본 채팅 창 사용"
RPH_TXT.chatFrame	= "채팅 프레임 %d (%s) 사용"
RPH_TXT.usingDefaultChatFrame	= "현재 기본 채팅 프레임 사용"
RPH_TXT.usingChatFrame	= "현재 채팅 프레임 사용"
RPH_TXT.EnableParagonBar = "평판 바에 불멸의 동맹 진행 표시"
-- various LUA	
RPH_TXT.options	= "옵션"
RPH_TXT.orderByStanding	= "평판 등급별로 정렬"
RPH_TXT.lookup	= "진영 조회"
RPH_TXT.allFactions	= "모든 진영 목록"
RPH_TXT.missing	= "(남은 평판)"
RPH_TXT.missing2	= "누락 된"
RPH_TXT.heroic	= "영웅"
RPH_TXT.normal	= "일반"
RPH_TXT.switchBar	= "평판 표시 줄 버전 수정"
-- RPH_ShowFactions	
RPH_TXT.faction	= "진영"
RPH_TXT.is	= "은(는)"
RPH_TXT.withStanding	= "수준으로"
RPH_TXT.needed	= "필수"
RPH_TXT.mob	= "[Mob]"	
RPH_TXT.limited	= "제한됩니다."
RPH_TXT.limitedPl	= "제한됩니다."
RPH_TXT.quest	= "[Quest]"	
RPH_TXT.instance	= "[Instance]"	
RPH_TXT.items	= "[Items]"
RPH_TXT.unknown	= "이 캐릭터에 알려지지 않음"
-- mob Details	
RPH_TXT.tmob	= "일반 몬스터"
RPH_TXT.oboss	= "다른 보스몹"
RPH_TXT.aboss	= "모든 보스몹"
RPH_TXT.pboss	= "보스 당"
RPH_TXT.fclear	= "완전 삭제"
RPH_TXT.AU	= "모든 익명의"
RPH_TXT.AN	= "모든 명명된"
RPH_TXT.BB	= "붉은해적단"
RPH_TXT.SSP	= "남쪽바다 해적"
RPH_TXT.Wa	= "사막유랑단"
RPH_TXT.VCm	= "모든 투자개발회사 몬스터"
-- Quest Details	
RPH_TXT.cdq	= "주요 도시 요리 일일 퀘스트"
RPH_TXT.coq	= "다른 도시 요리 일일 퀘스트"
RPH_TXT.fdq	= "주요 도시 낚시 일일 퀘스트"
RPH_TXT.foq	= "다른 도시 요리 일일 퀘스트"
RPH_TXT.ndq	= "일일 퀘스트 없음"
RPH_TXT.deleted	= "삭제 됨"
RPH_TXT.Championing	= "Championing (Tabard)"
RPH_TXT.bpqfg	= "퀘스트를 통해 얻은 진영의 비율"
    
-- items Details	
RPH_TXT.cbadge	= "다른 도시의 공로 배지"
-- instance Details	
RPH_TXT.srfd	= "던전에서의 유출 평판"
RPH_TXT.tbd	= "끝내야 할 것"
RPH_TXT.nci	= "대격변 일반 던전"
RPH_TXT.hci	= "대격변 영웅 던전"
-- ToBeDone general	
RPH_TXT.tfr	= "농사꾼 연합 평판"
RPH_TXT.nswts	= "시작 시점 불확실"
RPH_TXT.mnd	= "일일 퀘스트의 최대 수"
RPH_TXT.mnds	= "일일 퀘스트 최대 수는 "
    
    
    
    
    
-- ReputationDetails	
RPH_TXT.neededRep	= "다음 등급까지 필요한 평판"
RPH_TXT.currentRep	= "현재까지 획득한 평판"
RPH_TXT.missingRep	= "다음 등급까지 남은 평판"
RPH_TXT.repInBag	= "가방에서 획득 가능한 평판"
RPH_TXT.repInBagBank	= "가방과 은행에서 획득 가능한 평판"
RPH_TXT.repInQuest	= "퀘스트에서 획득 가능한 평판"
RPH_TXT.factionGained	= "이 세션에서 획득한 평판"
RPH_TXT.noInfo	= "이 진영 / 평판에 대한 정보가 없습니다."
RPH_TXT.toExalted	= "확고한 동맹 평판까지 남은 평판"
RPH_TXT.toBestFriend = "가장 친한 친구 평판까지 남은 평판"
-- to chat	
RPH_TXT.stats	= " (총합: %s%d, 남음: %d)"
RPH_TXT.statsNextStanding = " (총합: %s%d, %s 남음: %d)"

-- config changed	
RPH_TXT.configQuestion	= "일부(새) 설정이 사용 가능으로 설정되었습니다. 이 작업은 설정에 대해 한 번만 수행됩니다. RepHelper 옵션을 확인하는 것이 좋습니다."
RPH_TXT.showConfig	= "설정 보기"
RPH_TXT.later	= "나중에"
-- UpdateList	
RPH_TXT.mobShort	= "[M]"
RPH_TXT.questShort	= "[Q]"
RPH_TXT.instanceShort	= "[D]"
RPH_TXT.itemsShort	= "[I]"
RPH_TXT.generalShort	= "[G]"
RPH_TXT.mobHead	= "이 몬스터를 처치하여 평판을 얻으십시오."
RPH_TXT.questHead	= "이 퀘스트를 수행하여 평판을 얻으십시오."
RPH_TXT.instanceHead	= "이 던전을 수행하여 평판을 얻으십시오."
RPH_TXT.itemsHead	= "이 아이템을 반환하여 평판을 얻으십시오."
RPH_TXT.generalHead	= "평판 획득에 대한 일반 정보"
RPH_TXT.mobTip	= "이 몬스터 처치할 때마다 평판을 얻습니다. 이를 충분히 자주 수행하면 다음 단계에 도달하는 데 도움이됩니다."
RPH_TXT.questTip	= "이 반복 가능한 퀘스트나 일일 퀘스트를 완료할 때마다 평판이 높아집니다. 이 작업을 자주 수행하면 다음 단계에 도달하는 데 도움이 됩니다."
RPH_TXT.instanceTip	= "이 던전을 수행 할 때마다 평판이 높아집니다. 이 작업을 자주 수행하면 다음 단계에 도달하는 데 도움이 됩니다."
RPH_TXT.itemsName	= "아이템 전달"
RPH_TXT.itemsTip	= "나열된 아이템을 제출할 때마다 평판을 얻습니다. 이를 충분히 자주 수행하면 다음 단계에 도달하는 데 도움이됩니다."
RPH_TXT.generalTip	= "진영 평판 획득에 대한 정보는 반드시 반복 가능한 임무와 연결되어 있지는 않습니다."
RPH_TXT.allOfTheAbove	= "퀘스트 평판 총합 : 포함 된 퀘스트 %d 개"
RPH_TXT.questSummaryHead	= RPH_TXT.allOfTheAbove
RPH_TXT.questSummaryTip	= "이 항목은 위에 나열된 퀘스트에서 획득 가능한 평판의 총합을 보여줍니다.\r\n이는 나열된 모든 퀘스트가 일일 퀘스트일 경우, 매일 모든 퀘스트를 수행할 경우 다음 평판 등급에 도달하는 데 며칠이 걸리는지 알 수 있으므로 유용합니다."
RPH_TXT.complete	= "완전한"
RPH_TXT.active	= "활동적인"
RPH_TXT.inBag	= "가방 속"
RPH_TXT.turnIns	= "가능한 반납 횟수:"
RPH_TXT.reputation	= "획득 가능 평판:"
RPH_TXT.reputationCap	= "평판 말머리:"
RPH_TXT.reputationCapCurrent	= "현재 평판:"
RPH_TXT.inBagBank	= "현재 소유한 반납 가능 아이템"
RPH_TXT.questCompleted	= "완료된 퀘스트"
RPH_TXT.timesToDo	= "다음 등급까지 필요 횟수:"
RPH_TXT.instance2	= "던전:"
RPH_TXT.mode	= "모드:"
RPH_TXT.timesToRun	= "다음 등급까지 필요 횟수:"
RPH_TXT.mob2	= "몬스터:"
RPH_TXT.location	= "지역:"
RPH_TXT.toDo	= "다음 등급까지 필요 횟수:"
RPH_TXT.quest2	= "퀘스트:"
RPH_TXT.itemsRequired	= "필요한 아이템"
RPH_TXT.general2	= "일반:"
RPH_TXT.maxStanding	= "획득 가능한 최종 평판 등급"
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

RPH_TXT.elements.name.RPH_ShowDarkmoonFaireButton = RPH_TXT.darkmoonFaireBuff
RPH_TXT.elements.tip.RPH_ShowDarkmoonFaireButton = 	"획득 가능한 평판 수치를 다크문 축제 버프를 더한 값으로 표시해 줍니다."

RPH_TXT.elements.name.RPH_OptionsButton	= RPH_TXT.options
RPH_TXT.elements.tip.RPH_OptionsButton	= "RepHelper 설정 창을 엽니다."
RPH_TXT.elements.name.RPH_OrderByStandingCheckBox	= RPH_TXT.orderByStanding
RPH_TXT.elements.tip.RPH_OrderByStandingCheckBox	= "이것을 선택하지 않으면 진영 목록이 블리자드 기본 설정으로 표시됩니다.\r\n\r\n이것을 선택하면 진영 목록이 평판 등급별로 정렬됩니다.\r\n\r\n |cFFFAA0A0비활성|r 된 진영을 보려면 체크 해제하고 목록의 맨 아래로 이동하십시오."
    
RPH_TXT.elements.name.RPH_ShowMobsButton	= RPH_TXT.showMobs
RPH_TXT.elements.tip.RPH_ShowMobsButton	= "평판을 높이기 위해 죽일 수있는 몹을 보려면 이 상자를 선택하십시오. 목록에는 [M]으로 표시됩니다."
RPH_TXT.elements.name.RPH_ShowQuestButton	= RPH_TXT.showQuests
RPH_TXT.elements.tip.RPH_ShowQuestButton	= "평판을 높이기 위해 수행 할 수있는 퀘스트를 보려면 이 상자를 선택하십시오. 목록에는 [Q]로 표시됩니다."
RPH_TXT.elements.name.RPH_ShowItemsButton	= RPH_TXT.showItems
RPH_TXT.elements.tip.RPH_ShowItemsButton	= "평판을 높이기 위해 기부 할 수있는 아이템을 보려면 이 상자를 선택하십시오. 목록에는 [I]로 표시됩니다."
RPH_TXT.elements.name.RPH_ShowInstancesButton	= RPH_TXT.showInstances
RPH_TXT.elements.tip.RPH_ShowInstancesButton	= "평판을 높이기 위해 수행할 수있는 던전을 보려면 이 상자를 선택하십시오. 목록에는 [D]로 표시됩니다."
RPH_TXT.elements.name.RPH_ShowGeneralButton	= RPH_TXT.showGeneral
RPH_TXT.elements.tip.RPH_ShowGeneralButton	= "평판을 높이기 위한 일반 정보를 표시하려면 이 상자를 선택하십시오. 목록에는 [G]로 표시됩니다."
    
RPH_TXT.elements.name.RPH_ShowAllButton	= RPH_TXT.showAll
RPH_TXT.elements.tip.RPH_ShowAllButton	= "이 버튼을 눌러 왼쪽에 있는 네 개의 체크 박스를 선택합니다. \r\n그러면 현재 선택된 진영의 평판을 제공하는 몬스터, 퀘스트, 아이템 및 던전이 나타납니다."
RPH_TXT.elements.name.RPH_ShowNoneButton	= RPH_TXT.showNone
RPH_TXT.elements.tip.RPH_ShowNoneButton	= "왼쪽에 있는 네 개의 체크 박스를 선택 취소하려면이 버튼을 누르십시오. \r\n현재 선택한 진영에서 평판을 얻는 방법을 숨깁니다."
    
RPH_TXT.elements.name.RPH_ExpandButton	= RPH_TXT.expand
RPH_TXT.elements.tip.RPH_ExpandButton	= "목록의 모든 항목을 펼쳐 보려면 이 단추를 누르십시오. 수집 퀘스트에 필요한 재료가 표시됩니다."
RPH_TXT.elements.name.RPH_CollapseButton	= RPH_TXT.collapse
RPH_TXT.elements.tip.RPH_CollapseButton	= "목록의 모든 항목을 접으려면 이 단추를 누르십시오. 수집 퀘스트에 필요한 재료가 숨겨집니다."
RPH_TXT.elements.name.RPH_SupressNoneFactionButton	= RPH_TXT.supressNoneFaction
RPH_TXT.elements.tip.RPH_SupressNoneFactionButton	= "이 버튼을 누르면 마우스 우클릭으로 제외했던 이 진영의 모든 퀘스트를 다시 활성화 할 수 있습니다."
RPH_TXT.elements.name.RPH_SupressNoneGlobalButton	= RPH_TXT.supressNoneGlobal
RPH_TXT.elements.tip.RPH_SupressNoneGlobalButton	= "이 버튼을 누르면 마우스 우클릭으로 제외했던 모든 진영에 대한 모든 퀘스트를 활성화 할 수 있습니다."
RPH_TXT.elements.name.RPH_ClearSessionGainButton	= RPH_TXT.clearSessionGain
RPH_TXT.elements.tip.RPH_ClearSessionGainButton	= "현재까지 획득한 총 평판을 다시 재설정 합니다."
    
RPH_TXT.elements.name.RPH_EnableMissingBox	= RPH_TXT.showMissing
RPH_TXT.elements.tip.RPH_EnableMissingBox	= "평판 프레임에서 각 진영의 다음 등급을 위해 필요한 평판 포인트를 표시하려면 이 설정을 활성화하십시오."
RPH_TXT.elements.name.RPH_ExtendDetailsBox	= RPH_TXT.extendDetails
RPH_TXT.elements.tip.RPH_ExtendDetailsBox	= "평판 세부사항을 자세히 표시하려면 이 설정을 활성화하십시오.\r\n기존의 세부사항에서 보여지는 정보 외에도, 다음 평판 등급에 도달하는데 필요한 평판 포인트와 선택된 진영에 대한 평판을 제공하는 퀘스트, 몬스터, 아이템과 던전들을 보여줍니다."
RPH_TXT.elements.name.RPH_GainToChatBox	= RPH_TXT.gainToChat
RPH_TXT.elements.tip.RPH_GainToChatBox	= "이 설정을 활성화하면 각 평판 획득과 함께 모든 진영에 대해 획득 한 평판이 채팅 창에 표시됩니다. \r\n이것은 일반적으로 주 진영에서만 얻는 평판 획득의 표준 표시와 다릅니다."
RPH_TXT.elements.name.RPH_NoGuildGainBox	= RPH_TXT.noGuildGain
RPH_TXT.elements.tip.RPH_NoGuildGainBox	= "채팅 창에 길드 평판 메시지를 표시하지 않으려면 이 설정을 활성화합니다."
RPH_TXT.elements.name.RPH_SupressOriginalGainBox	= RPH_TXT.suppressOriginalGain
RPH_TXT.elements.tip.RPH_SupressOriginalGainBox	= "표준 평판 획득 메시지를 표시하지 않으려면 이 설정을 실행하십시오. \r \n이것은 상세한 진영 획득 메시지를 활성화 한 경우 유용합니다. 그러면 표준 및 확장 버전에 대해 다른 메시지가 표시됩니다."
RPH_TXT.elements.name.RPH_ShowPreviewRepBox	= RPH_TXT.showPreviewRep
RPH_TXT.elements.tip.RPH_ShowPreviewRepBox	= "이 설정을 활성화하면 아이템을 건네거나 퀘스트를 완료하여 획득 할 수있는 평판이 평판 창의 일반 평판 표시 줄을 덮는 회색 막대로 표시됩니다."
RPH_TXT.elements.name.RPH_SwitchFactionBarBox	= RPH_TXT.switchFactionBar
RPH_TXT.elements.tip.RPH_SwitchFactionBarBox	= "이 설정을 활성화하면 평판을 얻은 마지막 진영이 자동으로 표시됩니다."
RPH_TXT.elements.name.RPH_NoGuildSwitchBox	= RPH_TXT.noGuildSwitch
RPH_TXT.elements.tip.RPH_NoGuildSwitchBox	= "길드 평판이 올라갈 때 표시된 진영을 길드로 자동 전환하지 않으려면이 설정을 활성화하십시오."
RPH_TXT.elements.name.RPH_SilentSwitchBox	= RPH_TXT.silentSwitch
RPH_TXT.elements.tip.RPH_SilentSwitchBox	= "메시지 없이 평판 표시줄을 자동으로 전환하려면 이 설정을 선택하십시오."
RPH_TXT.elements.name.RPH_GuildCapBox	= RPH_TXT.guildCap
RPH_TXT.elements.name.RPH_ChatFrameSlider	= "채팅 프레임"
RPH_TXT.elements.tip.RPH_ChatFrameSlider	= "RepHelper가 메시지를 출력할 채팅 프레임을 선택하십시오."
RPH_TXT.elements.name.RPH_EnableParagonBarBox = RPH_TXT.EnableParagonBar
RPH_TXT.elements.tip.RPH_EnableParagonBarBox  = "평판 표시줄에서 현재 불멸의 동맹 진행률을 표시하려면 이 옵션을 실행하십시오."	
    
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