-- Deutsch (German)	
--------------------	--------------------
if (GetLocale() == "deDE") then	
	
-- Binding names	
BINDING_HEADER_FACTIONIZER	= "Factionizer"
BINDING_NAME_SHOWCONFIG	= "Optionen zeigen"
BINDING_NAME_SHOWDETAILS	= "Ruf-Detailfenster zeigen"
	
FIZ_TXT	= {}
FIZ_TXT.Mob = {}
-- help	
FIZ_TXT.help	= "Ein Addon, um Deinen Ruf zu managen"
FIZ_TXT.command	= "Kommando nicht erkannt"
FIZ_TXT.usage	= "Benutzung"
FIZ_TXT.helphelp	= "Zeigt diesen Hilfstext"
FIZ_TXT.helpabout	= "zeigt Informationen zu den Autoren an"
FIZ_TXT.helpstatus	= "zeigt den Konfigurationsstatus an"
-- about	
FIZ_TXT.by	= "von"
FIZ_TXT.version	= "Version"
FIZ_TXT.date	= "Datum"
FIZ_TXT.web	= "Webseite"
FIZ_TXT.slash	= "Slash Kommando"
FIZ_TXT_STAND_LV	= {}
FIZ_TXT_STAND_LV[0]	= "Unbekannt"
FIZ_TXT_STAND_LV[1]	= "Hasserfüllt"
FIZ_TXT_STAND_LV[2]	= "Feindselig"
FIZ_TXT_STAND_LV[3]	= "Unfreundlich"
FIZ_TXT_STAND_LV[4]	= "Neutral"
FIZ_TXT_STAND_LV[5]	= "Freundlich"
FIZ_TXT_STAND_LV[6]	= "Wohlwollend"
FIZ_TXT_STAND_LV[7]	= "Respektvoll"
FIZ_TXT_STAND_LV[8]	= "Ehrfürchtig"
-- status	
FIZ_TXT.status	= "Status"
FIZ_TXT.disabled	= "inaktiv"
FIZ_TXT.enabled	= "aktiv"
FIZ_TXT.statMobs	= "Mobs zeigen [M]"
FIZ_TXT.statQuests	= "Quests zeigen [Q]"
FIZ_TXT.statInstances	= "Instanzen zeigen [D]"
FIZ_TXT.statItems	= "Gegenstände zeigen [I]"
FIZ_TXT.statGeneral	= "Allgemein zeigen [G]"
FIZ_TXT.statMissing	= "Fehlenden Ruf zeigen"
FIZ_TXT.statDetails	= "Erweiteres Detailfenster zeigen"
FIZ_TXT.statChat	= "Detaillierte Chatmeldungen"
FIZ_TXT.statNoGuildChat	= "Kein Chat für Gildenruf"
FIZ_TXT.statSuppress	= "Originalmeldungen im Chat unterdrücken"
FIZ_TXT.statPreview	= "Voransicht für Ruf im Ruffenster anzeigen"
FIZ_TXT.statSwitch	= "Automatisch Rufbalken umschalten"
FIZ_TXT.statNoGuildSwitch	= "Für Gildenruf nicht umschalten"
FIZ_TXT.statSilentSwitch	= "Keine Meldungen bei Balkenwechsel"
FIZ_TXT.statGuildCap	= "Gildenruflimit im Chat anzeigen"
-- XML UI elements	
FIZ_TXT.showQuests	= "Quests"
FIZ_TXT.showInstances	= "Instanzen"
FIZ_TXT.showMobs	= "Mobs"
FIZ_TXT.showItems	= "Gegenstände"
FIZ_TXT.showGeneral	= "Allgemeines"
FIZ_TXT.showAll	= "Alles zeigen"
FIZ_TXT.showNone	= "Nichts zeigen"
FIZ_TXT.expand	= "Aufklappen"
FIZ_TXT.collapse	= "Zuklappen"
FIZ_TXT.supressNoneFaction	= "Ausschluss löschen: Fraktion"
FIZ_TXT.supressNoneGlobal	= "Ausschluss löschen: Alle"
FIZ_TXT.suppressHint	= "Rechtsklick auf eine Quest, um sie von der Summe auszuschliessen."
FIZ_TXT.clearSessionGain	= "Zähler für diesmal zurücksetzen"
-- options dialog	
FIZ_TXT.showMissing	= "Fehlenden Ruf im Ruffenster anzeigen"
FIZ_TXT.extendDetails	= "Erweitertes Detailfenster anzeigen"
FIZ_TXT.gainToChat	= "Detaillierte Rufsteigerungen in den Chat schreiben"
FIZ_TXT.noGuildGain	= "Keinen Chat für Gildenruf"
FIZ_TXT.suppressOriginalGain	= "Originalmeldungen zu Rufsteigerung unterdrücken"
FIZ_TXT.showPreviewRep	= "Rufvorschau im Ruffenster zeigen"
FIZ_TXT.switchFactionBar	= "Fraktionsbalken automatisch anpassen, wenn der Ruf steigt"
FIZ_TXT.noGuildSwitch	= "Fraktionsbalken für Gildenruf nicht umschalten"
FIZ_TXT.silentSwitch	= "Keine Chatmeldung wenn Balken umgeschaltet wird"
FIZ_TXT.guildCap	= "Gildenruflimit im Chat anzeigen"
FIZ_TXT.defaultChatFrame	= "Standard-Chatfenster verwenden"
FIZ_TXT.chatFrame	= "Verwende Chatfenster %d (%s)"
FIZ_TXT.usingDefaultChatFrame	= "Verwende Standard-Chatfenster"
FIZ_TXT.usingChatFrame	= "Verwende Chatfenster"
FIZ_TXT.EnableParagonBar = "Display paragon reputation in bars."
-- various LUA	
FIZ_TXT.options	= "Optionen"
FIZ_TXT.orderByStanding	= "Nach Ruf sortieren"
FIZ_TXT.lookup	= "Schlage Fraktion "
FIZ_TXT.allFactions	= "Zeige alle Fraktionen"
FIZ_TXT.missing	= "(zur nächsten)"
FIZ_TXT.missing2	= "Fehlend"
FIZ_TXT.heroic	= "Heroisch"
FIZ_TXT.normal	= "Normal"
FIZ_TXT.switchBar	= "Rufbalken umgeschaltet auf"
-- FIZ_ShowFactions	
FIZ_TXT.faction	= "Fraktion"
FIZ_TXT.is	= "ist"
FIZ_TXT.withStanding	= "mit Ruf"
FIZ_TXT.needed	= "notwendig"
FIZ_TXT.mob	= "[Mob]"
FIZ_TXT.limited	= "ist limitiert auf"
FIZ_TXT.limitedPl	= "sind limitiert auf"
FIZ_TXT.quest	= "[Quest]"
FIZ_TXT.instance	= "[Instanz]"
FIZ_TXT.items	= "[Gegenstand]"
FIZ_TXT.unknown	= "ist diesem Spieler nicht bekannt."
-- mob Details
FIZ_TXT.tmob	= "Trash Mobs"
FIZ_TXT.oboss	= "andere Chef"
FIZ_TXT.aboss	= "Alle Bosse"
FIZ_TXT.pboss	= "Per Boss"
FIZ_TXT.fclear	= "voll klar"
FIZ_TXT.AU	= "Gewöhnliche"
FIZ_TXT.AN	= "Benannte"
FIZ_TXT.BB	= "Bloodsail Bukanier"
FIZ_TXT.SSP	= "Southsea Piraten"
FIZ_TXT.Wa	= "Wastewander"
FIZ_TXT.VCm	= "Venture Co. mob"
FIZ_TXT.Mob.MoshOgg_Spellcrafter = "Zauberkundiger der Mosh'Ogg"
FIZ_TXT.Mob.BoulderfistOgre = "Oger der Felsfäuste"
-- Quest Details	
FIZ_TXT.cdq	= "Andere Stadt tägliche Koch-Quests"
FIZ_TXT.coq	= "Andere Stadt tägliche Koch-Quests"
FIZ_TXT.fdq	= "Andere Stadt tägliche Angel-Quests"
FIZ_TXT.foq	= "Andere Stadt tägliche Angel-Quests"
FIZ_TXT.ndq	= "keine tägliche Quests"
FIZ_TXT.deleted	= "überholt"
FIZ_TXT.Championing	= "Championing (Wappenrock)"
FIZ_TXT.bpqfg	= "Durch Prozent der Quest Fraktion Verstärkung"
	
