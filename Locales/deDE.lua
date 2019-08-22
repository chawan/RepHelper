-- Deutsch (German)	
--------------------	--------------------
if (GetLocale() == "deDE") then	
	
-- Binding names	
BINDING_HEADER_REPHELPER	= "RepHelper"
BINDING_NAME_SHOWCONFIG	= "Optionen zeigen"
BINDING_NAME_SHOWDETAILS	= "Ruf-Detailfenster zeigen"
	
RPH_TXT	= {}
RPH_TXT.Mob = {}
-- help	
RPH_TXT.help	= "Ein Addon, um Deinen Ruf zu managen"
RPH_TXT.command	= "Kommando nicht erkannt"
RPH_TXT.usage	= "Benutzung"
RPH_TXT.helphelp	= "Zeigt diesen Hilfstext"
RPH_TXT.helpabout	= "zeigt Informationen zu den Autoren an"
RPH_TXT.helpstatus	= "zeigt den Konfigurationsstatus an"
-- about	
RPH_TXT.by	= "von"
RPH_TXT.version	= "Version"
RPH_TXT.date	= "Datum"
RPH_TXT.web	= "Webseite"
RPH_TXT.slash	= "Slash Kommando"
RPH_TXT_STAND_LV	= {}
RPH_TXT_STAND_LV[0]	= "Unbekannt"
RPH_TXT_STAND_LV[1]	= "Hasserfüllt"
RPH_TXT_STAND_LV[2]	= "Feindselig"
RPH_TXT_STAND_LV[3]	= "Unfreundlich"
RPH_TXT_STAND_LV[4]	= "Neutral"
RPH_TXT_STAND_LV[5]	= "Freundlich"
RPH_TXT_STAND_LV[6]	= "Wohlwollend"
RPH_TXT_STAND_LV[7]	= "Respektvoll"
RPH_TXT_STAND_LV[8]	= "Ehrfürchtig"
-- status	
RPH_TXT.status	= "Status"
RPH_TXT.disabled	= "inaktiv"
RPH_TXT.enabled	= "aktiv"
RPH_TXT.statMobs	= "Mobs zeigen [M]"
RPH_TXT.statQuests	= "Quests zeigen [Q]"
RPH_TXT.statInstances	= "Instanzen zeigen [D]"
RPH_TXT.statItems	= "Gegenstände zeigen [I]"
RPH_TXT.statGeneral	= "Allgemein zeigen [G]"
RPH_TXT.statMissing	= "Fehlenden Ruf zeigen"
RPH_TXT.statDetails	= "Erweiteres Detailfenster zeigen"
RPH_TXT.statChat	= "Detaillierte Chatmeldungen"
RPH_TXT.statNoGuildChat	= "Kein Chat für Gildenruf"
RPH_TXT.statSuppress	= "Originalmeldungen im Chat unterdrücken"
RPH_TXT.statPreview	= "Voransicht für Ruf im Ruffenster anzeigen"
RPH_TXT.statSwitch	= "Automatisch Rufbalken umschalten"
RPH_TXT.statNoGuildSwitch	= "Für Gildenruf nicht umschalten"
RPH_TXT.statSilentSwitch	= "Keine Meldungen bei Balkenwechsel"
RPH_TXT.statGuildCap	= "Gildenruflimit im Chat anzeigen"
-- XML UI elements	
RPH_TXT.showQuests	= "Quests"
RPH_TXT.showInstances	= "Instanzen"
RPH_TXT.showMobs	= "Mobs"
RPH_TXT.showItems	= "Gegenstände"
RPH_TXT.showGeneral	= "Allgemeines"
RPH_TXT.showAll	= "Alles zeigen"
RPH_TXT.showNone	= "Nichts zeigen"
RPH_TXT.expand	= "Aufklappen"
RPH_TXT.collapse	= "Zuklappen"
RPH_TXT.supressNoneFaction	= "Ausschluss löschen: Fraktion"
RPH_TXT.supressNoneGlobal	= "Ausschluss löschen: Alle"
RPH_TXT.suppressHint	= "Rechtsklick auf eine Quest, um sie von der Summe auszuschliessen."
RPH_TXT.clearSessionGain	= "Zähler für diesmal zurücksetzen"
-- options dialog	
RPH_TXT.showMissing	= "Fehlenden Ruf im Ruffenster anzeigen"
RPH_TXT.extendDetails	= "Erweitertes Detailfenster anzeigen"
RPH_TXT.gainToChat	= "Replace original faction gain messages with a more detailed version"
RPH_TXT.noGuildGain	= "Keinen Chat für Gildenruf"
RPH_TXT.suppressOriginalGain	= "Originalmeldungen zu Rufsteigerung unterdrücken"
RPH_TXT.showPreviewRep	= "Rufvorschau im Ruffenster zeigen"
RPH_TXT.switchFactionBar	= "Fraktionsbalken automatisch anpassen, wenn der Ruf steigt"
RPH_TXT.noGuildSwitch	= "Fraktionsbalken für Gildenruf nicht umschalten"
RPH_TXT.silentSwitch	= "Keine Chatmeldung wenn Balken umgeschaltet wird"
RPH_TXT.guildCap	= "Gildenruflimit im Chat anzeigen"
RPH_TXT.defaultChatFrame	= "Standard-Chatfenster verwenden"
RPH_TXT.chatFrame	= "Verwende Chatfenster %d (%s)"
RPH_TXT.usingDefaultChatFrame	= "Verwende Standard-Chatfenster"
RPH_TXT.usingChatFrame	= "Verwende Chatfenster"
RPH_TXT.EnableParagonBar = "Display paragon reputation in bars."
-- various LUA	
RPH_TXT.options	= "Optionen"
RPH_TXT.orderByStanding	= "Nach Ruf sortieren"
RPH_TXT.lookup	= "Schlage Fraktion "
RPH_TXT.allFactions	= "Zeige alle Fraktionen"
RPH_TXT.missing	= "(zur nächsten)"
RPH_TXT.missing2	= "Fehlend"
RPH_TXT.heroic	= "Heroisch"
RPH_TXT.normal	= "Normal"
RPH_TXT.switchBar	= "Rufbalken umgeschaltet auf"
-- RPH_ShowFactions	
RPH_TXT.faction	= "Fraktion"
RPH_TXT.is	= "ist"
RPH_TXT.withStanding	= "mit Ruf"
RPH_TXT.needed	= "notwendig"
RPH_TXT.mob	= "[Mob]"
RPH_TXT.limited	= "ist limitiert auf"
RPH_TXT.limitedPl	= "sind limitiert auf"
RPH_TXT.quest	= "[Quest]"
RPH_TXT.instance	= "[Instanz]"
RPH_TXT.items	= "[Gegenstand]"
RPH_TXT.unknown	= "ist diesem Spieler nicht bekannt."
-- mob Details
RPH_TXT.tmob	= "Trash Mobs"
RPH_TXT.oboss	= "andere Chef"
RPH_TXT.aboss	= "Alle Bosse"
RPH_TXT.pboss	= "Per Boss"
RPH_TXT.fclear	= "voll klar"
RPH_TXT.AU	= "Gewöhnliche"
RPH_TXT.AN	= "Benannte"
RPH_TXT.BB	= "Bloodsail Bukanier"
RPH_TXT.SSP	= "Southsea Piraten"
RPH_TXT.Wa	= "Wastewander"
RPH_TXT.VCm	= "Venture Co. mob"
RPH_TXT.Mob.MoshOgg_Spellcrafter = "Zauberkundiger der Mosh'Ogg"
RPH_TXT.Mob.BoulderfistOgre = "Oger der Felsfäuste"
-- Quest Details	
RPH_TXT.cdq	= "Andere Stadt tägliche Koch-Quests"
RPH_TXT.coq	= "Andere Stadt tägliche Koch-Quests"
RPH_TXT.fdq	= "Andere Stadt tägliche Angel-Quests"
RPH_TXT.foq	= "Andere Stadt tägliche Angel-Quests"
RPH_TXT.ndq	= "keine tägliche Quests"
RPH_TXT.deleted	= "überholt"
RPH_TXT.Championing	= "Championing (Wappenrock)"
RPH_TXT.bpqfg	= "Durch Prozent der Quest Fraktion Verstärkung"
	
