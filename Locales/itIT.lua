-- Italiano (Italian)	
--------------------	--------------------
if (GetLocale() =="itIT") then	
	
-- Binding names	
BINDING_HEADER_FACTIONIZER	= "Factionizer"
BINDING_NAME_SHOWCONFIG	= "Visualizza finestra opzioni"
BINDING_NAME_SHOWDETAILS	= "Visualizza finestra dettagli reputazione"
	
FIZ_TXT	= {}
FIZ_TXT.Mob = {}
-- help	
FIZ_TXT.help	= "Uno strumento per gestire la tua reputazione"
FIZ_TXT.command	= "Impossibile analizzare comando"
FIZ_TXT.usage	= "Utilizzo"
FIZ_TXT.helphelp	= "Mostra questo testo di aiuto"
FIZ_TXT.helpabout	= "Mostra informazioni sull'autore"
FIZ_TXT.helpstatus	= "Mostra lo stato della configurazione"
-- about	
FIZ_TXT.by	= "di"
FIZ_TXT.version	= "Versione"
FIZ_TXT.date	= "Data"
FIZ_TXT.web	= "Sito Web"
FIZ_TXT.slash	= "Slash comando"
FIZ_TXT_STAND_LV	= {}
FIZ_TXT_STAND_LV[0]	= "Sconosciuto"
FIZ_TXT_STAND_LV[1]	= "Odiato"
FIZ_TXT_STAND_LV[2]	= "Scortese"
FIZ_TXT_STAND_LV[3]	= "Scortese"
FIZ_TXT_STAND_LV[4]	= "Neutro"
FIZ_TXT_STAND_LV[5]	= "Amichevole"
FIZ_TXT_STAND_LV[6]	= "Onorato"
FIZ_TXT_STAND_LV[7]	= "Venerato"
FIZ_TXT_STAND_LV[8]	= "Esaltato"
-- status	
FIZ_TXT.status	= "Stato"
FIZ_TXT.disabled	= "Disabilitato"
FIZ_TXT.enabled	= "abilitato"
FIZ_TXT.statMobs	= "Mostra Mobs [M]"
FIZ_TXT.statQuests	= "Mostra Missioni [Q]"
FIZ_TXT.statInstances	= "Mostra istanze [D]"
FIZ_TXT.statItems	= "Mostra elementi [I]"
FIZ_TXT.statGeneral	= "Mostra generale [G]"
FIZ_TXT.statMissing	= "Mostra reputazione mancante"
FIZ_TXT.statDetails	= "Mostra telaio dettaglio esteso"
FIZ_TXT.statChat	= "Messaggio di chat dettagliate"
FIZ_TXT.statNoGuildChat	= "Nessun chat gilda rep"
FIZ_TXT.statSuppress	= "Sopprimere originale messaggio di chat"
FIZ_TXT.statPreview	= "Mostra anteprima rep in cornice reputazione"
FIZ_TXT.statSwitch	= "Passare automaticamente fazione di rep bar"
FIZ_TXT.statNoGuildSwitch	= "Nessuna commutazione di gilda rep"
FIZ_TXT.statSilentSwitch	= "Nessun messaggio nel passaggio barra"
FIZ_TXT.statGuildCap	= "Mostra cap reputazione gilda in chat"
-- XML UI elements	
FIZ_TXT.showQuests	= "Mostra Missioni"
FIZ_TXT.showInstances	= "Mostra istanze"
FIZ_TXT.showMobs	= "Mostra mob"
FIZ_TXT.showItems	= "Mostra articoli"
FIZ_TXT.showGeneral	= "Mostra generale"
FIZ_TXT.showAll	= "Mostra tutti"
FIZ_TXT.showNone	= "Mostra Nessuno"
FIZ_TXT.expand	= "sviluppare"
FIZ_TXT.collapse	= "Riduci"
FIZ_TXT.supressNoneFaction	= "Esclusione chiaro per fazione"
FIZ_TXT.supressNoneGlobal	= "Esclusione chiaro per tutti"
FIZ_TXT.suppressHint	= "Fai clic destro su una ricerca per escluderla dalla sintesi"
FIZ_TXT.clearSessionGain	= "Azzera contatore guadagno sessione"
-- options dialog	
FIZ_TXT.showMissing	= "Mostra reputazione mancante nella cornice reputazione"
FIZ_TXT.extendDetails	= "Mostra estesa reputazione telaio dettaglio"
FIZ_TXT.gainToChat	= "Scrivi dettagliati messaggi guadagno fazione stanno finestra"
FIZ_TXT.noGuildGain	= "Non scrivere per chattare reputazione gilda"
FIZ_TXT.suppressOriginalGain	= "Sopprimere originali messaggi guadagno fazione"
FIZ_TXT.showPreviewRep	= "Mostra reputazione che può essere consegnata in cornice reputazione"
FIZ_TXT.switchFactionBar	= "Passa bar reputazione di fazione per la quale solo ha guadagnato la reputazione"
FIZ_TXT.noGuildSwitch	= "Non accendere bar reputazione di reputazione gilda"
FIZ_TXT.silentSwitch	= "Nessun messaggio di chiacchierare quando si passa bar."
FIZ_TXT.guildCap	= "Mostra cap reputazione gilda in chat."
FIZ_TXT.defaultChatFrame	= "Utilizzando telaio Chat di default"
FIZ_TXT.chatFrame	= "Usando la finestra di chat %d (%s)"
FIZ_TXT.usingDefaultChatFrame	= "Ora, utilizzando chat di telaio di default"
FIZ_TXT.usingChatFrame	= "Now using chat frame"
-- various LUA	
FIZ_TXT.options	= "Options"
FIZ_TXT.orderByStanding	= "Order by Standing"
FIZ_TXT.lookup	= "Looking up faction "
FIZ_TXT.allFactions	= "Mostra tutte le fazioni"
FIZ_TXT.missing	= "(to next)"
FIZ_TXT.missing2	= "Missing"
FIZ_TXT.heroic	= "Heroic"
FIZ_TXT.normal	= "Normal"
FIZ_TXT.switchBar	= "Changing reputation bar to"
-- FIZ_ShowFactions	
FIZ_TXT.faction	= "Fazione"
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
FIZ_TXT.AU	= "Any Unnamed"
FIZ_TXT.AN	= "Any named"
FIZ_TXT.BB	= "Bloodsail Buccaneer"
FIZ_TXT.SSP	= "Southsea Pirate"
FIZ_TXT.Wa	= "Wastewander"
FIZ_TXT.VCm	= "Any Venture Co. mob"
FIZ_TXT.Mob.MoshOgg_Spellcrafter = "Creamagie Mosh'ogg"
FIZ_TXT.Mob.BoulderfistOgre = "Ogre Rocciadura"
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
FIZ_TXT.currentRep	= "Reputazione corrente"
FIZ_TXT.neededRep	= "Reputation needed"
FIZ_TXT.missingRep	= "Reputation missing"
FIZ_TXT.repInBag	= "Reputation in bag"
FIZ_TXT.repInBagBank	= "Reputation in bag & bank"
FIZ_TXT.repInQuest	= "Reputation in quests"
FIZ_TXT.factionGained	= "Guadagnato questa sessione"
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
FIZ_TXT.generalHead	= "Informazioni generali sul guadagno di reputazione"
FIZ_TXT.mobTip	= "Each time you kill this mob, you gain reputation. Doing this often enough, will help you reach the next level."
FIZ_TXT.questTip	= "Each time you complete this repeatable or daily quest, you gain reputation. Doing this often enough, will help you reach the next level."
FIZ_TXT.instanceTip	= "Each time you run this instance, you gain reputation. Doing this often enough, will help you reach the next level."
FIZ_TXT.itemsName	= "Item hand-in"
FIZ_TXT.itemsTip	= "Each time you hand in the listed items, you will gain reputation. Doing this often enough, will help you reach the next level."
FIZ_TXT.generalTip	= "This is information about reputation gain with a faction that does not necessarily relate to repeatable gain methods."
FIZ_TXT.allOfTheAbove	= "Sommario delle %d missioni elencate sopra"
FIZ_TXT.questSummaryHead	= FIZ_TXT.allOfTheAbove
FIZ_TXT.questSummaryTip	= "Questa voce mostra un riepilogo di tutte le missioni di cui sopra.\r\n Questo è utile assumendo che tutte le missioni elencate sono missioni al giorno, in quanto questo vi mostrerà quanti giorni ci vorranno per raggiungere il prossimo livello di reputazione se si fa tutte le quest giornaliere ogni giorno."
FIZ_TXT.complete	= "completo"
FIZ_TXT.active	= "attivo"
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
FIZ_TXT.general2	= "Generale:"
FIZ_TXT.maxStanding	= "Yields reputation until"
-- skills	
FIZ_TXT.skillHerb	= "Herbalism"
FIZ_TXT.skillMine	= "Minerario"
FIZ_TXT.skillSkin	= "Scuoiatura"
FIZ_TXT.skillAlch	= "alchimia"
FIZ_TXT.skillBlack	= "forgiatura"
FIZ_TXT.skillEnch	= "incantevole"
FIZ_TXT.skillEngi	= "Ingegneria"
FIZ_TXT.skillIncrip	= "Iscrizione"
FIZ_TXT.skillJewel	= "Lavorazione del gioiello"
FIZ_TXT.skillLeath	= "lavorazione della pelle"
FIZ_TXT.skillTail	= "Sartoria"
FIZ_TXT.skillAid	= "Pronto soccorso"
FIZ_TXT.skillArch	= "Archeologia"
FIZ_TXT.skillCook	= "Cottura"
FIZ_TXT.skillFish	= "peschereccio"
-- Tooltip	
FIZ_TXT.elements	= {}
FIZ_TXT.elements.name	= {}
FIZ_TXT.elements.tip	= {}
	
