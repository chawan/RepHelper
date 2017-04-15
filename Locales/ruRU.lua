-- Русский (Russian)	
--------------------	--------------------
if (GetLocale() =="ruRU") then	
	
-- Binding names	
BINDING_HEADER_FACTIONIZER	= "Factionizer"
BINDING_NAME_SHOWCONFIG	= "Показать окно опций"
BINDING_NAME_SHOWDETAILS	= "Отображение детальной информации о репутации"
	
FIZ_TXT	= {}
FIZ_TXT.Mob = {}
-- help	
FIZ_TXT.help	= "Инструментарий работы с репутацией"
FIZ_TXT.command	= "Невозможно разобрать команду"
FIZ_TXT.usage	= "Использование"
FIZ_TXT.helphelp	= "Показывает этот текст помощи"
FIZ_TXT.helpabout	= "Показывает информацию об авторе"
FIZ_TXT.helpstatus	= "Показывает текущие настройки"
-- about	
FIZ_TXT.by	= "durch"
FIZ_TXT.version	= "Версия"
FIZ_TXT.date	= "дата"
FIZ_TXT.web	= "сайт"
FIZ_TXT.slash	= "Слэш команды"
FIZ_TXT_STAND_LV	= {}
FIZ_TXT_STAND_LV[0]	= "Неизвестно"
FIZ_TXT_STAND_LV[1]	= "Ненависть"
FIZ_TXT_STAND_LV[2]	= "Враждебность"
FIZ_TXT_STAND_LV[3]	= "недружественный"
FIZ_TXT_STAND_LV[4]	= "Равнодушие"
FIZ_TXT_STAND_LV[5]	= "Дружелюбие"
FIZ_TXT_STAND_LV[6]	= "Уважение"
FIZ_TXT_STAND_LV[7]	= "Почтение"
FIZ_TXT_STAND_LV[8]	= "Превознесение"
-- status	
FIZ_TXT.status	= "Статус"
FIZ_TXT.disabled	= "выключено"
FIZ_TXT.enabled	= "включено"
FIZ_TXT.statMobs	= "Показывать мобов [М]"
FIZ_TXT.statQuests	= "Показывать квесты [К]"
FIZ_TXT.statInstances	= "Показывать подземелья [П]"
FIZ_TXT.statItems	= "Показывать вещи [В]"
FIZ_TXT.statGeneral	= "Показать общее [G]"
FIZ_TXT.statMissing	= "Показывать недостающую репутацию"
FIZ_TXT.statDetails	= "Показывать окно расширенной информации"
FIZ_TXT.statChat	= "Детальное сообщение чата"
FIZ_TXT.statNoGuildChat	= "Не отображать репутацию с гильдией в чат"
FIZ_TXT.statSuppress	= "Подавить стандартное сообщение в чате"
FIZ_TXT.statPreview	= "Отображать предпросмотр в окне репутации"
FIZ_TXT.statSwitch	= "Автоматическое переключение фракции в полосе репутации"
FIZ_TXT.statNoGuildSwitch	= "Не переключать для репутации с гильдией"
FIZ_TXT.statSilentSwitch	= "Нет сообщений при переключении полосы репутации"
FIZ_TXT.statGuildCap	= "Показать лимит репутации с гильдией в чат"
-- XML UI elements	
FIZ_TXT.showQuests	= "Квесты"
FIZ_TXT.showInstances	= "Подземелья"
FIZ_TXT.showMobs	= "Мобы"
FIZ_TXT.showItems	= "Вещи"
FIZ_TXT.showGeneral	= "Показать общую информацию"
FIZ_TXT.showAll	= "Показать все"
FIZ_TXT.showNone	= "Скрыть все"
FIZ_TXT.expand	= "Развернуть"
FIZ_TXT.collapse	= "Свернуть"
FIZ_TXT.supressNoneFaction	= "Убрать исключения фракции"
FIZ_TXT.supressNoneGlobal	= "Убрать все исключения"
FIZ_TXT.suppressHint	= "Кликните правой кнопкой, чтобы исключить квест из списка"
FIZ_TXT.clearSessionGain	= "Очистить счетчик увеличений за сессию"
-- options dialog	
FIZ_TXT.showMissing	= "Показывать недостающую репутацию во фрейме репутации"
FIZ_TXT.extendDetails	= "Показывать окно детальной информации о репутации"
FIZ_TXT.gainToChat	= "Писать детальное сообщение повышения репутации в чат"
FIZ_TXT.noGuildGain	= "Не писать в чат для репутации с гильдией"
FIZ_TXT.suppressOriginalGain	= "Подавлять стандартное сообщение повышения репутации"
FIZ_TXT.showPreviewRep	= "Показывать репутацию, которая может быть получена, в окне репутации"
FIZ_TXT.switchFactionBar	= "Переключать полосу репутации на фракцию, с которой только что приобрели репутацию"
FIZ_TXT.noGuildSwitch	= "Не включать полосу репутации для репутации с гильдией"
FIZ_TXT.silentSwitch	= "Не отображать сообщения в чат при переключении полосы репутации"
FIZ_TXT.guildCap	= "Показывать в чат дневной максимум репутации с гильдией."
FIZ_TXT.defaultChatFrame	= "Использовать окно чата по умолчанию"
FIZ_TXT.chatFrame	= "Использовать окно чата: %d (%s)"
FIZ_TXT.usingDefaultChatFrame	= "Используется окно чата по умолчанию"
FIZ_TXT.usingChatFrame	= "Используется окно чата"
FIZ_TXT.EnableParagonBar = "Display paragon reputation in bars."
-- various LUA	
FIZ_TXT.options	= "Опции"
FIZ_TXT.orderByStanding	= "Сортировать по репе"
FIZ_TXT.lookup	= "Посмотреть фракцию"
FIZ_TXT.allFactions	= "Список всех фракций"
FIZ_TXT.missing	= "(до повышения)"
FIZ_TXT.missing2	= "Не хватает"
FIZ_TXT.heroic	= "Героик"
FIZ_TXT.normal	= "Нормал"
FIZ_TXT.switchBar	= "Переключаем полосу репутации на"
-- FIZ_ShowFactions	
FIZ_TXT.faction	= "Фракция"
FIZ_TXT.is	= "есть"
FIZ_TXT.withStanding	= "со стоячим"
FIZ_TXT.needed	= "необходимо"
FIZ_TXT.mob	= "[Моб]"
FIZ_TXT.limited	= "ограничивается"
FIZ_TXT.limitedPl	= "ограничиваются"
FIZ_TXT.quest	= "[Квест]"
FIZ_TXT.instance	= "[Подземелье]"
FIZ_TXT.items	= "[Вещь]"
FIZ_TXT.unknown	= "Не известно этому игроку"
-- mob Details	
FIZ_TXT.tmob	= "Обычные мобы (треш)"
FIZ_TXT.oboss	= "другим боссом"
FIZ_TXT.aboss	= "все боссы"
FIZ_TXT.pboss	= "за боссом"
FIZ_TXT.fclear	= "полный ясно"
FIZ_TXT.AU	= "Любой Безымянный"
FIZ_TXT.AN	= "Любой имени"
FIZ_TXT.BB	= "Пираты Кровавого Паруса"
FIZ_TXT.SSP	= "пирата Южных морей"
FIZ_TXT.Wa	= "шайки Скитальцев Пустыни"
FIZ_TXT.VCm	= "Любой член торговой компании"
FIZ_TXT.Mob.MoshOgg_Spellcrafter = "Чаротвор Мош'Огг"
FIZ_TXT.Mob.BoulderfistOgre = "Огр из клана Тяжелого Кулака"
-- Quest Details	
FIZ_TXT.cdq	= "Главный город кулинарные ежедневных заданий"
FIZ_TXT.coq	= "Ежедневные кулинарные квесты других городов"
FIZ_TXT.fdq	= "Главный город рыболовные ежедневных заданий"
FIZ_TXT.foq	= "Ежедневные рыболовные квесты других городов"
FIZ_TXT.ndq	= "нет ежедневных заданий"
FIZ_TXT.deleted	= "устаревший"
FIZ_TXT.Championing	= "чемпиона (камзол герольда)"
FIZ_TXT.bpqfg	= "По процентов поисках усиления фракции"
	
