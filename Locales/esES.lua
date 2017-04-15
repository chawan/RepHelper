-- Español (Spanish)	
--------------------	--------------------
if (GetLocale() =="esES" or GetLocale() =="esMX") then	
	
-- Binding names	
BINDING_HEADER_FACTIONIZER	= "Factionizer"
BINDING_NAME_SHOWCONFIG	= "Las opciones de Mostrar ventana"
BINDING_NAME_SHOWDETAILS	= "Mostrar ventana reputación detalle"
	
FIZ_TXT	= {}
FIZ_TXT.Mob = {}
-- help	
FIZ_TXT.help	= "Una herramienta para gestionar tu reputación"
FIZ_TXT.command	= "No se pudo analizar comando"
FIZ_TXT.usage	= "Uso"
FIZ_TXT.helphelp	= "Mostrar este texto de ayuda"
FIZ_TXT.helpabout	= "Afficher les informations sur l'auteur"
FIZ_TXT.helpstatus	= "Mostrar estado de configuración"
-- about	
FIZ_TXT.by	= "por"
FIZ_TXT.version	= "Versión"
FIZ_TXT.date	= "fecha"
FIZ_TXT.web	= "sitio web"
FIZ_TXT.slash	= "tala comando"
FIZ_TXT_STAND_LV	= {}
FIZ_TXT_STAND_LV[0]	= "Desconocido"
FIZ_TXT_STAND_LV[1]	= "Odiado"
FIZ_TXT_STAND_LV[2]	= "Hostil"
FIZ_TXT_STAND_LV[3]	= "Antipático"
FIZ_TXT_STAND_LV[4]	= "Neutral"
FIZ_TXT_STAND_LV[5]	= "Amistoso"
FIZ_TXT_STAND_LV[6]	= "Honrado"
FIZ_TXT_STAND_LV[7]	= "Venerado"
FIZ_TXT_STAND_LV[8]	= "Exaltado"
-- status	
FIZ_TXT.status	= "estado"
FIZ_TXT.disabled	= "discapacitado"
FIZ_TXT.enabled	= "habilitado"
FIZ_TXT.statMobs	= "Mostrar Mobs [M]"
FIZ_TXT.statQuests	= "Mostrar Misiones [Q]"
FIZ_TXT.statInstances	= "Mostrar instancias [D]"
FIZ_TXT.statItems	= "Mostrar elementos [I]"
FIZ_TXT.statGeneral	= "Mostrar general [G]"
FIZ_TXT.statMissing	= "Mostrar reputación falta"
FIZ_TXT.statDetails	= "Mostrar detalles de la trama extendida"
FIZ_TXT.statChat	= "Mensaje de chat detallada"
FIZ_TXT.statNoGuildChat	= "No gremio de chat para rep"
FIZ_TXT.statSuppress	= "Eliminar mensaje de chat originales"
FIZ_TXT.statPreview	= "Mostrar vista previa en el marco rep reputación"
FIZ_TXT.statSwitch	= "Cambiar automáticamente de rep facción bar"
FIZ_TXT.statNoGuildSwitch	= "Sin conmutación por gremio representante"
FIZ_TXT.statSilentSwitch	= "No hay ningún mensaje cuando se cambia bar"
FIZ_TXT.statGuildCap	= "Mostrar tapón gremio reputación en el chat"
-- XML UI elements	
FIZ_TXT.showQuests	= "Mostrar Misiones"
FIZ_TXT.showInstances	= "Mostrar instancias"
FIZ_TXT.showMobs	= "Mostrar Mobs"
FIZ_TXT.showItems	= "Mostrar elementos"
FIZ_TXT.showGeneral	= "Mostrar general"
FIZ_TXT.showAll	= "Mostrar todo"
FIZ_TXT.showNone	= "Mostrar Ninguno"
FIZ_TXT.expand	= "expandir"
FIZ_TXT.collapse	= "colapso"
FIZ_TXT.supressNoneFaction	= "Exclusión clara por facción"
FIZ_TXT.supressNoneGlobal	= "Exclusión transparente para todos"
FIZ_TXT.suppressHint	= "Haga clic en una búsqueda para excluirla del resumen"
FIZ_TXT.clearSessionGain	= "Borrar contador sesión ganancia"
-- options dialog	
FIZ_TXT.showMissing	= "Mostrar reputación que falta en el marco de la reputación"
FIZ_TXT.extendDetails	= "Mostrar detalles de la trama extendida reputación"
FIZ_TXT.gainToChat	= "Escribir mensajes detallados ganancia facción a la ventana de chat"
FIZ_TXT.noGuildGain	= "No escriba a chatear reputación gremio"
FIZ_TXT.suppressOriginalGain	= "Reprimir originales mensajes ganancia facción"
FIZ_TXT.showPreviewRep	= "Mostrar reputación que pueden ser entregados en el marco de la reputación"
FIZ_TXT.switchFactionBar	= "Bar Interruptor de reputación con la facción para quien acaba de ganar reputación"
FIZ_TXT.noGuildSwitch	= "No encienda bar reputación de reputación gremio"
FIZ_TXT.silentSwitch	= "No hay ningún mensaje para charlar cuando se cambia bar"
FIZ_TXT.guildCap	= "Mostrar tapón gremio reputación en el chat"
FIZ_TXT.defaultChatFrame	= "El uso de fotogramas predeterminada de chat"
FIZ_TXT.chatFrame	= "Usando marco del chat %d (%s)"
FIZ_TXT.usingDefaultChatFrame	= "Ahora, utilizando fotogramas predeterminada de chat"
FIZ_TXT.usingChatFrame	= "Ahora, utilizando marco del chat"
FIZ_TXT.EnableParagonBar = "Display paragon reputation in bars."
-- various LUA	
FIZ_TXT.options	= "Opciones"
FIZ_TXT.orderByStanding	= "Ordenar por pie"
FIZ_TXT.lookup	= "Mirando hacia arriba facción"
FIZ_TXT.allFactions	= "Listado de todas las facciones"
FIZ_TXT.missing	= "(al siguiente)"
FIZ_TXT.missing2	= "que falta"
FIZ_TXT.heroic	= "heroico"
FIZ_TXT.normal	= "normal"
FIZ_TXT.switchBar	= "Cambiar bar reputación"
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
FIZ_TXT.tmob	= "Todos los jefes"
FIZ_TXT.oboss	= "Otros jefes"
FIZ_TXT.aboss	= "Todos los jefes"
FIZ_TXT.pboss	= "Por Fundador"
FIZ_TXT.fclear	= "completas"
FIZ_TXT.AU	= "Any Unnamed"
FIZ_TXT.AN	= "Any named"
FIZ_TXT.BB	= "Bloodsail Buccaneer"
FIZ_TXT.SSP	= "Southsea Pirate"
FIZ_TXT.Wa	= "Wastewander"
FIZ_TXT.VCm	= "Any Venture Co. mob"
FIZ_TXT.Mob.MoshOgg_Spellcrafter = "Creaconjuros Mosh'Ogg"
FIZ_TXT.Mob.BoulderfistOgre = "Ogro Puño de Roca"
-- Quest Details	
FIZ_TXT.cdq	= "Ciudad principal cocinar misiones diarias"
FIZ_TXT.coq	= "Otra ciudad cocinar misiones diarias"
FIZ_TXT.fdq	= "Ciudad principal pesca misiones diarias"
FIZ_TXT.foq	= "Otra ciudad pesca misiones diarias"
FIZ_TXT.ndq	= "no misiones diarias"
FIZ_TXT.deleted	= "anticuado"
FIZ_TXT.Championing	= "Defender (Tabardo)"
FIZ_TXT.bpqfg	= "Por ciento de ganancia facción búsqueda"
	
