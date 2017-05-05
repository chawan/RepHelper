-- Español (Spanish)	
--------------------	--------------------
if (GetLocale() =="esES" or GetLocale() =="esMX") then	
	
-- Binding names	
BINDING_HEADER_REPHELPER	= "RepHelper"
BINDING_NAME_SHOWCONFIG	= "Las opciones de Mostrar ventana"
BINDING_NAME_SHOWDETAILS	= "Mostrar ventana reputación detalle"
	
RPH_TXT	= {}
RPH_TXT.Mob = {}
-- help	
RPH_TXT.help	= "Una herramienta para gestionar tu reputación"
RPH_TXT.command	= "No se pudo analizar comando"
RPH_TXT.usage	= "Uso"
RPH_TXT.helphelp	= "Mostrar este texto de ayuda"
RPH_TXT.helpabout	= "Afficher les informations sur l'auteur"
RPH_TXT.helpstatus	= "Mostrar estado de configuración"
-- about	
RPH_TXT.by	= "por"
RPH_TXT.version	= "Versión"
RPH_TXT.date	= "fecha"
RPH_TXT.web	= "sitio web"
RPH_TXT.slash	= "tala comando"
RPH_TXT_STAND_LV	= {}
RPH_TXT_STAND_LV[0]	= "Desconocido"
RPH_TXT_STAND_LV[1]	= "Odiado"
RPH_TXT_STAND_LV[2]	= "Hostil"
RPH_TXT_STAND_LV[3]	= "Antipático"
RPH_TXT_STAND_LV[4]	= "Neutral"
RPH_TXT_STAND_LV[5]	= "Amistoso"
RPH_TXT_STAND_LV[6]	= "Honrado"
RPH_TXT_STAND_LV[7]	= "Venerado"
RPH_TXT_STAND_LV[8]	= "Exaltado"
-- status	
RPH_TXT.status	= "estado"
RPH_TXT.disabled	= "discapacitado"
RPH_TXT.enabled	= "habilitado"
RPH_TXT.statMobs	= "Mostrar Mobs [M]"
RPH_TXT.statQuests	= "Mostrar Misiones [Q]"
RPH_TXT.statInstances	= "Mostrar instancias [D]"
RPH_TXT.statItems	= "Mostrar elementos [I]"
RPH_TXT.statGeneral	= "Mostrar general [G]"
RPH_TXT.statMissing	= "Mostrar reputación falta"
RPH_TXT.statDetails	= "Mostrar detalles de la trama extendida"
RPH_TXT.statChat	= "Mensaje de chat detallada"
RPH_TXT.statNoGuildChat	= "No gremio de chat para rep"
RPH_TXT.statSuppress	= "Eliminar mensaje de chat originales"
RPH_TXT.statPreview	= "Mostrar vista previa en el marco rep reputación"
RPH_TXT.statSwitch	= "Cambiar automáticamente de rep facción bar"
RPH_TXT.statNoGuildSwitch	= "Sin conmutación por gremio representante"
RPH_TXT.statSilentSwitch	= "No hay ningún mensaje cuando se cambia bar"
RPH_TXT.statGuildCap	= "Mostrar tapón gremio reputación en el chat"
-- XML UI elements	
RPH_TXT.showQuests	= "Mostrar Misiones"
RPH_TXT.showInstances	= "Mostrar instancias"
RPH_TXT.showMobs	= "Mostrar Mobs"
RPH_TXT.showItems	= "Mostrar elementos"
RPH_TXT.showGeneral	= "Mostrar general"
RPH_TXT.showAll	= "Mostrar todo"
RPH_TXT.showNone	= "Mostrar Ninguno"
RPH_TXT.expand	= "expandir"
RPH_TXT.collapse	= "colapso"
RPH_TXT.supressNoneFaction	= "Exclusión clara por facción"
RPH_TXT.supressNoneGlobal	= "Exclusión transparente para todos"
RPH_TXT.suppressHint	= "Haga clic en una búsqueda para excluirla del resumen"
RPH_TXT.clearSessionGain	= "Borrar contador sesión ganancia"
-- options dialog	
RPH_TXT.showMissing	= "Mostrar reputación que falta en el marco de la reputación"
RPH_TXT.extendDetails	= "Mostrar detalles de la trama extendida reputación"
RPH_TXT.gainToChat	= "Replace original faction gain messages with a more detailed version"
RPH_TXT.noGuildGain	= "No escriba a chatear reputación gremio"
RPH_TXT.suppressOriginalGain	= "Reprimir originales mensajes ganancia facción"
RPH_TXT.showPreviewRep	= "Mostrar reputación que pueden ser entregados en el marco de la reputación"
RPH_TXT.switchFactionBar	= "Bar Interruptor de reputación con la facción para quien acaba de ganar reputación"
RPH_TXT.noGuildSwitch	= "No encienda bar reputación de reputación gremio"
RPH_TXT.silentSwitch	= "No hay ningún mensaje para charlar cuando se cambia bar"
RPH_TXT.guildCap	= "Mostrar tapón gremio reputación en el chat"
RPH_TXT.defaultChatFrame	= "El uso de fotogramas predeterminada de chat"
RPH_TXT.chatFrame	= "Usando marco del chat %d (%s)"
RPH_TXT.usingDefaultChatFrame	= "Ahora, utilizando fotogramas predeterminada de chat"
RPH_TXT.usingChatFrame	= "Ahora, utilizando marco del chat"
RPH_TXT.EnableParagonBar = "Display paragon reputation in bars."
-- various LUA	
RPH_TXT.options	= "Opciones"
RPH_TXT.orderByStanding	= "Ordenar por pie"
RPH_TXT.lookup	= "Mirando hacia arriba facción"
RPH_TXT.allFactions	= "Listado de todas las facciones"
RPH_TXT.missing	= "(al siguiente)"
RPH_TXT.missing2	= "que falta"
RPH_TXT.heroic	= "heroico"
RPH_TXT.normal	= "normal"
RPH_TXT.switchBar	= "Cambiar bar reputación"
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
RPH_TXT.tmob	= "Todos los jefes"
RPH_TXT.oboss	= "Otros jefes"
RPH_TXT.aboss	= "Todos los jefes"
RPH_TXT.pboss	= "Por Fundador"
RPH_TXT.fclear	= "completas"
RPH_TXT.AU	= "Any Unnamed"
RPH_TXT.AN	= "Any named"
RPH_TXT.BB	= "Bloodsail Buccaneer"
RPH_TXT.SSP	= "Southsea Pirate"
RPH_TXT.Wa	= "Wastewander"
RPH_TXT.VCm	= "Any Venture Co. mob"
RPH_TXT.Mob.MoshOgg_Spellcrafter = "Creaconjuros Mosh'Ogg"
RPH_TXT.Mob.BoulderfistOgre = "Ogro Puño de Roca"
-- Quest Details	
RPH_TXT.cdq	= "Ciudad principal cocinar misiones diarias"
RPH_TXT.coq	= "Otra ciudad cocinar misiones diarias"
RPH_TXT.fdq	= "Ciudad principal pesca misiones diarias"
RPH_TXT.foq	= "Otra ciudad pesca misiones diarias"
RPH_TXT.ndq	= "no misiones diarias"
RPH_TXT.deleted	= "anticuado"
RPH_TXT.Championing	= "Defender (Tabardo)"
RPH_TXT.bpqfg	= "Por ciento de ganancia facción búsqueda"
	
