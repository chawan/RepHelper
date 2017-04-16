-- Русский (Russian)	
--------------------	--------------------
if (GetLocale() =="ruRU") then	
	
-- Binding names	
BINDING_HEADER_REPHELPER	= "RepHelper"
BINDING_NAME_SHOWCONFIG	= "Показать окно опций"
BINDING_NAME_SHOWDETAILS	= "Отображение детальной информации о репутации"
	
RPH_TXT	= {}
RPH_TXT.Mob = {}
-- help	
RPH_TXT.help	= "Инструментарий работы с репутацией"
RPH_TXT.command	= "Невозможно разобрать команду"
RPH_TXT.usage	= "Использование"
RPH_TXT.helphelp	= "Показывает этот текст помощи"
RPH_TXT.helpabout	= "Показывает информацию об авторе"
RPH_TXT.helpstatus	= "Показывает текущие настройки"
-- about	
RPH_TXT.by	= "durch"
RPH_TXT.version	= "Версия"
RPH_TXT.date	= "дата"
RPH_TXT.web	= "сайт"
RPH_TXT.slash	= "Слэш команды"
RPH_TXT_STAND_LV	= {}
RPH_TXT_STAND_LV[0]	= "Неизвестно"
RPH_TXT_STAND_LV[1]	= "Ненависть"
RPH_TXT_STAND_LV[2]	= "Враждебность"
RPH_TXT_STAND_LV[3]	= "недружественный"
RPH_TXT_STAND_LV[4]	= "Равнодушие"
RPH_TXT_STAND_LV[5]	= "Дружелюбие"
RPH_TXT_STAND_LV[6]	= "Уважение"
RPH_TXT_STAND_LV[7]	= "Почтение"
RPH_TXT_STAND_LV[8]	= "Превознесение"
-- status	
RPH_TXT.status	= "Статус"
RPH_TXT.disabled	= "выключено"
RPH_TXT.enabled	= "включено"
RPH_TXT.statMobs	= "Показывать мобов [М]"
RPH_TXT.statQuests	= "Показывать квесты [К]"
RPH_TXT.statInstances	= "Показывать подземелья [П]"
RPH_TXT.statItems	= "Показывать вещи [В]"
RPH_TXT.statGeneral	= "Показать общее [G]"
RPH_TXT.statMissing	= "Показывать недостающую репутацию"
RPH_TXT.statDetails	= "Показывать окно расширенной информации"
RPH_TXT.statChat	= "Детальное сообщение чата"
RPH_TXT.statNoGuildChat	= "Не отображать репутацию с гильдией в чат"
RPH_TXT.statSuppress	= "Подавить стандартное сообщение в чате"
RPH_TXT.statPreview	= "Отображать предпросмотр в окне репутации"
RPH_TXT.statSwitch	= "Автоматическое переключение фракции в полосе репутации"
RPH_TXT.statNoGuildSwitch	= "Не переключать для репутации с гильдией"
RPH_TXT.statSilentSwitch	= "Нет сообщений при переключении полосы репутации"
RPH_TXT.statGuildCap	= "Показать лимит репутации с гильдией в чат"
-- XML UI elements	
RPH_TXT.showQuests	= "Квесты"
RPH_TXT.showInstances	= "Подземелья"
RPH_TXT.showMobs	= "Мобы"
RPH_TXT.showItems	= "Вещи"
RPH_TXT.showGeneral	= "Показать общую информацию"
RPH_TXT.showAll	= "Показать все"
RPH_TXT.showNone	= "Скрыть все"
RPH_TXT.expand	= "Развернуть"
RPH_TXT.collapse	= "Свернуть"
RPH_TXT.supressNoneFaction	= "Убрать исключения фракции"
RPH_TXT.supressNoneGlobal	= "Убрать все исключения"
RPH_TXT.suppressHint	= "Кликните правой кнопкой, чтобы исключить квест из списка"
RPH_TXT.clearSessionGain	= "Очистить счетчик увеличений за сессию"
-- options dialog	
RPH_TXT.showMissing	= "Показывать недостающую репутацию во фрейме репутации"
RPH_TXT.extendDetails	= "Показывать окно детальной информации о репутации"
RPH_TXT.gainToChat	= "Писать детальное сообщение повышения репутации в чат"
RPH_TXT.noGuildGain	= "Не писать в чат для репутации с гильдией"
RPH_TXT.suppressOriginalGain	= "Подавлять стандартное сообщение повышения репутации"
RPH_TXT.showPreviewRep	= "Показывать репутацию, которая может быть получена, в окне репутации"
RPH_TXT.switchFactionBar	= "Переключать полосу репутации на фракцию, с которой только что приобрели репутацию"
RPH_TXT.noGuildSwitch	= "Не включать полосу репутации для репутации с гильдией"
RPH_TXT.silentSwitch	= "Не отображать сообщения в чат при переключении полосы репутации"
RPH_TXT.guildCap	= "Показывать в чат дневной максимум репутации с гильдией."
RPH_TXT.defaultChatFrame	= "Использовать окно чата по умолчанию"
RPH_TXT.chatFrame	= "Использовать окно чата: %d (%s)"
RPH_TXT.usingDefaultChatFrame	= "Используется окно чата по умолчанию"
RPH_TXT.usingChatFrame	= "Используется окно чата"
RPH_TXT.EnableParagonBar = "Display paragon reputation in bars."
-- various LUA	
RPH_TXT.options	= "Опции"
RPH_TXT.orderByStanding	= "Сортировать по репе"
RPH_TXT.lookup	= "Посмотреть фракцию"
RPH_TXT.allFactions	= "Список всех фракций"
RPH_TXT.missing	= "(до повышения)"
RPH_TXT.missing2	= "Не хватает"
RPH_TXT.heroic	= "Героик"
RPH_TXT.normal	= "Нормал"
RPH_TXT.switchBar	= "Переключаем полосу репутации на"
-- RPH_ShowFactions	
RPH_TXT.faction	= "Фракция"
RPH_TXT.is	= "есть"
RPH_TXT.withStanding	= "со стоячим"
RPH_TXT.needed	= "необходимо"
RPH_TXT.mob	= "[Моб]"
RPH_TXT.limited	= "ограничивается"
RPH_TXT.limitedPl	= "ограничиваются"
RPH_TXT.quest	= "[Квест]"
RPH_TXT.instance	= "[Подземелье]"
RPH_TXT.items	= "[Вещь]"
RPH_TXT.unknown	= "Не известно этому игроку"
-- mob Details	
RPH_TXT.tmob	= "Обычные мобы (треш)"
RPH_TXT.oboss	= "другим боссом"
RPH_TXT.aboss	= "все боссы"
RPH_TXT.pboss	= "за боссом"
RPH_TXT.fclear	= "полный ясно"
RPH_TXT.AU	= "Любой Безымянный"
RPH_TXT.AN	= "Любой имени"
RPH_TXT.BB	= "Пираты Кровавого Паруса"
RPH_TXT.SSP	= "пирата Южных морей"
RPH_TXT.Wa	= "шайки Скитальцев Пустыни"
RPH_TXT.VCm	= "Любой член торговой компании"
RPH_TXT.Mob.MoshOgg_Spellcrafter = "Чаротвор Мош'Огг"
RPH_TXT.Mob.BoulderfistOgre = "Огр из клана Тяжелого Кулака"
-- Quest Details	
RPH_TXT.cdq	= "Главный город кулинарные ежедневных заданий"
RPH_TXT.coq	= "Ежедневные кулинарные квесты других городов"
RPH_TXT.fdq	= "Главный город рыболовные ежедневных заданий"
RPH_TXT.foq	= "Ежедневные рыболовные квесты других городов"
RPH_TXT.ndq	= "нет ежедневных заданий"
RPH_TXT.deleted	= "устаревший"
RPH_TXT.Championing	= "чемпиона (камзол герольда)"
RPH_TXT.bpqfg	= "По процентов поисках усиления фракции"
	