-- items Details	
FIZ_TXT.cbadge	= "Belobigungsabzeichen Andere Stadt"
-- instance Details	
FIZ_TXT.srfd	= "Übergreifen von kerker"
FIZ_TXT.tbd	= "ToBe Done"
FIZ_TXT.nci	= "Cataclysm Instanzen (Normale)"
FIZ_TXT.hci	= "Cataclysm Instanzen (Heroische)"
-- ToBeDone general	
FIZ_TXT.tfr	= "Tiller Farming rep"
FIZ_TXT.nswts	= "Nicht sicher, wenn diese beginnt"
FIZ_TXT.mnd	= "Max. Anzahl von tägliche Quests"
FIZ_TXT.mnds	= "Die maximale Anzahl von Tageszeitungen ist"
	
	
	
	
	
-- ReputationDetails	
FIZ_TXT.currentRep	= "Aktueller Ruf"
FIZ_TXT.neededRep	= "Benötigter Ruf"
FIZ_TXT.missingRep	= "Fehlender Ruf"
FIZ_TXT.repInBag	= "Ruf in Taschen"
FIZ_TXT.repInBagBank	= "Ruf in Taschen und Bank"
FIZ_TXT.repInQuest	= "Ruf durch Quests"
FIZ_TXT.factionGained	= "Diesmal erhalten"
FIZ_TXT.noInfo	= "Keine Informationen für diese Fraktion/Rufstufe verfügbar."
FIZ_TXT.toExalted	= "Ruf bis Ehrfürchtig"
FIZ_TXT.toBestFriend = "Reputation to best friend"
-- to chat	
FIZ_TXT.stats	= " (Gesamt: %s%d, übrig: %d)"
-- config changed	
FIZ_TXT.configQuestion	= "Einige (neue) Einstellungen wurden gesetzt. Dies wird pro Einstellung nur einmal gemacht. Es ist empfohlen, die Factionizer-Optionen zu prüfen."
FIZ_TXT.showConfig	= "Zeige Optionen"
FIZ_TXT.later	= "Später"
-- UpdateList	
FIZ_TXT.mobShort	= "[M]"
FIZ_TXT.questShort	= "[Q]"
FIZ_TXT.instanceShort	= "[D]"
FIZ_TXT.itemsShort	= "[I]"
FIZ_TXT.generalShort	= "[G]"
FIZ_TXT.mobHead	= "Ruf steigern durch Töten dieses Mobs"
FIZ_TXT.questHead	= "Ruf steigern durch Erfüllen dieser Quest"
FIZ_TXT.instanceHead	= "Ruf steigern durch Bewältigen dieser Instanz"
FIZ_TXT.itemsHead	= "Ruf steigern durch Abgeben dieser Gegenstände"
FIZ_TXT.generalHead	= "Allgemeine Information, wie Du Ruf steigern kannst"
FIZ_TXT.mobTip	= "Jedesmal, wenn Du diesen Mob tötest, steigert das Deinen Ruf. Wenn Du das oft genug machst, hilft Dir das, die nächste Rufstufe zu erreichen."
FIZ_TXT.questTip	= "Jedesmal, wenn Du diese wiederholbare oder Tagesquest erfüllst, steigert das Deinen Ruf. Wenn Du das oft genug machst, hilft Dir das, die nächste Rufstufe zu erreichen."
FIZ_TXT.instanceTip	= "Jedesmal, wenn Du diese Instanz bewältigst, steigert das Deinen Ruf. Wenn Du das oft genug machst, hilft Dir das, die nächste Rufstufe zu erreichen."
FIZ_TXT.itemsName	= "Gegenstände abgeben"
FIZ_TXT.itemsTip	= "Jedesmal, wenn Du die aufgeführten Gegenstände abgibst, steigert das Deinen Ruf. Wenn Du das oft genug machst, hilft Dir das, die nächste Rufstufe zu erreichen."
FIZ_TXT.generalTip	= "Diese Information, wie man den Ruf steigern kann, bezieht sich nicht notwendigerweise auf wiederholbare Methoden."
FIZ_TXT.allOfTheAbove	= "Summe der %d aufgeführten Quests"
FIZ_TXT.questSummaryHead	= FIZ_TXT.allOfTheAbove
FIZ_TXT.questSummaryTip	= "Dieser Eintrag zeigt eine Zusammenfassung aller oben aufgeführten Quests.\r\nWenn alle aufgeführten Quests Tagesquests sind, kannst Du aus der Summe abschätzen, wie lange es dauern wird, um die nächste Rufstufe zu erreichen, wenn Du sie täglich machst."
FIZ_TXT.complete	= "Erfüllt"
FIZ_TXT.active	= "Aktiv"
FIZ_TXT.inBag	= "In Taschen"
FIZ_TXT.turnIns	= "Abgeben:"
FIZ_TXT.reputation	= "Ruf:"
FIZ_TXT.reputationCap	= "Ruflimit:"
FIZ_TXT.reputationCapCurrent	= "Aktueller Ruf:"
FIZ_TXT.inBagBank	= "In Taschen und Bank"
FIZ_TXT.questCompleted	= "Quest erfüllt"
FIZ_TXT.timesToDo	= "Zu erfüllen:"
FIZ_TXT.instance2	= "Instanz:"
FIZ_TXT.mode	= "Modus:"
FIZ_TXT.timesToRun	= "Zu bewältigen:"
FIZ_TXT.mob2	= "Mob:"
FIZ_TXT.location	= "Ort:"
FIZ_TXT.toDo	= "Zu erledigen:"
FIZ_TXT.quest2	= "Suche:"
FIZ_TXT.itemsRequired	= "Benötigte Gegenstände"
FIZ_TXT.general2	= "Allgemein:"
FIZ_TXT.maxStanding	= "Gibt ruf bis"
-- skills	
FIZ_TXT.skillHerb	= "Kräuterkunde"
FIZ_TXT.skillMine	= "Bergbau"
FIZ_TXT.skillSkin	= "Kürschnerei"
FIZ_TXT.skillAlch	= "Alchemie"
FIZ_TXT.skillBlack	= "Schmieden"
FIZ_TXT.skillEnch	= "Verzauberkunst"
FIZ_TXT.skillEngi	= "Ingenieurskunst"
FIZ_TXT.skillIncrip	= "Inschriftenkunde"
FIZ_TXT.skillJewel	= "Juwelenschleifen"
FIZ_TXT.skillLeath	= "Lederverarbeitung"
FIZ_TXT.skillTail	= "Schneiderei"
FIZ_TXT.skillAid	= "Erste Hilfe"
FIZ_TXT.skillArch	= "Archäologie"
FIZ_TXT.skillCook	= "Kochkunst"
FIZ_TXT.skillFish	= "Angeln"
-- Tooltip	
FIZ_TXT.elements	= {}
FIZ_TXT.elements.name	= {}
FIZ_TXT.elements.tip	= {}
	