-- items Details	
FIZ_TXT.cbadge	= "Distintivo de mención de Otra ciudad"
-- instance Details	
FIZ_TXT.srfd	= "Spillover representante de mazmorras"
FIZ_TXT.tbd	= "ToBe Done"
FIZ_TXT.nci	= "Cualquier mob basura (normal)"
FIZ_TXT.hci	= "Cualquier mob basura (heroico)"
-- ToBeDone general	
FIZ_TXT.tfr	= "Los Labradores La agricultura rep"
FIZ_TXT.nswts	= "No estoy seguro si esto empieza"
FIZ_TXT.mnd	= "Número máximo de misiones diarias"
FIZ_TXT.mnds	= "El número máximo de diarios es"
	
	
	
	
	
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
FIZ_TXT.questSummaryTip	= "This entry shows a summary of all the quests listed above.\r\nThis is useful assuming that all the quests listed are daily quests, as this will show you how many days it will take you to reach the next reputation level if you do all the daily quests each day."
FIZ_TXT.complete	= "complete"
FIZ_TXT.active	= "active"
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
FIZ_TXT.skillHerb	= "Herboristería"
FIZ_TXT.skillMine	= "Minería"
FIZ_TXT.skillSkin	= "Desuello"
FIZ_TXT.skillAlch	= "Alquimia"
FIZ_TXT.skillBlack	= "Herrería"
FIZ_TXT.skillEnch	= "Encantamiento"
FIZ_TXT.skillEngi	= "Ingeniería"
FIZ_TXT.skillIncrip	= "Inscripción"
FIZ_TXT.skillJewel	= "Joyería"
FIZ_TXT.skillLeath	= "Peletería"
FIZ_TXT.skillTail	= "Sastrería"
FIZ_TXT.skillAid	= "Primeros auxilios"
FIZ_TXT.skillArch	= "Arqueología"
FIZ_TXT.skillCook	= "Cocina"
FIZ_TXT.skillFish	= "Pesca"
-- Tooltip	
FIZ_TXT.elements	= {}
FIZ_TXT.elements.name	= {}
FIZ_TXT.elements.tip	= {}
	