-- items Details	
RPH_TXT.cbadge	= "Belobigungsabzeichen Andere Stadt"
-- instance Details	
RPH_TXT.srfd	= "Übergreifen von kerker"
RPH_TXT.tbd	= "ToBe Done"
RPH_TXT.nci	= "Cataclysm Instanzen (Normale)"
RPH_TXT.hci	= "Cataclysm Instanzen (Heroische)"
-- ToBeDone general	
RPH_TXT.tfr	= "Tiller Farming rep"
RPH_TXT.nswts	= "Nicht sicher, wenn diese beginnt"
RPH_TXT.mnd	= "Max. Anzahl von tägliche Quests"
RPH_TXT.mnds	= "Die maximale Anzahl von Tageszeitungen ist"
	
	
	
	
	
-- ReputationDetails	
RPH_TXT.currentRep	= "Aktueller Ruf"
RPH_TXT.neededRep	= "Benötigter Ruf"
RPH_TXT.missingRep	= "Fehlender Ruf"
RPH_TXT.repInBag	= "Ruf in Taschen"
RPH_TXT.repInBagBank	= "Ruf in Taschen und Bank"
RPH_TXT.repInQuest	= "Ruf durch Quests"
RPH_TXT.factionGained	= "Diesmal erhalten"
RPH_TXT.noInfo	= "Keine Informationen für diese Fraktion/Rufstufe verfügbar."
RPH_TXT.toExalted	= "Ruf bis Ehrfürchtig"
RPH_TXT.toBestFriend = "Reputation to best friend"
-- to chat	
RPH_TXT.stats	= " (Gesamt: %s%d, übrig: %d)"
RPH_TXT.statsNextStanding = " (Total: %s%d, Left to %s: %d)"
-- config changed	
RPH_TXT.configQuestion	= "Einige (neue) Einstellungen wurden gesetzt. Dies wird pro Einstellung nur einmal gemacht. Es ist empfohlen, die RepHelper-Optionen zu prüfen."
RPH_TXT.showConfig	= "Zeige Optionen"
RPH_TXT.later	= "Später"
-- UpdateList	
RPH_TXT.mobShort	= "[M]"
RPH_TXT.questShort	= "[Q]"
RPH_TXT.instanceShort	= "[D]"
RPH_TXT.itemsShort	= "[I]"
RPH_TXT.generalShort	= "[G]"
RPH_TXT.mobHead	= "Ruf steigern durch Töten dieses Mobs"
RPH_TXT.questHead	= "Ruf steigern durch Erfüllen dieser Quest"
RPH_TXT.instanceHead	= "Ruf steigern durch Bewältigen dieser Instanz"
RPH_TXT.itemsHead	= "Ruf steigern durch Abgeben dieser Gegenstände"
RPH_TXT.generalHead	= "Allgemeine Information, wie Du Ruf steigern kannst"
RPH_TXT.mobTip	= "Jedesmal, wenn Du diesen Mob tötest, steigert das Deinen Ruf. Wenn Du das oft genug machst, hilft Dir das, die nächste Rufstufe zu erreichen."
RPH_TXT.questTip	= "Jedesmal, wenn Du diese wiederholbare oder Tagesquest erfüllst, steigert das Deinen Ruf. Wenn Du das oft genug machst, hilft Dir das, die nächste Rufstufe zu erreichen."
RPH_TXT.instanceTip	= "Jedesmal, wenn Du diese Instanz bewältigst, steigert das Deinen Ruf. Wenn Du das oft genug machst, hilft Dir das, die nächste Rufstufe zu erreichen."
RPH_TXT.itemsName	= "Gegenstände abgeben"
RPH_TXT.itemsTip	= "Jedesmal, wenn Du die aufgeführten Gegenstände abgibst, steigert das Deinen Ruf. Wenn Du das oft genug machst, hilft Dir das, die nächste Rufstufe zu erreichen."
RPH_TXT.generalTip	= "Diese Information, wie man den Ruf steigern kann, bezieht sich nicht notwendigerweise auf wiederholbare Methoden."
RPH_TXT.allOfTheAbove	= "Summe der %d aufgeführten Quests"
RPH_TXT.questSummaryHead	= RPH_TXT.allOfTheAbove
RPH_TXT.questSummaryTip	= "Dieser Eintrag zeigt eine Zusammenfassung aller oben aufgeführten Quests.\r\nWenn alle aufgeführten Quests Tagesquests sind, kannst Du aus der Summe abschätzen, wie lange es dauern wird, um die nächste Rufstufe zu erreichen, wenn Du sie täglich machst."
RPH_TXT.complete	= "Erfüllt"
RPH_TXT.active	= "Aktiv"
RPH_TXT.inBag	= "In Taschen"
RPH_TXT.turnIns	= "Abgeben:"
RPH_TXT.reputation	= "Ruf:"
RPH_TXT.reputationCap	= "Ruflimit:"
RPH_TXT.reputationCapCurrent	= "Aktueller Ruf:"
RPH_TXT.inBagBank	= "In Taschen und Bank"
RPH_TXT.questCompleted	= "Quest erfüllt"
RPH_TXT.timesToDo	= "Zu erfüllen:"
RPH_TXT.instance2	= "Instanz:"
RPH_TXT.mode	= "Modus:"
RPH_TXT.timesToRun	= "Zu bewältigen:"
RPH_TXT.mob2	= "Mob:"
RPH_TXT.location	= "Ort:"
RPH_TXT.toDo	= "Zu erledigen:"
RPH_TXT.quest2	= "Suche:"
RPH_TXT.itemsRequired	= "Benötigte Gegenstände"
RPH_TXT.general2	= "Allgemein:"
RPH_TXT.maxStanding	= "Gibt ruf bis"
-- skills	
RPH_TXT.skillHerb	= "Kräuterkunde"
RPH_TXT.skillMine	= "Bergbau"
RPH_TXT.skillSkin	= "Kürschnerei"
RPH_TXT.skillAlch	= "Alchemie"
RPH_TXT.skillBlack	= "Schmieden"
RPH_TXT.skillEnch	= "Verzauberkunst"
RPH_TXT.skillEngi	= "Ingenieurskunst"
RPH_TXT.skillIncrip	= "Inschriftenkunde"
RPH_TXT.skillJewel	= "Juwelenschleifen"
RPH_TXT.skillLeath	= "Lederverarbeitung"
RPH_TXT.skillTail	= "Schneiderei"
RPH_TXT.skillAid	= "Erste Hilfe"
RPH_TXT.skillArch	= "Archäologie"
RPH_TXT.skillCook	= "Kochkunst"
RPH_TXT.skillFish	= "Angeln"
-- Tooltip	
RPH_TXT.elements	= {}
RPH_TXT.elements.name	= {}
RPH_TXT.elements.tip	= {}
	