FIZ_TXT.elements.name.FIZ_OptionsButton	= FIZ_TXT.options
FIZ_TXT.elements.tip.FIZ_OptionsButton	= "Öffnet ein Fenster, in welchem Factionizer konfiguriert werden kann."
FIZ_TXT.elements.name.FIZ_OrderByStandingCheckBox	= FIZ_TXT.orderByStanding
FIZ_TXT.elements.tip.FIZ_OrderByStandingCheckBox	= "Wenn diese Option nicht aktiviert ist, wird die Fraktionsliste wie im Original (Blizzard) sortiert, d.h. logisch und alphabetisch gruppiert.\r\n\r\nWenn diese Option aktiviert ist, wird die Fraktionsliste nach Ruf sortiert.\r\n\r\nUm |cFFFAA0A0inaktive"
	
FIZ_TXT.elements.name.FIZ_ShowMobsButton	= FIZ_TXT.showMobs
FIZ_TXT.elements.tip.FIZ_ShowMobsButton	= "Diese Option aktivieren, um Mobs anzuzeigen, mit denen Du Deinen Ruf steigern kannst."
FIZ_TXT.elements.name.FIZ_ShowQuestButton	= FIZ_TXT.showQuests
FIZ_TXT.elements.tip.FIZ_ShowQuestButton	= "Diese Option aktivieren, um Quests anzuzeigen, mit denen Du Deinen Ruf steigern kannst."
FIZ_TXT.elements.name.FIZ_ShowItemsButton	= FIZ_TXT.showItems
FIZ_TXT.elements.tip.FIZ_ShowItemsButton	= "Diese Option aktivieren, um Gegenstände anzuzeigen, mit denen Du Deinen Ruf steigern kannst."
FIZ_TXT.elements.name.FIZ_ShowInstancesButton	= FIZ_TXT.showInstances
FIZ_TXT.elements.tip.FIZ_ShowInstancesButton	= "Diese Option aktivieren, um Instanzen anzuzeigen, mit denen Du Deinen Ruf steigern kannst."
FIZ_TXT.elements.name.FIZ_ShowGeneralButton	= FIZ_TXT.showGeneral
FIZ_TXT.elements.tip.FIZ_ShowGeneralButton	= "Diese Option aktivieren, um allgemeine Informationen zur Rufsteigerung anzuzeigen."
	