-- items Details	
RPH_TXT.cbadge	= "Distintivo de mención de Otra ciudad"
-- instance Details	
RPH_TXT.srfd	= "Spillover representante de mazmorras"
RPH_TXT.tbd	= "ToBe Done"
RPH_TXT.nci	= "Cualquier mob basura (normal)"
RPH_TXT.hci	= "Cualquier mob basura (heroico)"
-- ToBeDone general	
RPH_TXT.tfr	= "Los Labradores La agricultura rep"
RPH_TXT.nswts	= "No estoy seguro si esto empieza"
RPH_TXT.mnd	= "Número máximo de misiones diarias"
RPH_TXT.mnds	= "El número máximo de diarios es"
	
	
	
	
	
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
RPH_TXT.questSummaryTip	= "This entry shows a summary of all the quests listed above.\r\nThis is useful assuming that all the quests listed are daily quests, as this will show you how many days it will take you to reach the next reputation level if you do all the daily quests each day."
RPH_TXT.complete	= "complete"
RPH_TXT.active	= "active"
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
RPH_TXT.skillHerb	= "Herboristería"
RPH_TXT.skillMine	= "Minería"
RPH_TXT.skillSkin	= "Desuello"
RPH_TXT.skillAlch	= "Alquimia"
RPH_TXT.skillBlack	= "Herrería"
RPH_TXT.skillEnch	= "Encantamiento"
RPH_TXT.skillEngi	= "Ingeniería"
RPH_TXT.skillIncrip	= "Inscripción"
RPH_TXT.skillJewel	= "Joyería"
RPH_TXT.skillLeath	= "Peletería"
RPH_TXT.skillTail	= "Sastrería"
RPH_TXT.skillAid	= "Primeros auxilios"
RPH_TXT.skillArch	= "Arqueología"
RPH_TXT.skillCook	= "Cocina"
RPH_TXT.skillFish	= "Pesca"
-- Tooltip	
RPH_TXT.elements	= {}
RPH_TXT.elements.name	= {}
RPH_TXT.elements.tip	= {}
	