-- items Details	
RPH_TXT.cbadge	= "Рекомендательный значок другой город"
-- instance Details	
RPH_TXT.srfd	= "Перетекают репутация от подземелья"
RPH_TXT.tbd	= "ToBe Done"
RPH_TXT.nci	= "Нормальные случаи Cataclysm"
RPH_TXT.hci	= "Героический случаях Cataclysm"
-- ToBeDone general	
RPH_TXT.tfr	= "Тиллер Сельское хозяйство репутации"
RPH_TXT.nswts	= "Не знаю, когда это начинается"
RPH_TXT.mnd	= "Максимальное количество ежедневных заданий"
RPH_TXT.mnds	= "Максимальное количество ежедневных газет является"
	
	
	
	
	
-- ReputationDetails	
RPH_TXT.currentRep	= "Текущая репутация"
RPH_TXT.neededRep	= "Необходимо набрать"
RPH_TXT.missingRep	= "Недостающая репутация"
RPH_TXT.repInBag	= "Репутация в сумках"
RPH_TXT.repInBagBank	= "Репутация в сумках и банке"
RPH_TXT.repInQuest	= "Репутация в квестах"
RPH_TXT.factionGained	= "Увеличено за сессию"
RPH_TXT.noInfo	= "Информация по этой фракции/репутации не найдена."
RPH_TXT.toExalted	= "Нужно до превознесения"
RPH_TXT.toBestFriend = "Reputation to best friend"
-- to chat	
RPH_TXT.stats	= " (Всего: %s%d, Осталось: %d)"
-- config changed	
RPH_TXT.configQuestion	= "Некоторые (новые) настройки были включены. Это происходит только 1 раз для каждой настройки. Рекомендуется убедиться, что новые настройки RepHelper'а Вас удовлетворяют."
RPH_TXT.showConfig	= "Посмотреть настройки"
RPH_TXT.later	= "Позже"
-- UpdateList	
RPH_TXT.mobShort	= "[М]"
RPH_TXT.questShort	= "[К]"
RPH_TXT.instanceShort	= "[П]"
RPH_TXT.itemsShort	= "[В]"
RPH_TXT.generalShort	= "[G]"
RPH_TXT.mobHead	= "Рост репутации за убийство этого моба"
RPH_TXT.questHead	= "Рост репутации за выполнение этого квеста"
RPH_TXT.instanceHead	= "Рост репутации за прохождение подземелья"
RPH_TXT.itemsHead	= "Рост репутации за сдачу предмета"
RPH_TXT.generalHead	= "Общая информация о получении репутации"
RPH_TXT.mobTip	= "Каждый раз убивая этого моба, вы увеличиваете репутацию. Продолжая в том же духе, вы достигните следующего уровня."
RPH_TXT.questTip	= "Каждый раз выполняя этот повторяемый квест, вы увеличиваете репутацию. Продолжая в том же духе, вы достигните следующего уровня."
RPH_TXT.instanceTip	= "Каждый раз, проходя подземелье, вы увеличиваете репутацию. Продолжая в том же духе, вы достигнете следующего уровня."
RPH_TXT.itemsName	= "Вещей на руках"
RPH_TXT.itemsTip	= "Каждый раз сдавая перечисленные вещи, вы увеличиваете репутацию. Продолжая в том же духе, вы достигните следующего уровня."
RPH_TXT.generalTip	= "Это информация о получении репутации с фракцией, которая может не относиться к повторяемым способам."
RPH_TXT.allOfTheAbove	= "Всего %d за квесты выше"
RPH_TXT.questSummaryHead	= RPH_TXT.allOfTheAbove
RPH_TXT.questSummaryTip	= "Эта запись показывает краткую сводку всех квестов, перечисленных выше.\\r\\nЭто полезно, когда все квесты ежедневные и можно посчитать сколько дней необходимо до получения нужного уровня репутации."
RPH_TXT.complete	= "завершен"
RPH_TXT.active	= "Активен"
RPH_TXT.inBag	= "В сумках"
RPH_TXT.turnIns	= "Сдать:"
RPH_TXT.reputation	= "Репутация:"
RPH_TXT.reputationCap	= "Лимит репутации:"
RPH_TXT.reputationCapCurrent	= "Текущая репутация:"
RPH_TXT.inBagBank	= "В сумках и банке"
RPH_TXT.questCompleted	= "Квест выполнен"
RPH_TXT.timesToDo	= "Сделать раз:"
RPH_TXT.instance2	= "Подземелье:"
RPH_TXT.mode	= "Режим:"
RPH_TXT.timesToRun	= "Сделать ранов:"
RPH_TXT.mob2	= "Моб:"
RPH_TXT.location	= "Локация:"
RPH_TXT.toDo	= "Сделать:"
RPH_TXT.quest2	= "Квест:"
RPH_TXT.itemsRequired	= "Вещей необходимо"
RPH_TXT.general2	= "Общий:"
RPH_TXT.maxStanding	= "Дает репутацию, пока не достигнуто"
-- skills	
RPH_TXT.skillHerb	= "Травничество"
RPH_TXT.skillMine	= "Горное дело"
RPH_TXT.skillSkin	= "Снятие шкур"
RPH_TXT.skillAlch	= "Алхимия"
RPH_TXT.skillBlack	= "Кузнечное дело"
RPH_TXT.skillEnch	= "Наложение чар"
RPH_TXT.skillEngi	= "Инженерное дело"
RPH_TXT.skillIncrip	= "Начертание"
RPH_TXT.skillJewel	= "Ювелирное дело"
RPH_TXT.skillLeath	= "Кожевничество"
RPH_TXT.skillTail	= "Портняжное дело"
RPH_TXT.skillAid	= "Первая помощь"
RPH_TXT.skillArch	= "Археология"
RPH_TXT.skillCook	= "Кулинария"
RPH_TXT.skillFish	= "Рыбная ловля"
-- Tooltip	
RPH_TXT.elements	= {}
RPH_TXT.elements.name	= {}
RPH_TXT.elements.tip	= {}
	
