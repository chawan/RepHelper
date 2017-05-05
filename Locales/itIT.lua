-- Italiano (Italian)	
--------------------	--------------------
if (GetLocale() =="itIT") then	
	
-- Binding names	
BINDING_HEADER_REPHELPER	= "RepHelper"
BINDING_NAME_SHOWCONFIG	= "Visualizza finestra opzioni"
BINDING_NAME_SHOWDETAILS	= "Visualizza finestra dettagli reputazione"
	
RPH_TXT	= {}
RPH_TXT.Mob = {}
-- help	
RPH_TXT.help	= "Uno strumento per gestire la tua reputazione"
RPH_TXT.command	= "Impossibile analizzare comando"
RPH_TXT.usage	= "Utilizzo"
RPH_TXT.helphelp	= "Mostra questo testo di aiuto"
RPH_TXT.helpabout	= "Mostra informazioni sull'autore"
RPH_TXT.helpstatus	= "Mostra lo stato della configurazione"
-- about	
RPH_TXT.by	= "di"
RPH_TXT.version	= "Versione"
RPH_TXT.date	= "Data"
RPH_TXT.web	= "Sito Web"
RPH_TXT.slash	= "Slash comando"
RPH_TXT_STAND_LV	= {}
RPH_TXT_STAND_LV[0]	= "Sconosciuto"
RPH_TXT_STAND_LV[1]	= "Odiato"
RPH_TXT_STAND_LV[2]	= "Scortese"
RPH_TXT_STAND_LV[3]	= "Scortese"
RPH_TXT_STAND_LV[4]	= "Neutro"
RPH_TXT_STAND_LV[5]	= "Amichevole"
RPH_TXT_STAND_LV[6]	= "Onorato"
RPH_TXT_STAND_LV[7]	= "Venerato"
RPH_TXT_STAND_LV[8]	= "Esaltato"
-- status	
RPH_TXT.status	= "Stato"
RPH_TXT.disabled	= "Disabilitato"
RPH_TXT.enabled	= "abilitato"
RPH_TXT.statMobs	= "Mostra Mobs [M]"
RPH_TXT.statQuests	= "Mostra Missioni [Q]"
RPH_TXT.statInstances	= "Mostra istanze [D]"
RPH_TXT.statItems	= "Mostra elementi [I]"
RPH_TXT.statGeneral	= "Mostra generale [G]"
RPH_TXT.statMissing	= "Mostra reputazione mancante"
RPH_TXT.statDetails	= "Mostra telaio dettaglio esteso"
RPH_TXT.statChat	= "Messaggio di chat dettagliate"
RPH_TXT.statNoGuildChat	= "Nessun chat gilda rep"
RPH_TXT.statSuppress	= "Sopprimere originale messaggio di chat"
RPH_TXT.statPreview	= "Mostra anteprima rep in cornice reputazione"
RPH_TXT.statSwitch	= "Passare automaticamente fazione di rep bar"
RPH_TXT.statNoGuildSwitch	= "Nessuna commutazione di gilda rep"
RPH_TXT.statSilentSwitch	= "Nessun messaggio nel passaggio barra"
RPH_TXT.statGuildCap	= "Mostra cap reputazione gilda in chat"
-- XML UI elements	
RPH_TXT.showQuests	= "Mostra Missioni"
RPH_TXT.showInstances	= "Mostra istanze"
RPH_TXT.showMobs	= "Mostra mob"
RPH_TXT.showItems	= "Mostra articoli"
RPH_TXT.showGeneral	= "Mostra generale"
RPH_TXT.showAll	= "Mostra tutti"
RPH_TXT.showNone	= "Mostra Nessuno"
RPH_TXT.expand	= "sviluppare"
RPH_TXT.collapse	= "Riduci"
RPH_TXT.supressNoneFaction	= "Esclusione chiaro per fazione"
RPH_TXT.supressNoneGlobal	= "Esclusione chiaro per tutti"
RPH_TXT.suppressHint	= "Fai clic destro su una ricerca per escluderla dalla sintesi"
RPH_TXT.clearSessionGain	= "Azzera contatore guadagno sessione"
-- options dialog	
RPH_TXT.showMissing	= "Mostra reputazione mancante nella cornice reputazione"
RPH_TXT.extendDetails	= "Mostra estesa reputazione telaio dettaglio"
RPH_TXT.gainToChat	= "Replace original faction gain messages with a more detailed version"
RPH_TXT.noGuildGain	= "Non scrivere per chattare reputazione gilda"
RPH_TXT.suppressOriginalGain	= "Sopprimere originali messaggi guadagno fazione"
RPH_TXT.showPreviewRep	= "Mostra reputazione che può essere consegnata in cornice reputazione"
RPH_TXT.switchFactionBar	= "Passa bar reputazione di fazione per la quale solo ha guadagnato la reputazione"
RPH_TXT.noGuildSwitch	= "Non accendere bar reputazione di reputazione gilda"
RPH_TXT.silentSwitch	= "Nessun messaggio di chiacchierare quando si passa bar."
RPH_TXT.guildCap	= "Mostra cap reputazione gilda in chat."
RPH_TXT.defaultChatFrame	= "Utilizzando telaio Chat di default"
RPH_TXT.chatFrame	= "Usando la finestra di chat %d (%s)"
RPH_TXT.usingDefaultChatFrame	= "Ora, utilizzando chat di telaio di default"
RPH_TXT.usingChatFrame	= "Now using chat frame"
RPH_TXT.EnableParagonBar = "Display paragon reputation in bars."
-- various LUA	
RPH_TXT.options	= "Options"
RPH_TXT.orderByStanding	= "Order by Standing"
RPH_TXT.lookup	= "Looking up faction "
RPH_TXT.allFactions	= "Mostra tutte le fazioni"
RPH_TXT.missing	= "(to next)"
RPH_TXT.missing2	= "Missing"
RPH_TXT.heroic	= "Heroic"
RPH_TXT.normal	= "Normal"
RPH_TXT.switchBar	= "Changing reputation bar to"
-- RPH_ShowFactions	
RPH_TXT.faction	= "Fazione"
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
RPH_TXT.AU	= "Any Unnamed"
RPH_TXT.AN	= "Any named"
RPH_TXT.BB	= "Bloodsail Buccaneer"
RPH_TXT.SSP	= "Southsea Pirate"
RPH_TXT.Wa	= "Wastewander"
RPH_TXT.VCm	= "Any Venture Co. mob"
RPH_TXT.Mob.MoshOgg_Spellcrafter = "Creamagie Mosh'ogg"
RPH_TXT.Mob.BoulderfistOgre = "Ogre Rocciadura"
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
RPH_TXT.currentRep	= "Reputazione corrente"
RPH_TXT.neededRep	= "Reputation needed"
RPH_TXT.missingRep	= "Reputation missing"
RPH_TXT.repInBag	= "Reputation in bag"
RPH_TXT.repInBagBank	= "Reputation in bag & bank"
RPH_TXT.repInQuest	= "Reputation in quests"
RPH_TXT.factionGained	= "Guadagnato questa sessione"
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
RPH_TXT.generalHead	= "Informazioni generali sul guadagno di reputazione"
RPH_TXT.mobTip	= "Each time you kill this mob, you gain reputation. Doing this often enough, will help you reach the next level."
RPH_TXT.questTip	= "Each time you complete this repeatable or daily quest, you gain reputation. Doing this often enough, will help you reach the next level."
RPH_TXT.instanceTip	= "Each time you run this instance, you gain reputation. Doing this often enough, will help you reach the next level."
RPH_TXT.itemsName	= "Item hand-in"
RPH_TXT.itemsTip	= "Each time you hand in the listed items, you will gain reputation. Doing this often enough, will help you reach the next level."
RPH_TXT.generalTip	= "This is information about reputation gain with a faction that does not necessarily relate to repeatable gain methods."
RPH_TXT.allOfTheAbove	= "Sommario delle %d missioni elencate sopra"
RPH_TXT.questSummaryHead	= RPH_TXT.allOfTheAbove
RPH_TXT.questSummaryTip	= "Questa voce mostra un riepilogo di tutte le missioni di cui sopra.\r\n Questo è utile assumendo che tutte le missioni elencate sono missioni al giorno, in quanto questo vi mostrerà quanti giorni ci vorranno per raggiungere il prossimo livello di reputazione se si fa tutte le quest giornaliere ogni giorno."
RPH_TXT.complete	= "completo"
RPH_TXT.active	= "attivo"
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
RPH_TXT.general2	= "Generale:"
RPH_TXT.maxStanding	= "Yields reputation until"
-- skills	
RPH_TXT.skillHerb	= "Herbalism"
RPH_TXT.skillMine	= "Minerario"
RPH_TXT.skillSkin	= "Scuoiatura"
RPH_TXT.skillAlch	= "alchimia"
RPH_TXT.skillBlack	= "forgiatura"
RPH_TXT.skillEnch	= "incantevole"
RPH_TXT.skillEngi	= "Ingegneria"
RPH_TXT.skillIncrip	= "Iscrizione"
RPH_TXT.skillJewel	= "Lavorazione del gioiello"
RPH_TXT.skillLeath	= "lavorazione della pelle"
RPH_TXT.skillTail	= "Sartoria"
RPH_TXT.skillAid	= "Pronto soccorso"
RPH_TXT.skillArch	= "Archeologia"
RPH_TXT.skillCook	= "Cottura"
RPH_TXT.skillFish	= "peschereccio"
-- Tooltip	
RPH_TXT.elements	= {}
RPH_TXT.elements.name	= {}
RPH_TXT.elements.tip	= {}
	