FIZ_TXT.elements.name.FIZ_OptionsButton	= FIZ_TXT.options
FIZ_TXT.elements.tip.FIZ_OptionsButton	= "Aprire una finestra per configurare Factionizer."
FIZ_TXT.elements.name.FIZ_OrderByStandingCheckBox	= FIZ_TXT.orderByStanding
FIZ_TXT.elements.tip.FIZ_OrderByStandingCheckBox	= "Se questa casella non è selezionata, l'elenco fazione viene visualizzata per impostazione predefinita (Blizzard) ordinamento, raggruppate per ordine logico e alfabetico. \r \n \ r \ nSe questa casella è selezionata, l'elenco fazione è ordinato per data. \r \ n\r \ nPer vista i | cFFFAA0A0inactive | r fazioni , deselezionare questa casella e andare in fondo alla lista."
	
FIZ_TXT.elements.name.FIZ_ShowMobsButton	= FIZ_TXT.showMobs
FIZ_TXT.elements.tip.FIZ_ShowMobsButton	= "Selezionare questo pulsante per vedere mob si può uccidere per migliorare la vostra reputazione."
FIZ_TXT.elements.name.FIZ_ShowQuestButton	= FIZ_TXT.showQuests
FIZ_TXT.elements.tip.FIZ_ShowQuestButton	= "Controllare questo pulsante per visualizzare le quest si possono fare per migliorare la vostra reputazione."
FIZ_TXT.elements.name.FIZ_ShowItemsButton	= FIZ_TXT.showItems
FIZ_TXT.elements.tip.FIZ_ShowItemsButton	= "Selezionare questo pulsante per visualizzare gli elementi possono essere consegnati in per migliorare la vostra reputazione."
FIZ_TXT.elements.name.FIZ_ShowInstancesButton	= FIZ_TXT.showInstances
FIZ_TXT.elements.tip.FIZ_ShowInstancesButton	= "Controllare questo pulsante per visualizzare le istanze è possibile eseguire per migliorare la vostra reputazione."
FIZ_TXT.elements.name.FIZ_ShowGeneralButton	= FIZ_TXT.showGeneral
FIZ_TXT.elements.tip.FIZ_ShowGeneralButton	= "Selezionare questo pulsante per visualizzare le informazioni generali su come migliorare la vostra reputazione."
	