FIZ_TXT.elements.name.FIZ_OptionsButton	= FIZ_TXT.options
FIZ_TXT.elements.tip.FIZ_OptionsButton	= "Abra una ventana para configurar Factionizer."
FIZ_TXT.elements.name.FIZ_OrderByStandingCheckBox	= FIZ_TXT.orderByStanding
FIZ_TXT.elements.tip.FIZ_OrderByStandingCheckBox	= "Si esta casilla no está marcada, la lista facción se muestra mediante una clasificación por defecto (ventisca), agrupados por orden lógico y alfabético. \r\n\r\n Si se marca esta casilla, la lista se ordena por la facción de pie. \r\n\r\n Para ver los | cFFFAA0A0inactive |r facciones , desactive esta casilla y vaya a la parte inferior de la lista."
	
FIZ_TXT.elements.name.FIZ_ShowMobsButton	= FIZ_TXT.showMobs
FIZ_TXT.elements.tip.FIZ_ShowMobsButton	= "Marque este botón para ver las turbas se puede matar a mejorar su reputación."
FIZ_TXT.elements.name.FIZ_ShowQuestButton	= FIZ_TXT.showQuests
FIZ_TXT.elements.tip.FIZ_ShowQuestButton	= "Marque este botón para ver las misiones que puede hacer para mejorar su reputación."
FIZ_TXT.elements.name.FIZ_ShowItemsButton	= FIZ_TXT.showItems
FIZ_TXT.elements.tip.FIZ_ShowItemsButton	= "Marque este botón para ver los elementos que puede entregar a mejorar su reputación."
FIZ_TXT.elements.name.FIZ_ShowInstancesButton	= FIZ_TXT.showInstances
FIZ_TXT.elements.tip.FIZ_ShowInstancesButton	= "Marque este botón para ver las instancias que puede ejecutar para mejorar su reputación."
FIZ_TXT.elements.name.FIZ_ShowGeneralButton	= FIZ_TXT.showGeneral
FIZ_TXT.elements.tip.FIZ_ShowGeneralButton	= "Marque este botón para ver la información general sobre la mejora de su reputación."
	
FIZ_TXT.elements.name.FIZ_ShowAllButton	= FIZ_TXT.showAll
FIZ_TXT.elements.tip.FIZ_ShowAllButton	= "Pulse este botón para comprobar las cuatro casillas de la izquierda. \r\nEsto mostrará mobs, misiones, objetos e instancias que le dan fama de la facción seleccionada."
FIZ_TXT.elements.name.FIZ_ShowNoneButton	= FIZ_TXT.showNone
FIZ_TXT.elements.tip.FIZ_ShowNoneButton	= "Pulse este botón para anular la selección de las cuatro casillas de la izquierda. \r\nDesde aquí puedes ver ninguna de las maneras de ganar reputación de la facción seleccionada."
	