RPH_TXT.elements.name.RPH_OptionsButton	= RPH_TXT.options
RPH_TXT.elements.tip.RPH_OptionsButton	= "Aprire una finestra per configurare RepHelper."
RPH_TXT.elements.name.RPH_OrderByStandingCheckBox	= RPH_TXT.orderByStanding
RPH_TXT.elements.tip.RPH_OrderByStandingCheckBox	= "Se questa casella non è selezionata, l'elenco fazione viene visualizzata per impostazione predefinita (Blizzard) ordinamento, raggruppate per ordine logico e alfabetico. \r \n \r \nSe questa casella è selezionata, l'elenco fazione è ordinato per data. \r \n\r \nPer vista i | cFFFAA0A0inactive | r fazioni , deselezionare questa casella e andare in fondo alla lista."
	
RPH_TXT.elements.name.RPH_ShowMobsButton	= RPH_TXT.showMobs
RPH_TXT.elements.tip.RPH_ShowMobsButton	= "Selezionare questo pulsante per vedere mob si può uccidere per migliorare la vostra reputazione."
RPH_TXT.elements.name.RPH_ShowQuestButton	= RPH_TXT.showQuests
RPH_TXT.elements.tip.RPH_ShowQuestButton	= "Controllare questo pulsante per visualizzare le quest si possono fare per migliorare la vostra reputazione."
RPH_TXT.elements.name.RPH_ShowItemsButton	= RPH_TXT.showItems
RPH_TXT.elements.tip.RPH_ShowItemsButton	= "Selezionare questo pulsante per visualizzare gli elementi possono essere consegnati in per migliorare la vostra reputazione."
RPH_TXT.elements.name.RPH_ShowInstancesButton	= RPH_TXT.showInstances
RPH_TXT.elements.tip.RPH_ShowInstancesButton	= "Controllare questo pulsante per visualizzare le istanze è possibile eseguire per migliorare la vostra reputazione."
RPH_TXT.elements.name.RPH_ShowGeneralButton	= RPH_TXT.showGeneral
RPH_TXT.elements.tip.RPH_ShowGeneralButton	= "Selezionare questo pulsante per visualizzare le informazioni generali su come migliorare la vostra reputazione."
	