RPH_TXT.elements.name.RPH_OptionsButton	= RPH_TXT.options
RPH_TXT.elements.tip.RPH_OptionsButton	= "Открыть окно для настройки RepHelper'а."
RPH_TXT.elements.name.RPH_OrderByStandingCheckBox	= RPH_TXT.orderByStanding
RPH_TXT.elements.tip.RPH_OrderByStandingCheckBox	= "Если это поле не отмечено, то список фракций отображается в порядке по умолчанию, т.е. фракции группируются на логические группы, а внутри них по алфавиту. \\r\\nЕсли это поле отмечено, то список фракций сортируется по отношению с ними. \\r\\nЧтобы увидеть |cFFFAA0A0неактивные|r фракции, уберите отметку в этом поле и прокрутите до низа списка."
	
RPH_TXT.elements.name.RPH_ShowMobsButton	= RPH_TXT.showMobs
RPH_TXT.elements.tip.RPH_ShowMobsButton	= "Нажмите кнопку, чтобы видеть мобов, за убийство которых растет репутация."
RPH_TXT.elements.name.RPH_ShowQuestButton	= RPH_TXT.showQuests
RPH_TXT.elements.tip.RPH_ShowQuestButton	= "Нажмите кнопку, чтобы видеть квесты, за выполнение которых растет репутация."
RPH_TXT.elements.name.RPH_ShowItemsButton	= RPH_TXT.showItems
RPH_TXT.elements.tip.RPH_ShowItemsButton	= "Нажмите кнопку, чтобы видеть вещи, за сдачу которых растет репутация."
RPH_TXT.elements.name.RPH_ShowInstancesButton	= RPH_TXT.showInstances
RPH_TXT.elements.tip.RPH_ShowInstancesButton	= "Нажмите кнопку, чтобы видеть подземелья, за зачистку которых растет репутация."
RPH_TXT.elements.name.RPH_ShowGeneralButton	= RPH_TXT.showGeneral
RPH_TXT.elements.tip.RPH_ShowGeneralButton	= "Отметьте это поле, чтобы увидеть общую информацию об увеличении репутации."
	