RPH_TXT.elements.name.RPH_OptionsButton	= RPH_TXT.options
RPH_TXT.elements.tip.RPH_OptionsButton	= "Öffnet ein Fenster, in welchem RepHelper konfiguriert werden kann."
RPH_TXT.elements.name.RPH_OrderByStandingCheckBox	= RPH_TXT.orderByStanding
RPH_TXT.elements.tip.RPH_OrderByStandingCheckBox	= "Wenn diese Option nicht aktiviert ist, wird die Fraktionsliste wie im Original (Blizzard) sortiert, d.h. logisch und alphabetisch gruppiert.\r\n\r\nWenn diese Option aktiviert ist, wird die Fraktionsliste nach Ruf sortiert.\r\n\r\nUm |cFFFAA0A0inaktive"
	
RPH_TXT.elements.name.RPH_ShowMobsButton	= RPH_TXT.showMobs
RPH_TXT.elements.tip.RPH_ShowMobsButton	= "Diese Option aktivieren, um Mobs anzuzeigen, mit denen Du Deinen Ruf steigern kannst."
RPH_TXT.elements.name.RPH_ShowQuestButton	= RPH_TXT.showQuests
RPH_TXT.elements.tip.RPH_ShowQuestButton	= "Diese Option aktivieren, um Quests anzuzeigen, mit denen Du Deinen Ruf steigern kannst."
RPH_TXT.elements.name.RPH_ShowItemsButton	= RPH_TXT.showItems
RPH_TXT.elements.tip.RPH_ShowItemsButton	= "Diese Option aktivieren, um Gegenstände anzuzeigen, mit denen Du Deinen Ruf steigern kannst."
RPH_TXT.elements.name.RPH_ShowInstancesButton	= RPH_TXT.showInstances
RPH_TXT.elements.tip.RPH_ShowInstancesButton	= "Diese Option aktivieren, um Instanzen anzuzeigen, mit denen Du Deinen Ruf steigern kannst."
RPH_TXT.elements.name.RPH_ShowGeneralButton	= RPH_TXT.showGeneral
RPH_TXT.elements.tip.RPH_ShowGeneralButton	= "Diese Option aktivieren, um allgemeine Informationen zur Rufsteigerung anzuzeigen."
	