FIZ_TXT.elements.name.FIZ_ShowAllButton	= FIZ_TXT.showAll
FIZ_TXT.elements.tip.FIZ_ShowAllButton	= "Auf diesen Knopf klicken, um alle vier links stehenden Optionen zu aktivieren. Es werden Mobs, Quests, Gegenstände und Instanzen angezeigt, die Deinen Ruf der ausgewählten Fraktion verbessern."
FIZ_TXT.elements.name.FIZ_ShowNoneButton	= FIZ_TXT.showNone
FIZ_TXT.elements.tip.FIZ_ShowNoneButton	= "Auf diesen Knopf klicken, um alle vier links stehenden Optionen zu deaktivieren. \r\nEs werden dadurch keine Methoden mehr angezeigt, die Ruf mit der ausgewählten Fraktion verbessern."
	
FIZ_TXT.elements.name.FIZ_ExpandButton	= FIZ_TXT.expand
FIZ_TXT.elements.tip.FIZ_ExpandButton	= "Auf diesen Knopf klicken, um alle Einträge aufzuklappen. Dies zeigt die Gegenstände an, die für die jeweiligen Sammelquests benötigt werden."
FIZ_TXT.elements.name.FIZ_CollapseButton	= FIZ_TXT.collapse
FIZ_TXT.elements.tip.FIZ_CollapseButton	= "Auf diesen Knopf klicken, um alle Einträge zuzuklappen. Dies zeigt keine Gegenstände mehr an, die für die jeweiligen Sammelquests benötigt werden."
FIZ_TXT.elements.name.FIZ_SupressNoneFactionButton	= FIZ_TXT.supressNoneFaction
FIZ_TXT.elements.tip.FIZ_SupressNoneFactionButton	= "Auf diesen Knopf klicken, um die Quests für diese Fraktion wieder zu aktivieren, die durch Rechtsklicken deaktiviert wurden."
FIZ_TXT.elements.name.FIZ_SupressNoneGlobalButton	= FIZ_TXT.supressNoneGlobal
FIZ_TXT.elements.tip.FIZ_SupressNoneGlobalButton	= "Auf diesen Knopf klicken, um die Quests für alle Fraktionen wieder zu aktivieren, die durch Rechtsklicken deaktiviert wurden."
FIZ_TXT.elements.name.FIZ_ClearSessionGainButton	= FIZ_TXT.clearSessionGain
FIZ_TXT.elements.tip.FIZ_ClearSessionGainButton	= "Auf diesen Knopf klicken, um den Zähler für die Rufsteigerung seit Spielstart zurückzusetzen."
	