-- items Details	
FIZ_TXT.cbadge	= "Рекомендательный значок другой город"
-- instance Details	
FIZ_TXT.srfd	= "Перетекают репутация от подземелья"
FIZ_TXT.tbd	= "ToBe Done"
FIZ_TXT.nci	= "Нормальные случаи Cataclysm"
FIZ_TXT.hci	= "Героический случаях Cataclysm"
-- ToBeDone general	
FIZ_TXT.tfr	= "Тиллер Сельское хозяйство репутации"
FIZ_TXT.nswts	= "Не знаю, когда это начинается"
FIZ_TXT.mnd	= "Максимальное количество ежедневных заданий"
FIZ_TXT.mnds	= "Максимальное количество ежедневных газет является"
	
	
	
	
	
-- ReputationDetails	
FIZ_TXT.currentRep	= "Текущая репутация"
FIZ_TXT.neededRep	= "Необходимо набрать"
FIZ_TXT.missingRep	= "Недостающая репутация"
FIZ_TXT.repInBag	= "Репутация в сумках"
FIZ_TXT.repInBagBank	= "Репутация в сумках и банке"
FIZ_TXT.repInQuest	= "Репутация в квестах"
FIZ_TXT.factionGained	= "Увеличено за сессию"
FIZ_TXT.noInfo	= "Информация по этой фракции/репутации не найдена."
FIZ_TXT.toExalted	= "Нужно до превознесения"
FIZ_TXT.toBestFriend = "Reputation to best friend"
-- to chat	
FIZ_TXT.stats	= " (Всего: %s%d, Осталось: %d)"
-- config changed	
FIZ_TXT.configQuestion	= "Некоторые (новые) настройки были включены. Это происходит только 1 раз для каждой настройки. Рекомендуется убедиться, что новые настройки Factionizer'а Вас удовлетворяют."
FIZ_TXT.showConfig	= "Посмотреть настройки"
FIZ_TXT.later	= "Позже"
-- UpdateList	
FIZ_TXT.mobShort	= "[М]"
FIZ_TXT.questShort	= "[К]"
FIZ_TXT.instanceShort	= "[П]"
FIZ_TXT.itemsShort	= "[В]"
FIZ_TXT.generalShort	= "[G]"
FIZ_TXT.mobHead	= "Рост репутации за убийство этого моба"
FIZ_TXT.questHead	= "Рост репутации за выполнение этого квеста"
FIZ_TXT.instanceHead	= "Рост репутации за прохождение подземелья"
FIZ_TXT.itemsHead	= "Рост репутации за сдачу предмета"
FIZ_TXT.generalHead	= "Общая информация о получении репутации"
FIZ_TXT.mobTip	= "Каждый раз убивая этого моба, вы увеличиваете репутацию. Продолжая в том же духе, вы достигните следующего уровня."
FIZ_TXT.questTip	= "Каждый раз выполняя этот повторяемый квест, вы увеличиваете репутацию. Продолжая в том же духе, вы достигните следующего уровня."
FIZ_TXT.instanceTip	= "Каждый раз, проходя подземелье, вы увеличиваете репутацию. Продолжая в том же духе, вы достигнете следующего уровня."
FIZ_TXT.itemsName	= "Вещей на руках"
FIZ_TXT.itemsTip	= "Каждый раз сдавая перечисленные вещи, вы увеличиваете репутацию. Продолжая в том же духе, вы достигните следующего уровня."
FIZ_TXT.generalTip	= "Это информация о получении репутации с фракцией, которая может не относиться к повторяемым способам."
FIZ_TXT.allOfTheAbove	= "Всего %d за квесты выше"
FIZ_TXT.questSummaryHead	= FIZ_TXT.allOfTheAbove
FIZ_TXT.questSummaryTip	= "Эта запись показывает краткую сводку всех квестов, перечисленных выше.\\r\\nЭто полезно, когда все квесты ежедневные и можно посчитать сколько дней необходимо до получения нужного уровня репутации."
FIZ_TXT.complete	= "завершен"
FIZ_TXT.active	= "Активен"
FIZ_TXT.inBag	= "В сумках"
FIZ_TXT.turnIns	= "Сдать:"
FIZ_TXT.reputation	= "Репутация:"
FIZ_TXT.reputationCap	= "Лимит репутации:"
FIZ_TXT.reputationCapCurrent	= "Текущая репутация:"
FIZ_TXT.inBagBank	= "В сумках и банке"
FIZ_TXT.questCompleted	= "Квест выполнен"
FIZ_TXT.timesToDo	= "Сделать раз:"
FIZ_TXT.instance2	= "Подземелье:"
FIZ_TXT.mode	= "Режим:"
FIZ_TXT.timesToRun	= "Сделать ранов:"
FIZ_TXT.mob2	= "Моб:"
FIZ_TXT.location	= "Локация:"
FIZ_TXT.toDo	= "Сделать:"
FIZ_TXT.quest2	= "Квест:"
FIZ_TXT.itemsRequired	= "Вещей необходимо"
FIZ_TXT.general2	= "Общий:"
FIZ_TXT.maxStanding	= "Дает репутацию, пока не достигнуто"
-- skills	
FIZ_TXT.skillHerb	= "Травничество"
FIZ_TXT.skillMine	= "Горное дело"
FIZ_TXT.skillSkin	= "Снятие шкур"
FIZ_TXT.skillAlch	= "Алхимия"
FIZ_TXT.skillBlack	= "Кузнечное дело"
FIZ_TXT.skillEnch	= "Наложение чар"
FIZ_TXT.skillEngi	= "Инженерное дело"
FIZ_TXT.skillIncrip	= "Начертание"
FIZ_TXT.skillJewel	= "Ювелирное дело"
FIZ_TXT.skillLeath	= "Кожевничество"
FIZ_TXT.skillTail	= "Портняжное дело"
FIZ_TXT.skillAid	= "Первая помощь"
FIZ_TXT.skillArch	= "Археология"
FIZ_TXT.skillCook	= "Кулинария"
FIZ_TXT.skillFish	= "Рыбная ловля"
-- Tooltip	
FIZ_TXT.elements	= {}
FIZ_TXT.elements.name	= {}
FIZ_TXT.elements.tip	= {}
	