RPH_TXT.elements.name.RPH_ShowAllButton	= RPH_TXT.showAll
RPH_TXT.elements.tip.RPH_ShowAllButton	= "Auf diesen Knopf klicken, um alle vier links stehenden Optionen zu aktivieren. Es werden Mobs, Quests, Gegenstände und Instanzen angezeigt, die Deinen Ruf der ausgewählten Fraktion verbessern."
RPH_TXT.elements.name.RPH_ShowNoneButton	= RPH_TXT.showNone
RPH_TXT.elements.tip.RPH_ShowNoneButton	= "Auf diesen Knopf klicken, um alle vier links stehenden Optionen zu deaktivieren. \r\nEs werden dadurch keine Methoden mehr angezeigt, die Ruf mit der ausgewählten Fraktion verbessern."
	
RPH_TXT.elements.name.RPH_ExpandButton	= RPH_TXT.expand
RPH_TXT.elements.tip.RPH_ExpandButton	= "Auf diesen Knopf klicken, um alle Einträge aufzuklappen. Dies zeigt die Gegenstände an, die für die jeweiligen Sammelquests benötigt werden."
RPH_TXT.elements.name.RPH_CollapseButton	= RPH_TXT.collapse
RPH_TXT.elements.tip.RPH_CollapseButton	= "Auf diesen Knopf klicken, um alle Einträge zuzuklappen. Dies zeigt keine Gegenstände mehr an, die für die jeweiligen Sammelquests benötigt werden."
RPH_TXT.elements.name.RPH_SupressNoneFactionButton	= RPH_TXT.supressNoneFaction
RPH_TXT.elements.tip.RPH_SupressNoneFactionButton	= "Auf diesen Knopf klicken, um die Quests für diese Fraktion wieder zu aktivieren, die durch Rechtsklicken deaktiviert wurden."
RPH_TXT.elements.name.RPH_SupressNoneGlobalButton	= RPH_TXT.supressNoneGlobal
RPH_TXT.elements.tip.RPH_SupressNoneGlobalButton	= "Auf diesen Knopf klicken, um die Quests für alle Fraktionen wieder zu aktivieren, die durch Rechtsklicken deaktiviert wurden."
RPH_TXT.elements.name.RPH_ClearSessionGainButton	= RPH_TXT.clearSessionGain
RPH_TXT.elements.tip.RPH_ClearSessionGainButton	= "Auf diesen Knopf klicken, um den Zähler für die Rufsteigerung seit Spielstart zurückzusetzen."
	