RPH_TXT.elements.name.RPH_ShowAllButton	= RPH_TXT.showAll
RPH_TXT.elements.tip.RPH_ShowAllButton	= "Premere questo pulsante per controllare tutti e quattro le caselle di controllo a sinistra. \r\nQuesto mostrerà mob, quest, oggetti e istanze che ti danno reputazione per la fazione attualmente selezionato."
RPH_TXT.elements.name.RPH_ShowNoneButton	= RPH_TXT.showNone
RPH_TXT.elements.tip.RPH_ShowNoneButton	= "Premere questo pulsante per deselezionare tutte e quattro le caselle di controllo a sinistra. \r\nQuesto ti mostrerà nessuno dei modi per guadagnare reputazione per la fazione attualmente selezionato."
	
RPH_TXT.elements.name.RPH_ExpandButton	= RPH_TXT.expand
RPH_TXT.elements.tip.RPH_ExpandButton	= "Premere questo pulsante per espandere tutte le voci della lista. Questo ti mostrerà i materiali necessari a portata di mano in qualsiasi elemento in grado di raccogliere quest."
RPH_TXT.elements.name.RPH_CollapseButton	= RPH_TXT.collapse
RPH_TXT.elements.tip.RPH_CollapseButton	= "Premere questo pulsante per comprimere tutte le voci della lista. In questo modo nascondere i materiali necessari a portata di mano nella raccolta di missioni."
RPH_TXT.elements.name.RPH_SupressNoneFactionButton	= RPH_TXT.supressNoneFaction
RPH_TXT.elements.tip.RPH_SupressNoneFactionButton	= "Premere questo tasto per riattivare tutte le missioni per questa fazione che è stata esclusa da righ-clic su di esso."
RPH_TXT.elements.name.RPH_SupressNoneGlobalButton	= RPH_TXT.supressNoneGlobal
RPH_TXT.elements.tip.RPH_SupressNoneGlobalButton	= "Premere questo tasto per riattivare tutte le missioni per tutte le fazioni che hai escluso facendo clic destro su di esso."
RPH_TXT.elements.name.RPH_ClearSessionGainButton	= RPH_TXT.clearSessionGain
RPH_TXT.elements.tip.RPH_ClearSessionGainButton	= "Premere questo pulsante per cancellare azzerare il contatore per la reputazione acquisita questa sessione."
	