FIZ_TXT.elements.name.FIZ_OptionsButton	= FIZ_TXT.options
FIZ_TXT.elements.tip.FIZ_OptionsButton	= "Открыть окно для настройки Factionizer'а."
FIZ_TXT.elements.name.FIZ_OrderByStandingCheckBox	= FIZ_TXT.orderByStanding
FIZ_TXT.elements.tip.FIZ_OrderByStandingCheckBox	= "Если это поле не отмечено, то список фракций отображается в порядке по умолчанию, т.е. фракции группируются на логические группы, а внутри них по алфавиту. \\r\\nЕсли это поле отмечено, то список фракций сортируется по отношению с ними. \\r\\nЧтобы увидеть |cFFFAA0A0неактивные|r фракции, уберите отметку в этом поле и прокрутите до низа списка."
	
FIZ_TXT.elements.name.FIZ_ShowMobsButton	= FIZ_TXT.showMobs
FIZ_TXT.elements.tip.FIZ_ShowMobsButton	= "Нажмите кнопку, чтобы видеть мобов, за убийство которых растет репутация."
FIZ_TXT.elements.name.FIZ_ShowQuestButton	= FIZ_TXT.showQuests
FIZ_TXT.elements.tip.FIZ_ShowQuestButton	= "Нажмите кнопку, чтобы видеть квесты, за выполнение которых растет репутация."
FIZ_TXT.elements.name.FIZ_ShowItemsButton	= FIZ_TXT.showItems
FIZ_TXT.elements.tip.FIZ_ShowItemsButton	= "Нажмите кнопку, чтобы видеть вещи, за сдачу которых растет репутация."
FIZ_TXT.elements.name.FIZ_ShowInstancesButton	= FIZ_TXT.showInstances
FIZ_TXT.elements.tip.FIZ_ShowInstancesButton	= "Нажмите кнопку, чтобы видеть подземелья, за зачистку которых растет репутация."
FIZ_TXT.elements.name.FIZ_ShowGeneralButton	= FIZ_TXT.showGeneral
FIZ_TXT.elements.tip.FIZ_ShowGeneralButton	= "Отметьте это поле, чтобы увидеть общую информацию об увеличении репутации."
	