RPH_TXT.elements.name.RPH_EnableMissingBox	= RPH_TXT.showMissing
RPH_TXT.elements.tip.RPH_EnableMissingBox	= "Diese Option aktivieren, um im Ruffenster hinter der Rufstufe die fehlenden Rufpunkte anzuzeigen, die nötig sind, um die nächste Stufe zu erreichen."
RPH_TXT.elements.name.RPH_ExtendDetailsBox	= RPH_TXT.extendDetails
RPH_TXT.elements.tip.RPH_ExtendDetailsBox	= "Diese Option aktivieren, um eine erweiterte Version anzuzeigen.\r\nZusätzlich zum normalen Fenster, werden dann die fehlenden Rufpunkte angezeigt und eine Liste von Mobs, Quests, Gegenständen und Instanzen, mit denen sich der Ruf der ausgewählten Frakt"
RPH_TXT.elements.name.RPH_GainToChatBox	= RPH_TXT.gainToChat
RPH_TXT.elements.tip.RPH_GainToChatBox	= "Diese Option aktivieren, um im Chat den Ruf mit aller Fraktionen anzuzeigen.\r\nDies weicht von der Standardeinstellung ab, welche nur den gestiegenen Ruf der Hauptfraktion anzeigt."
RPH_TXT.elements.name.RPH_NoGuildGainBox	= RPH_TXT.noGuildGain
RPH_TXT.elements.tip.RPH_NoGuildGainBox	= "Diese Option aktivieren, um für Gildenruf keine Meldungen in den Chat zu schreiben."
RPH_TXT.elements.name.RPH_SupressOriginalGainBox	= RPH_TXT.suppressOriginalGain
RPH_TXT.elements.tip.RPH_SupressOriginalGainBox	= "Diese Option aktivieren, um die Standard-Rufmeldungen im Chat zu unterdrücken.\r\nDies ist sinnvoll, wenn die erweiterten Meldungen aktiviert wurden, damit die Rufmeldungen nicht zweimal angezeigt werden."
RPH_TXT.elements.name.RPH_ShowPreviewRepBox	= RPH_TXT.showPreviewRep
RPH_TXT.elements.tip.RPH_ShowPreviewRepBox	= "Diese Option aktivieren, um den Ruf, der durch Abgeben von erfüllten Quests und gesammelten Gegenständen gesteigert werden kann, als grauen Balken über dem normalen Rufbalken im Ruffenster anzuzeigen."
RPH_TXT.elements.name.RPH_SwitchFactionBarBox	= RPH_TXT.switchFactionBar
RPH_TXT.elements.tip.RPH_SwitchFactionBarBox	= "Diese Option aktivieren, um den Rufbalken automatisch auf die Fraktion umzuschalten, für die zuletzt Ruf gesteigert wurde."
RPH_TXT.elements.name.RPH_NoGuildSwitchBox	= RPH_TXT.noGuildSwitch
RPH_TXT.elements.tip.RPH_NoGuildSwitchBox	= "Diese Option aktivieren, um den Rufbalken nicht umzuschalten, wenn Gildenruf gesteigert wird."
RPH_TXT.elements.name.RPH_SilentSwitchBox	= RPH_TXT.silentSwitch
RPH_TXT.elements.tip.RPH_SilentSwitchBox	= "Diese Option aktivieren, um den Rufbalken still (ohne Hinweise im Chat) umzuschalten."
RPH_TXT.elements.name.RPH_GuildCapBox	= RPH_TXT.guildCap
RPH_TXT.elements.name.RPH_ChatFrameSlider	= "Chatfenster"
RPH_TXT.elements.tip.RPH_ChatFrameSlider	= "Wähle aus, in welchem Chatfenster RepHelper seine Meldungen anzeigt."
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
	
	