FIZ_TXT.elements.name.FIZ_ShowAllButton	= FIZ_TXT.showAll
FIZ_TXT.elements.tip.FIZ_ShowAllButton	= "Premere questo pulsante per controllare tutti e quattro le caselle di controllo a sinistra. \r\nQuesto mostrerà mob, quest, oggetti e istanze che ti danno reputazione per la fazione attualmente selezionato."
FIZ_TXT.elements.name.FIZ_ShowNoneButton	= FIZ_TXT.showNone
FIZ_TXT.elements.tip.FIZ_ShowNoneButton	= "Premere questo pulsante per deselezionare tutte e quattro le caselle di controllo a sinistra. \r\nQuesto ti mostrerà nessuno dei modi per guadagnare reputazione per la fazione attualmente selezionato."
	
FIZ_TXT.elements.name.FIZ_ExpandButton	= FIZ_TXT.expand
FIZ_TXT.elements.tip.FIZ_ExpandButton	= "Premere questo pulsante per espandere tutte le voci della lista. Questo ti mostrerà i materiali necessari a portata di mano in qualsiasi elemento in grado di raccogliere quest."
FIZ_TXT.elements.name.FIZ_CollapseButton	= FIZ_TXT.collapse
FIZ_TXT.elements.tip.FIZ_CollapseButton	= "Premere questo pulsante per comprimere tutte le voci della lista. In questo modo nascondere i materiali necessari a portata di mano nella raccolta di missioni."
FIZ_TXT.elements.name.FIZ_SupressNoneFactionButton	= FIZ_TXT.supressNoneFaction
FIZ_TXT.elements.tip.FIZ_SupressNoneFactionButton	= "Premere questo tasto per riattivare tutte le missioni per questa fazione che è stata esclusa da righ-clic su di esso."
FIZ_TXT.elements.name.FIZ_SupressNoneGlobalButton	= FIZ_TXT.supressNoneGlobal
FIZ_TXT.elements.tip.FIZ_SupressNoneGlobalButton	= "Premere questo tasto per riattivare tutte le missioni per tutte le fazioni che hai escluso facendo clic destro su di esso."
FIZ_TXT.elements.name.FIZ_ClearSessionGainButton	= FIZ_TXT.clearSessionGain
FIZ_TXT.elements.tip.FIZ_ClearSessionGainButton	= "Premere questo pulsante per cancellare azzerare il contatore per la reputazione acquisita questa sessione."
	