FIZ_TXT.elements.name.FIZ_ShowAllButton	= FIZ_TXT.showAll
FIZ_TXT.elements.tip.FIZ_ShowAllButton	= "Нажмите эту кнопку чтобы выбрать все 4 элемента.\r\nБудут показаны мобы, квесты, вещи и подземелья для выбранной фракции."
FIZ_TXT.elements.name.FIZ_ShowNoneButton	= FIZ_TXT.showNone
FIZ_TXT.elements.tip.FIZ_ShowNoneButton	= "Нажмите эту кнопку чтобы снять выделение с 4 элементов.\r\nВ результате ничего не будет показано. Неожиданно, да? ;-)."
	
FIZ_TXT.elements.name.FIZ_ExpandButton	= FIZ_TXT.expand
FIZ_TXT.elements.tip.FIZ_ExpandButton	= "Нажмите тут, чтобы развернуть все квесты. Будут показаны необходимые для квеста вещи."
FIZ_TXT.elements.name.FIZ_CollapseButton	= FIZ_TXT.collapse
FIZ_TXT.elements.tip.FIZ_CollapseButton	= "Нажмите тут, чтобы свернуть все квесты. Угадайте что произойдет. :-)"
FIZ_TXT.elements.name.FIZ_SupressNoneFactionButton	= FIZ_TXT.supressNoneFaction
FIZ_TXT.elements.tip.FIZ_SupressNoneFactionButton	= "Нажмите эту кнопку, чтобы вернуть все квесты этой фракции, которые Вы исключили из списка."
FIZ_TXT.elements.name.FIZ_SupressNoneGlobalButton	= FIZ_TXT.supressNoneGlobal
FIZ_TXT.elements.tip.FIZ_SupressNoneGlobalButton	= "Нажмите эту кнопку, чтобы вернуть все квесты для всех фракций, которые Вы исключили из списка."
FIZ_TXT.elements.name.FIZ_ClearSessionGainButton	= FIZ_TXT.clearSessionGain
FIZ_TXT.elements.tip.FIZ_ClearSessionGainButton	= "Нажмите эту кнопку, чтобы сбросить счетчик полученной репутации за эту сессию."
	