RPH_TXT.elements.name.RPH_OptionsButton	= RPH_TXT.options
RPH_TXT.elements.tip.RPH_OptionsButton	= "Abra una ventana para configurar RepHelper."
RPH_TXT.elements.name.RPH_OrderByStandingCheckBox	= RPH_TXT.orderByStanding
RPH_TXT.elements.tip.RPH_OrderByStandingCheckBox	= "Si esta casilla no está marcada, la lista facción se muestra mediante una clasificación por defecto (ventisca), agrupados por orden lógico y alfabético. \r\n\r\n Si se marca esta casilla, la lista se ordena por la facción de pie. \r\n\r\n Para ver los | cFFFAA0A0inactive |r facciones , desactive esta casilla y vaya a la parte inferior de la lista."
	
RPH_TXT.elements.name.RPH_ShowMobsButton	= RPH_TXT.showMobs
RPH_TXT.elements.tip.RPH_ShowMobsButton	= "Marque este botón para ver las turbas se puede matar a mejorar su reputación."
RPH_TXT.elements.name.RPH_ShowQuestButton	= RPH_TXT.showQuests
RPH_TXT.elements.tip.RPH_ShowQuestButton	= "Marque este botón para ver las misiones que puede hacer para mejorar su reputación."
RPH_TXT.elements.name.RPH_ShowItemsButton	= RPH_TXT.showItems
RPH_TXT.elements.tip.RPH_ShowItemsButton	= "Marque este botón para ver los elementos que puede entregar a mejorar su reputación."
RPH_TXT.elements.name.RPH_ShowInstancesButton	= RPH_TXT.showInstances
RPH_TXT.elements.tip.RPH_ShowInstancesButton	= "Marque este botón para ver las instancias que puede ejecutar para mejorar su reputación."
RPH_TXT.elements.name.RPH_ShowGeneralButton	= RPH_TXT.showGeneral
RPH_TXT.elements.tip.RPH_ShowGeneralButton	= "Marque este botón para ver la información general sobre la mejora de su reputación."
	
RPH_TXT.elements.name.RPH_ShowAllButton	= RPH_TXT.showAll
RPH_TXT.elements.tip.RPH_ShowAllButton	= "Pulse este botón para comprobar las cuatro casillas de la izquierda. \r\nEsto mostrará mobs, misiones, objetos e instancias que le dan fama de la facción seleccionada."
RPH_TXT.elements.name.RPH_ShowNoneButton	= RPH_TXT.showNone
RPH_TXT.elements.tip.RPH_ShowNoneButton	= "Pulse este botón para anular la selección de las cuatro casillas de la izquierda. \r\nDesde aquí puedes ver ninguna de las maneras de ganar reputación de la facción seleccionada."
	