FIZ_TXT.elements.name.FIZ_EnableMissingBox	= FIZ_TXT.showMissing
FIZ_TXT.elements.tip.FIZ_EnableMissingBox	= "Abilitare questa opzione per aggiungere i punti reputazione mancanti necessari per il prossimo livello di reputazione alle spalle l'attuale posizione di ogni fazione nella cornice reputazione."
FIZ_TXT.elements.name.FIZ_ExtendDetailsBox	= FIZ_TXT.extendDetails
FIZ_TXT.elements.tip.FIZ_ExtendDetailsBox	= "Attivare questa impostazione per visualizzare una reputazione telaio dettaglio esteso. \r\nInoltre le informazioni mostrate nella cornice dettaglio originale, questa verrà visualizzata la reputazione mancante necessario per raggiungere il prossimo livello di reputazione e di una lista di modi per guadagnare questa reputazione elencando quest, mob, oggetti e istanze che producono reputazione per la fazione scelta."
FIZ_TXT.elements.name.FIZ_GainToChatBox	= FIZ_TXT.gainToChat
FIZ_TXT.elements.tip.FIZ_GainToChatBox	= "Attivare questa impostazione per visualizzare la reputazione acquisita per tutte le fazioni ogni volta che si guadagna la reputazione. \r\nQuesto differisce dal modo standard di segnalazione guadagno di reputazione, come di norma, solo il guadagno con la fazione principale è elencato."
FIZ_TXT.elements.name.FIZ_NoGuildGainBox	= FIZ_TXT.noGuildGain
FIZ_TXT.elements.tip.FIZ_NoGuildGainBox	= "Abilitare questa impostazione per non stampare i messaggi di chattare reputazione gilda."
FIZ_TXT.elements.name.FIZ_SupressOriginalGainBox	= FIZ_TXT.suppressOriginalGain
FIZ_TXT.elements.tip.FIZ_SupressOriginalGainBox	= "Attivare questa impostazione per sopprimere i messaggi standard guadagnare reputazione. \r\nQuesto ha senso se hai attivato i dettagliati messaggi guadagno fazione, in modo da non avere annunci identici alle versioni standard ed estesa."
FIZ_TXT.elements.name.FIZ_ShowPreviewRepBox	= FIZ_TXT.showPreviewRep
FIZ_TXT.elements.tip.FIZ_ShowPreviewRepBox	= "Attivare questa impostazione per mostrare la reputazione si può guadagnare consegnando oggetti e Incarichi come una barra grigia sovrapposto sopra la normale barra reputazione nella cornice reputazione."
FIZ_TXT.elements.name.FIZ_SwitchFactionBarBox	= FIZ_TXT.switchFactionBar
FIZ_TXT.elements.tip.FIZ_SwitchFactionBarBox	= "Abilitare questa opzione per passare automaticamente alla fazione di essere guardato per l'ultima fazione che tu hai guadagnato reputazione per."
FIZ_TXT.elements.name.FIZ_NoGuildSwitchBox	= FIZ_TXT.noGuildSwitch
FIZ_TXT.elements.tip.FIZ_NoGuildSwitchBox	= "Attivare questa impostazione per non cambiare la fazione guardato per gilda guadagni reputazione."
FIZ_TXT.elements.name.FIZ_SilentSwitchBox	= FIZ_TXT.silentSwitch
FIZ_TXT.elements.tip.FIZ_SilentSwitchBox	= "Attivare questa impostazione per attivare la barra di reputazione in silenzio (senza un messaggio di chat)."
FIZ_TXT.elements.name.FIZ_GuildCapBox	= FIZ_TXT.guildCap
FIZ_TXT.elements.name.FIZ_ChatFrameSlider	= "Chatta telaio"
FIZ_TXT.elements.tip.FIZ_ChatFrameSlider	= "Selezionare quale chiacchierata cornice Factionizer stampa i suoi messaggi."
	
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
end