RPH_TXT.elements.name.RPH_ShowAllButton	= RPH_TXT.showAll
RPH_TXT.elements.tip.RPH_ShowAllButton	= "Нажмите эту кнопку чтобы выбрать все 4 элемента.\r\nБудут показаны мобы, квесты, вещи и подземелья для выбранной фракции."
RPH_TXT.elements.name.RPH_ShowNoneButton	= RPH_TXT.showNone
RPH_TXT.elements.tip.RPH_ShowNoneButton	= "Нажмите эту кнопку чтобы снять выделение с 4 элементов.\r\nВ результате ничего не будет показано. Неожиданно, да? ;-)."
	
RPH_TXT.elements.name.RPH_ExpandButton	= RPH_TXT.expand
RPH_TXT.elements.tip.RPH_ExpandButton	= "Нажмите тут, чтобы развернуть все квесты. Будут показаны необходимые для квеста вещи."
RPH_TXT.elements.name.RPH_CollapseButton	= RPH_TXT.collapse
RPH_TXT.elements.tip.RPH_CollapseButton	= "Нажмите тут, чтобы свернуть все квесты. Угадайте что произойдет. :-)"
RPH_TXT.elements.name.RPH_SupressNoneFactionButton	= RPH_TXT.supressNoneFaction
RPH_TXT.elements.tip.RPH_SupressNoneFactionButton	= "Нажмите эту кнопку, чтобы вернуть все квесты этой фракции, которые Вы исключили из списка."
RPH_TXT.elements.name.RPH_SupressNoneGlobalButton	= RPH_TXT.supressNoneGlobal
RPH_TXT.elements.tip.RPH_SupressNoneGlobalButton	= "Нажмите эту кнопку, чтобы вернуть все квесты для всех фракций, которые Вы исключили из списка."
RPH_TXT.elements.name.RPH_ClearSessionGainButton	= RPH_TXT.clearSessionGain
RPH_TXT.elements.tip.RPH_ClearSessionGainButton	= "Нажмите эту кнопку, чтобы сбросить счетчик полученной репутации за эту сессию."
	