FIZ_TXT.elements.name.FIZ_EnableMissingBox	= FIZ_TXT.showMissing
FIZ_TXT.elements.tip.FIZ_EnableMissingBox	= "Включение этого параметра позволит смотреть недостающую репутацию в окне репутации"
FIZ_TXT.elements.name.FIZ_ExtendDetailsBox	= FIZ_TXT.extendDetails
FIZ_TXT.elements.tip.FIZ_ExtendDetailsBox	= "Включение этого параметра позволит смотреть детальную информацию по выбранной фракции.\r\nВ окне будут показаны рекомендуемые квесты, мобы, шмотки и прочая полезная информация"
FIZ_TXT.elements.name.FIZ_GainToChatBox	= FIZ_TXT.gainToChat
FIZ_TXT.elements.tip.FIZ_GainToChatBox	= "Включение этого параметра будет показывать полный список фракций с которыми повысилась репутация.\r\nЭто отличается от стандартного уведомления тем, что будет показана не только основная фракция."
FIZ_TXT.elements.name.FIZ_NoGuildGainBox	= FIZ_TXT.noGuildGain
FIZ_TXT.elements.tip.FIZ_NoGuildGainBox	= "Включите эту опцию, чтобы не получать сообщения о повышении репутации гильдии."
FIZ_TXT.elements.name.FIZ_SupressOriginalGainBox	= FIZ_TXT.suppressOriginalGain
FIZ_TXT.elements.tip.FIZ_SupressOriginalGainBox	= "Включение этого параметра позволит не отображать стандартные сообщени о росте репутации.\r\nИмеет смысл включать, если включен предыдущий пункт."
FIZ_TXT.elements.name.FIZ_ShowPreviewRepBox	= FIZ_TXT.showPreviewRep
FIZ_TXT.elements.tip.FIZ_ShowPreviewRepBox	= "Включите этот параметр, чтобы показать репутацию, которую можно получить путем сдачи предметов и завершения уже сделанных квестов, в качестве серой полоски поверх обычной полосы репутации в окне репутации."
FIZ_TXT.elements.name.FIZ_SwitchFactionBarBox	= FIZ_TXT.switchFactionBar
FIZ_TXT.elements.tip.FIZ_SwitchFactionBarBox	= "Включите этот параметр для автоматического переключения фракции, за которой вы следите с помощью полосы репутации, на последнюю фракцию, с которой вы приобрели репутацию."
FIZ_TXT.elements.name.FIZ_NoGuildSwitchBox	= FIZ_TXT.noGuildSwitch
FIZ_TXT.elements.tip.FIZ_NoGuildSwitchBox	= "Включите этот параметр, чтобы не переключать полосу репутации при получении репутации с гильдией."
FIZ_TXT.elements.name.FIZ_SilentSwitchBox	= FIZ_TXT.silentSwitch
FIZ_TXT.elements.tip.FIZ_SilentSwitchBox	= "Включите этот параметр, чтобы полоса репутации переключалась без сообщения в чат."
FIZ_TXT.elements.name.FIZ_GuildCapBox	= FIZ_TXT.guildCap
FIZ_TXT.elements.name.FIZ_ChatFrameSlider	= "Вкладка чата"
FIZ_TXT.elements.tip.FIZ_ChatFrameSlider	= "Выберите, в какой вкладке чата Factionizer печатает свои сообщения"
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
	
	