FIZ_TXT.elements.name.FIZ_ExpandButton	= FIZ_TXT.expand
FIZ_TXT.elements.tip.FIZ_ExpandButton	= "Pulse este botón para expandir todas las entradas de la lista. Esto le mostrará los materiales necesarios para la mano en los quests recolección de elementos."
FIZ_TXT.elements.name.FIZ_CollapseButton	= FIZ_TXT.collapse
FIZ_TXT.elements.tip.FIZ_CollapseButton	= "Pulse este botón para cerrar todas las entradas de la lista. Esto ocultará los materiales necesarios a la mano en la recolección de búsquedas."
FIZ_TXT.elements.name.FIZ_SupressNoneFactionButton	= FIZ_TXT.supressNoneFaction
FIZ_TXT.elements.tip.FIZ_SupressNoneFactionButton	= "Pulse este botón para volver a activar todas las misiones de esta facción que ha excluido por righ-clic sobre él."
FIZ_TXT.elements.name.FIZ_SupressNoneGlobalButton	= FIZ_TXT.supressNoneGlobal
FIZ_TXT.elements.tip.FIZ_SupressNoneGlobalButton	= "Pulse este botón para volver a activar todas las misiones de todas las facciones que se han excluido, haga clic en él."
FIZ_TXT.elements.name.FIZ_ClearSessionGainButton	= FIZ_TXT.clearSessionGain
FIZ_TXT.elements.tip.FIZ_ClearSessionGainButton	= "Pulse este botón para borrar a cero el contador de la reputación adquirida en esta sesión."
	
FIZ_TXT.elements.name.FIZ_EnableMissingBox	= FIZ_TXT.showMissing
FIZ_TXT.elements.tip.FIZ_EnableMissingBox	= "Active esta opción para agregar los puntos de reputación faltantes necesarias para el próximo nivel de reputación detrás de la posición actual de cada facción en el marco de reputación."
FIZ_TXT.elements.name.FIZ_ExtendDetailsBox	= FIZ_TXT.extendDetails
FIZ_TXT.elements.tip.FIZ_ExtendDetailsBox	= "Active esta opción para mostrar un cuadro detalle reputación extendida. \r\nEn Además, la información que se muestra en el cuadro detalle original, esto mostrará la reputación faltante necesaria para alcanzar el siguiente nivel de reputación y una lista de maneras de ganar esta reputación mediante anuncio quests , las multitudes, los elementos e instancias que producen reputación de la facción elegida."
FIZ_TXT.elements.name.FIZ_GainToChatBox	= FIZ_TXT.gainToChat
FIZ_TXT.elements.tip.FIZ_GainToChatBox	= "Activez ce paramètre pour afficher réputation acquise pour toutes les factions chaque fois que vous gagnez réputation. \r\nCela diffère de la manière standard de reporting gain de réputation, car normalement, seul le gain avec la faction principale est répertorié."
FIZ_TXT.elements.name.FIZ_NoGuildGainBox	= FIZ_TXT.noGuildGain
FIZ_TXT.elements.tip.FIZ_NoGuildGainBox	= "Active este ajuste si no desea imprimir mensajes de chat reputación gremio."
FIZ_TXT.elements.name.FIZ_SupressOriginalGainBox	= FIZ_TXT.suppressOriginalGain
FIZ_TXT.elements.tip.FIZ_SupressOriginalGainBox	= "Active esta opción para suprimir los mensajes de ganar reputación estándar. \r\nEsto tiene sentido si se ha habilitado los mensajes ganancia facción detallados, por lo que no consigue listados idénticos a las versiones estándar y extendida."
FIZ_TXT.elements.name.FIZ_ShowPreviewRepBox	= FIZ_TXT.showPreviewRep
FIZ_TXT.elements.tip.FIZ_ShowPreviewRepBox	= "Active esta opción para mostrar la reputación se puede obtener mediante la presentación de artículos y Misiones como una barra gris superpuesto sobre la barra normal de reputación en el marco de reputación."
FIZ_TXT.elements.name.FIZ_SwitchFactionBarBox	= FIZ_TXT.switchFactionBar
FIZ_TXT.elements.tip.FIZ_SwitchFactionBarBox	= "Active esta opción para cambiar automáticamente la facción que se observaba a la facción último a quien le han ganado la reputación de."
FIZ_TXT.elements.name.FIZ_NoGuildSwitchBox	= FIZ_TXT.noGuildSwitch
FIZ_TXT.elements.tip.FIZ_NoGuildSwitchBox	= "Active esta opción para no cambiar la facción observó por ganancias de reputación del clan."
FIZ_TXT.elements.name.FIZ_SilentSwitchBox	= FIZ_TXT.silentSwitch
FIZ_TXT.elements.tip.FIZ_SilentSwitchBox	= "Active esta opción para cambiar la barra de reputación silenciosamente (sin mensaje de chat)."
FIZ_TXT.elements.name.FIZ_GuildCapBox	= FIZ_TXT.guildCap
FIZ_TXT.elements.name.FIZ_ChatFrameSlider	= "chatear marco"
FIZ_TXT.elements.tip.FIZ_ChatFrameSlider	= "Seleccione la charla marco Factionizer imprime sus mensajes"
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
	
	