RPH_TXT.elements.name.RPH_EnableMissingBox	= RPH_TXT.showMissing
RPH_TXT.elements.tip.RPH_EnableMissingBox	= "Включение этого параметра позволит смотреть недостающую репутацию в окне репутации"
RPH_TXT.elements.name.RPH_ExtendDetailsBox	= RPH_TXT.extendDetails
RPH_TXT.elements.tip.RPH_ExtendDetailsBox	= "Включение этого параметра позволит смотреть детальную информацию по выбранной фракции.\r\nВ окне будут показаны рекомендуемые квесты, мобы, шмотки и прочая полезная информация"
RPH_TXT.elements.name.RPH_GainToChatBox	= RPH_TXT.gainToChat
RPH_TXT.elements.tip.RPH_GainToChatBox	= "Включение этого параметра будет показывать полный список фракций с которыми повысилась репутация.\r\nЭто отличается от стандартного уведомления тем, что будет показана не только основная фракция."
RPH_TXT.elements.name.RPH_NoGuildGainBox	= RPH_TXT.noGuildGain
RPH_TXT.elements.tip.RPH_NoGuildGainBox	= "Включите эту опцию, чтобы не получать сообщения о повышении репутации гильдии."
RPH_TXT.elements.name.RPH_SupressOriginalGainBox	= RPH_TXT.suppressOriginalGain
RPH_TXT.elements.tip.RPH_SupressOriginalGainBox	= "Включение этого параметра позволит не отображать стандартные сообщени о росте репутации.\r\nИмеет смысл включать, если включен предыдущий пункт."
RPH_TXT.elements.name.RPH_ShowPreviewRepBox	= RPH_TXT.showPreviewRep
RPH_TXT.elements.tip.RPH_ShowPreviewRepBox	= "Включите этот параметр, чтобы показать репутацию, которую можно получить путем сдачи предметов и завершения уже сделанных квестов, в качестве серой полоски поверх обычной полосы репутации в окне репутации."
RPH_TXT.elements.name.RPH_SwitchFactionBarBox	= RPH_TXT.switchFactionBar
RPH_TXT.elements.tip.RPH_SwitchFactionBarBox	= "Включите этот параметр для автоматического переключения фракции, за которой вы следите с помощью полосы репутации, на последнюю фракцию, с которой вы приобрели репутацию."
RPH_TXT.elements.name.RPH_NoGuildSwitchBox	= RPH_TXT.noGuildSwitch
RPH_TXT.elements.tip.RPH_NoGuildSwitchBox	= "Включите этот параметр, чтобы не переключать полосу репутации при получении репутации с гильдией."
RPH_TXT.elements.name.RPH_SilentSwitchBox	= RPH_TXT.silentSwitch
RPH_TXT.elements.tip.RPH_SilentSwitchBox	= "Включите этот параметр, чтобы полоса репутации переключалась без сообщения в чат."
RPH_TXT.elements.name.RPH_GuildCapBox	= RPH_TXT.guildCap
RPH_TXT.elements.name.RPH_ChatFrameSlider	= "Вкладка чата"
RPH_TXT.elements.tip.RPH_ChatFrameSlider	= "Выберите, в какой вкладке чата RepHelper печатает свои сообщения"
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
	
	