RPH_TXT.elements.name.RPH_EnableMissingBox	= RPH_TXT.showMissing
RPH_TXT.elements.tip.RPH_EnableMissingBox	= "Abilitare questa opzione per aggiungere i punti reputazione mancanti necessari per il prossimo livello di reputazione alle spalle l'attuale posizione di ogni fazione nella cornice reputazione."
RPH_TXT.elements.name.RPH_ExtendDetailsBox	= RPH_TXT.extendDetails
RPH_TXT.elements.tip.RPH_ExtendDetailsBox	= "Attivare questa impostazione per visualizzare una reputazione telaio dettaglio esteso. \r\nInoltre le informazioni mostrate nella cornice dettaglio originale, questa verrà visualizzata la reputazione mancante necessario per raggiungere il prossimo livello di reputazione e di una lista di modi per guadagnare questa reputazione elencando quest, mob, oggetti e istanze che producono reputazione per la fazione scelta."
RPH_TXT.elements.name.RPH_GainToChatBox	= RPH_TXT.gainToChat
RPH_TXT.elements.tip.RPH_GainToChatBox	= "Attivare questa impostazione per visualizzare la reputazione acquisita per tutte le fazioni ogni volta che si guadagna la reputazione. \r\nQuesto differisce dal modo standard di segnalazione guadagno di reputazione, come di norma, solo il guadagno con la fazione principale è elencato."
RPH_TXT.elements.name.RPH_NoGuildGainBox	= RPH_TXT.noGuildGain
RPH_TXT.elements.tip.RPH_NoGuildGainBox	= "Abilitare questa impostazione per non stampare i messaggi di chattare reputazione gilda."
RPH_TXT.elements.name.RPH_SupressOriginalGainBox	= RPH_TXT.suppressOriginalGain
RPH_TXT.elements.tip.RPH_SupressOriginalGainBox	= "Attivare questa impostazione per sopprimere i messaggi standard guadagnare reputazione. \r\nQuesto ha senso se hai attivato i dettagliati messaggi guadagno fazione, in modo da non avere annunci identici alle versioni standard ed estesa."
RPH_TXT.elements.name.RPH_ShowPreviewRepBox	= RPH_TXT.showPreviewRep
RPH_TXT.elements.tip.RPH_ShowPreviewRepBox	= "Attivare questa impostazione per mostrare la reputazione si può guadagnare consegnando oggetti e Incarichi come una barra grigia sovrapposto sopra la normale barra reputazione nella cornice reputazione."
RPH_TXT.elements.name.RPH_SwitchFactionBarBox	= RPH_TXT.switchFactionBar
RPH_TXT.elements.tip.RPH_SwitchFactionBarBox	= "Abilitare questa opzione per passare automaticamente alla fazione di essere guardato per l'ultima fazione che tu hai guadagnato reputazione per."
RPH_TXT.elements.name.RPH_NoGuildSwitchBox	= RPH_TXT.noGuildSwitch
RPH_TXT.elements.tip.RPH_NoGuildSwitchBox	= "Attivare questa impostazione per non cambiare la fazione guardato per gilda guadagni reputazione."
RPH_TXT.elements.name.RPH_SilentSwitchBox	= RPH_TXT.silentSwitch
RPH_TXT.elements.tip.RPH_SilentSwitchBox	= "Attivare questa impostazione per attivare la barra di reputazione in silenzio (senza un messaggio di chat)."
RPH_TXT.elements.name.RPH_GuildCapBox	= RPH_TXT.guildCap
RPH_TXT.elements.name.RPH_ChatFrameSlider	= "Chatta telaio"
RPH_TXT.elements.tip.RPH_ChatFrameSlider	= "Selezionare quale chiacchierata cornice RepHelper stampa i suoi messaggi."
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