FIZ_TXT.elements.name.FIZ_EnableMissingBox	= FIZ_TXT.showMissing
FIZ_TXT.elements.tip.FIZ_EnableMissingBox	= "Diese Option aktivieren, um im Ruffenster hinter der Rufstufe die fehlenden Rufpunkte anzuzeigen, die nötig sind, um die nächste Stufe zu erreichen."
FIZ_TXT.elements.name.FIZ_ExtendDetailsBox	= FIZ_TXT.extendDetails
FIZ_TXT.elements.tip.FIZ_ExtendDetailsBox	= "Diese Option aktivieren, um eine erweiterte Version anzuzeigen.\r\nZusätzlich zum normalen Fenster, werden dann die fehlenden Rufpunkte angezeigt und eine Liste von Mobs, Quests, Gegenständen und Instanzen, mit denen sich der Ruf der ausgewählten Frakt"
FIZ_TXT.elements.name.FIZ_GainToChatBox	= FIZ_TXT.gainToChat
FIZ_TXT.elements.tip.FIZ_GainToChatBox	= "Diese Option aktivieren, um im Chat den Ruf mit aller Fraktionen anzuzeigen.\r\nDies weicht von der Standardeinstellung ab, welche nur den gestiegenen Ruf der Hauptfraktion anzeigt."
FIZ_TXT.elements.name.FIZ_NoGuildGainBox	= FIZ_TXT.noGuildGain
FIZ_TXT.elements.tip.FIZ_NoGuildGainBox	= "Diese Option aktivieren, um für Gildenruf keine Meldungen in den Chat zu schreiben."
FIZ_TXT.elements.name.FIZ_SupressOriginalGainBox	= FIZ_TXT.suppressOriginalGain
FIZ_TXT.elements.tip.FIZ_SupressOriginalGainBox	= "Diese Option aktivieren, um die Standard-Rufmeldungen im Chat zu unterdrücken.\r\nDies ist sinnvoll, wenn die erweiterten Meldungen aktiviert wurden, damit die Rufmeldungen nicht zweimal angezeigt werden."
FIZ_TXT.elements.name.FIZ_ShowPreviewRepBox	= FIZ_TXT.showPreviewRep
FIZ_TXT.elements.tip.FIZ_ShowPreviewRepBox	= "Diese Option aktivieren, um den Ruf, der durch Abgeben von erfüllten Quests und gesammelten Gegenständen gesteigert werden kann, als grauen Balken über dem normalen Rufbalken im Ruffenster anzuzeigen."
FIZ_TXT.elements.name.FIZ_SwitchFactionBarBox	= FIZ_TXT.switchFactionBar
FIZ_TXT.elements.tip.FIZ_SwitchFactionBarBox	= "Diese Option aktivieren, um den Rufbalken automatisch auf die Fraktion umzuschalten, für die zuletzt Ruf gesteigert wurde."
FIZ_TXT.elements.name.FIZ_NoGuildSwitchBox	= FIZ_TXT.noGuildSwitch
FIZ_TXT.elements.tip.FIZ_NoGuildSwitchBox	= "Diese Option aktivieren, um den Rufbalken nicht umzuschalten, wenn Gildenruf gesteigert wird."
FIZ_TXT.elements.name.FIZ_SilentSwitchBox	= FIZ_TXT.silentSwitch
FIZ_TXT.elements.tip.FIZ_SilentSwitchBox	= "Diese Option aktivieren, um den Rufbalken still (ohne Hinweise im Chat) umzuschalten."
FIZ_TXT.elements.name.FIZ_GuildCapBox	= FIZ_TXT.guildCap
FIZ_TXT.elements.name.FIZ_ChatFrameSlider	= "Chatfenster"
FIZ_TXT.elements.tip.FIZ_ChatFrameSlider	= "Wähle aus, in welchem Chatfenster Factionizer seine Meldungen anzeigt."
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
	
	