RPH_TXT.elements.name.RPH_ExpandButton	= RPH_TXT.expand
RPH_TXT.elements.tip.RPH_ExpandButton	= "Pulse este botón para expandir todas las entradas de la lista. Esto le mostrará los materiales necesarios para la mano en los quests recolección de elementos."
RPH_TXT.elements.name.RPH_CollapseButton	= RPH_TXT.collapse
RPH_TXT.elements.tip.RPH_CollapseButton	= "Pulse este botón para cerrar todas las entradas de la lista. Esto ocultará los materiales necesarios a la mano en la recolección de búsquedas."
RPH_TXT.elements.name.RPH_SupressNoneFactionButton	= RPH_TXT.supressNoneFaction
RPH_TXT.elements.tip.RPH_SupressNoneFactionButton	= "Pulse este botón para volver a activar todas las misiones de esta facción que ha excluido por righ-clic sobre él."
RPH_TXT.elements.name.RPH_SupressNoneGlobalButton	= RPH_TXT.supressNoneGlobal
RPH_TXT.elements.tip.RPH_SupressNoneGlobalButton	= "Pulse este botón para volver a activar todas las misiones de todas las facciones que se han excluido, haga clic en él."
RPH_TXT.elements.name.RPH_ClearSessionGainButton	= RPH_TXT.clearSessionGain
RPH_TXT.elements.tip.RPH_ClearSessionGainButton	= "Pulse este botón para borrar a cero el contador de la reputación adquirida en esta sesión."
	
RPH_TXT.elements.name.RPH_EnableMissingBox	= RPH_TXT.showMissing
RPH_TXT.elements.tip.RPH_EnableMissingBox	= "Active esta opción para agregar los puntos de reputación faltantes necesarias para el próximo nivel de reputación detrás de la posición actual de cada facción en el marco de reputación."
RPH_TXT.elements.name.RPH_ExtendDetailsBox	= RPH_TXT.extendDetails
RPH_TXT.elements.tip.RPH_ExtendDetailsBox	= "Active esta opción para mostrar un cuadro detalle reputación extendida. \r\nEn Además, la información que se muestra en el cuadro detalle original, esto mostrará la reputación faltante necesaria para alcanzar el siguiente nivel de reputación y una lista de maneras de ganar esta reputación mediante anuncio quests , las multitudes, los elementos e instancias que producen reputación de la facción elegida."
RPH_TXT.elements.name.RPH_GainToChatBox	= RPH_TXT.gainToChat
RPH_TXT.elements.tip.RPH_GainToChatBox	= "Activez ce paramètre pour afficher réputation acquise pour toutes les factions chaque fois que vous gagnez réputation. \r\nCela diffère de la manière standard de reporting gain de réputation, car normalement, seul le gain avec la faction principale est répertorié."
RPH_TXT.elements.name.RPH_NoGuildGainBox	= RPH_TXT.noGuildGain
RPH_TXT.elements.tip.RPH_NoGuildGainBox	= "Active este ajuste si no desea imprimir mensajes de chat reputación gremio."
RPH_TXT.elements.name.RPH_SupressOriginalGainBox	= RPH_TXT.suppressOriginalGain
RPH_TXT.elements.tip.RPH_SupressOriginalGainBox	= "Active esta opción para suprimir los mensajes de ganar reputación estándar. \r\nEsto tiene sentido si se ha habilitado los mensajes ganancia facción detallados, por lo que no consigue listados idénticos a las versiones estándar y extendida."
RPH_TXT.elements.name.RPH_ShowPreviewRepBox	= RPH_TXT.showPreviewRep
RPH_TXT.elements.tip.RPH_ShowPreviewRepBox	= "Active esta opción para mostrar la reputación se puede obtener mediante la presentación de artículos y Misiones como una barra gris superpuesto sobre la barra normal de reputación en el marco de reputación."
RPH_TXT.elements.name.RPH_SwitchFactionBarBox	= RPH_TXT.switchFactionBar
RPH_TXT.elements.tip.RPH_SwitchFactionBarBox	= "Active esta opción para cambiar automáticamente la facción que se observaba a la facción último a quien le han ganado la reputación de."
RPH_TXT.elements.name.RPH_NoGuildSwitchBox	= RPH_TXT.noGuildSwitch
RPH_TXT.elements.tip.RPH_NoGuildSwitchBox	= "Active esta opción para no cambiar la facción observó por ganancias de reputación del clan."
RPH_TXT.elements.name.RPH_SilentSwitchBox	= RPH_TXT.silentSwitch
RPH_TXT.elements.tip.RPH_SilentSwitchBox	= "Active esta opción para cambiar la barra de reputación silenciosamente (sin mensaje de chat)."
RPH_TXT.elements.name.RPH_GuildCapBox	= RPH_TXT.guildCap
RPH_TXT.elements.name.RPH_ChatFrameSlider	= "chatear marco"
RPH_TXT.elements.tip.RPH_ChatFrameSlider	= "Seleccione la charla marco RepHelper imprime sus mensajes"
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
	
	
