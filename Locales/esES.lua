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
RPH_TXT.helpabout	= "Mostrar información sobre el autor"
RPH_TXT.helpstatus	= "Mostrar el estado de configuración"
-- about	
RPH_TXT.by	= "por"
RPH_TXT.version	= "Versión"
RPH_TXT.date	= "fecha"
RPH_TXT.web	= "sitio web"
RPH_TXT.slash	= "comando slash"
RPH_TXT_STAND_LV	= {}
RPH_TXT_STAND_LV[0]	= "Desconocido"
RPH_TXT_STAND_LV[1]	= "Odiado"
RPH_TXT_STAND_LV[2]	= "Hostil"
RPH_TXT_STAND_LV[3]	= "Antipático"
RPH_TXT_STAND_LV[4]	= "Neutral"
RPH_TXT_STAND_LV[5]	= "Amistoso"
RPH_TXT_STAND_LV[6]	= "Honorable"
RPH_TXT_STAND_LV[7]	= "Venerado"
RPH_TXT_STAND_LV[8]	= "Exaltado"
-- status	
RPH_TXT.status	= "estado"
RPH_TXT.disabled	= "deshabilitado"
RPH_TXT.enabled	= "habilitado"
RPH_TXT.statMobs	= "Mostrar mobs [M]"
RPH_TXT.statQuests	= "Mostrar misiones [Q]"
RPH_TXT.statInstances	= "Mostrar instancias [D]"
RPH_TXT.statItems	= "Mostrar objetos [I]"
RPH_TXT.statGeneral	= "Mostrar general [G]"
RPH_TXT.statMissing	= "Mostrar reputación faltante"
RPH_TXT.statDetails	= "Mostrar detalles extendidos"
RPH_TXT.statChat	= "Mensajes de chat detallados"
RPH_TXT.statNoGuildChat	= "Ocultar reputación de Hermandad"
RPH_TXT.statSuppress	= "Ocultar mensajes de chat de Blizzard"
RPH_TXT.statPreview	= "Mostrar vista previa en el marco rep reputación"
RPH_TXT.statSwitch	= "Cambiar automáticamente la barra de reputación"
RPH_TXT.statNoGuildSwitch	= "No cambiar la barra con la reputación de hermandad"
RPH_TXT.statSilentSwitch	= "Ocultar mensaje al cambiar la barra de reputación"
RPH_TXT.statGuildCap	= "Mostrar tapón gremio reputación en el chat"
-- XML UI elements	
RPH_TXT.showQuests	= "Mostrar misiones"
RPH_TXT.showInstances	= "Mostrar instancias"
RPH_TXT.showMobs	= "Mostrar mobs"
RPH_TXT.showItems	= "Mostrar objetos"
RPH_TXT.showGeneral	= "Mostrar general"
RPH_TXT.showAll	= "Mostrar todo"
RPH_TXT.showNone	= "Ocultar todo"
RPH_TXT.expand	= "Expandir"
RPH_TXT.collapse	= "Colapsar"
RPH_TXT.supressNoneFaction	= "Restablecer excluidos de esta facción"
RPH_TXT.supressNoneGlobal	= "Restablecer todos los excluidos"
RPH_TXT.suppressHint	= "Click derecho para excluir un elemento"
RPH_TXT.clearSessionGain	= "Reiniciar contador de sesión"
-- options dialog	
RPH_TXT.showMissing	= "Mostrar reputación faltante en el marco de reputación"
RPH_TXT.extendDetails	= "Mostrar reputación detallada en la ventana"
RPH_TXT.gainToChat	= "Mensajes de chat detallados"
RPH_TXT.noGuildGain	= "Ocultar reputación de Hermandad"
RPH_TXT.suppressOriginalGain	= "Ocultar mensajes de chat de Blizzard"
RPH_TXT.showPreviewRep	= "Mostrar reputación que pueden ser entregados en el marco de la reputación"
RPH_TXT.switchFactionBar	= "Cambiar automáticamente la barra de reputación"
RPH_TXT.noGuildSwitch	= "No cambiar la barra con la reputación de hermandad"
RPH_TXT.silentSwitch	= "Ocultar mensaje al cambiar la barra de reputación"
RPH_TXT.guildCap	= "Mostrar tapón gremio reputación en el chat"
RPH_TXT.defaultChatFrame	= "Usar marco de chat predeterminado"
RPH_TXT.chatFrame	= "Usando marco del chat %d (%s)"
RPH_TXT.usingDefaultChatFrame	= "Ahora, utilizando el marco de chat predeterminado"
RPH_TXT.usingChatFrame	= "Ahora, utilizando marco de chat"
RPH_TXT.EnableParagonBar = "Mostrar el Paragon en barras"
-- various LUA	
RPH_TXT.options	= "Opciones"
RPH_TXT.orderByStanding	= "Ordenar por nivel"
RPH_TXT.lookup	= "Mirando facción"
RPH_TXT.allFactions	= "Listado de todas las facciones"
RPH_TXT.missing	= "(siguiente)"
RPH_TXT.missing2	= "que falta"
RPH_TXT.heroic	= "heroico"
RPH_TXT.normal	= "normal"
RPH_TXT.switchBar	= "Cambiar barra de reputación"
-- RPH_ShowFactions	
RPH_TXT.faction	= "Facción"
RPH_TXT.is	= "es"
RPH_TXT.withStanding	= "con reputación"
RPH_TXT.needed	= "necesario"
RPH_TXT.mob	= "[mob]"
RPH_TXT.limited	= "esta limitado a"
RPH_TXT.limitedPl	= "estan limitados a"
RPH_TXT.quest	= "[Misión]"
RPH_TXT.instance	= "[Instancia]"
RPH_TXT.items	= "[Objeto]"
RPH_TXT.unknown	= "desconocido para el personaje"
-- mob Details	
RPH_TXT.tmob	= "Todos los jefes"
RPH_TXT.oboss	= "Otros jefes"
RPH_TXT.aboss	= "Todos los jefes"
RPH_TXT.pboss	= "Por Fundador"
RPH_TXT.fclear	= "completas"
RPH_TXT.AU	= "Cualquier mob sin nombre"
RPH_TXT.AN	= "Cualquier mob nombrado"
RPH_TXT.BB	= "Bucaneros Velasangre"
RPH_TXT.SSP	= "Pirata de los Mares del Sur"
RPH_TXT.Wa	= "Vagayermo"
RPH_TXT.VCm	= "Cualquier mob Ventura y Cía."
RPH_TXT.Mob.MoshOgg_Spellcrafter = "Creaconjuros Mosh'Ogg"
RPH_TXT.Mob.BoulderfistOgre = "Ogro Puño de Roca"
-- Quest Details	
RPH_TXT.cdq	= "Ciudad principal: misiones diarias de cocina"
RPH_TXT.coq	= "Otra ciudad: misiones diarias de cocina"
RPH_TXT.fdq	= "Ciudad principal: misiones diarias de pesca"
RPH_TXT.foq	= "Otra ciudad: misiones diarias de pesca"
RPH_TXT.ndq	= "Sin misiones diarias"
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
RPH_TXT.tfr	= "Recolectar cualquier cultivo de la granja"
RPH_TXT.nswts	= ""
RPH_TXT.mnd	= "Número máximo de misiones diarias"
RPH_TXT.mnds	= "El número máximo de diarias es"
	
	
	
	
	
-- ReputationDetails	
RPH_TXT.currentRep	= "Reputación actual"
RPH_TXT.neededRep	= "Reputación necesaria"
RPH_TXT.missingRep	= "Reputación faltante"
RPH_TXT.repInBag	= "Reputación en bolsa"
RPH_TXT.repInBagBank	= "Reputación en bolsa y banco"
RPH_TXT.repInQuest	= "Reputación en misiones"
RPH_TXT.factionGained	= "Ganado esta sesión"
RPH_TXT.noInfo	= "No hay información sobre esta reputación y/o facción"
RPH_TXT.toExalted	= "Reputación para exaltado"
RPH_TXT.toBestFriend = "Reputación para Mejor amigo"
-- to chat	
RPH_TXT.stats	= " (Total: %s%d, Falta: %d)"
-- config changed	
RPH_TXT.configQuestion	= "Por favor compruebe los ajustes de RepHelper."
RPH_TXT.showConfig	= "Ir a Ajustes"
RPH_TXT.later	= "Más tarde"
-- UpdateList	
RPH_TXT.mobShort	= "[M]"
RPH_TXT.questShort	= "[Q]"
RPH_TXT.instanceShort	= "[D]"
RPH_TXT.itemsShort	= "[I]"
RPH_TXT.generalShort	= "[G]"
RPH_TXT.mobHead	= "Gana reputación matando este mob"
RPH_TXT.questHead	= "Gana reputación finalizando esta misión"
RPH_TXT.instanceHead	= "Gana reputación haciendo esta instancia"
RPH_TXT.itemsHead	= "Gana reputación entregando este objeto"
RPH_TXT.generalHead	= "Información para ganar reputación"
RPH_TXT.mobTip	= "Cada vez que mata este mob, gana reputación. Matarlo las veces suficientes le ayudara a alcanzar el siguiente nivel."
RPH_TXT.questTip	= "Cada vez que completa esta misión diaria o repetible, gana reputación. Completarla las veces suficientes le ayudara a alcanzar el siguiente nivel."
RPH_TXT.instanceTip	= "Cada vez que completa esta instancia, gana reputación. Completarla las veces suficientes le ayudara a alcanzar el siguiente nivel."
RPH_TXT.itemsName	= "Entregar objetos"
RPH_TXT.itemsTip	= "Cada vez que entrega este objeto, gana reputación. Entregarlo las veces suficientes le ayudara a alcanzar el siguiente nivel."
RPH_TXT.generalTip	= "Esta facción no necesariamente sube reputación con metodos repetibles."
RPH_TXT.allOfTheAbove	= "Resumen de las %d misiones listadas"
RPH_TXT.questSummaryHead	= RPH_TXT.allOfTheAbove
RPH_TXT.questSummaryTip	= "Este es un resumen de todas las misiones listadas.\r\nThis is useful assuming that all the quests listed are daily quests, as this will show you how many days it will take you to reach the next reputation level if you do all the daily quests each day."
RPH_TXT.complete	= "completo"
RPH_TXT.active	= "activo"
RPH_TXT.inBag	= "En bolsa:"
RPH_TXT.turnIns	= "Entregas:"
RPH_TXT.reputation	= "Reputación:"
RPH_TXT.reputationCap	= "Limite de reputación:"
RPH_TXT.reputationCapCurrent	= "Reputación actual:"
RPH_TXT.inBagBank	= "En bolsa y banco"
RPH_TXT.questCompleted	= "Misión completada"
RPH_TXT.timesToDo	= "Veces por hacer:"
RPH_TXT.instance2	= "Instancia:"
RPH_TXT.mode	= "Modo:"
RPH_TXT.timesToRun	= "Veces por hacer:"
RPH_TXT.mob2	= "Mob:"
RPH_TXT.location	= "Localización:"
RPH_TXT.toDo	= "Por hacer:"
RPH_TXT.quest2	= "Misión:"
RPH_TXT.itemsRequired	= "Objetos necesarios"
RPH_TXT.general2	= "General:"
RPH_TXT.maxStanding	= "Da reputación hasta"
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
RPH_TXT.elements.tip.RPH_OptionsButton	= "Abrir la ventana de configuración."
RPH_TXT.elements.name.RPH_OrderByStandingCheckBox	= RPH_TXT.orderByStanding
RPH_TXT.elements.tip.RPH_OrderByStandingCheckBox	= "Si esta casilla no está marcada, la lista facción se muestra mediante la clasificación por defecto de Blizzard, agrupados por orden lógico y alfabético. \r\n\r\n Si se marca esta casilla, la lista se ordena las reputaciones por nivel. \r\n\r\n Para ver las reputaciones inactivas, desactive esta casilla y vaya a la parte inferior de la lista."
	
RPH_TXT.elements.name.RPH_ShowMobsButton	= RPH_TXT.showMobs
RPH_TXT.elements.tip.RPH_ShowMobsButton	= "Marque este botón para ver los mobs que se pueden matar para mejorar su reputación."
RPH_TXT.elements.name.RPH_ShowQuestButton	= RPH_TXT.showQuests
RPH_TXT.elements.tip.RPH_ShowQuestButton	= "Marque este botón para ver las misiones que se pueden hacer para mejorar su reputación."
RPH_TXT.elements.name.RPH_ShowItemsButton	= RPH_TXT.showItems
RPH_TXT.elements.tip.RPH_ShowItemsButton	= "Marque este botón para ver los objetos que se pueden entregar para mejorar su reputación."
RPH_TXT.elements.name.RPH_ShowInstancesButton	= RPH_TXT.showInstances
RPH_TXT.elements.tip.RPH_ShowInstancesButton	= "Marque este botón para ver las instancias que puede ejecutar para mejorar su reputación."
RPH_TXT.elements.name.RPH_ShowGeneralButton	= RPH_TXT.showGeneral
RPH_TXT.elements.tip.RPH_ShowGeneralButton	= "Marque este botón para ver la información general sobre la mejora de su reputación."
	
RPH_TXT.elements.name.RPH_ShowAllButton	= RPH_TXT.showAll
RPH_TXT.elements.tip.RPH_ShowAllButton	= "Pulse este botón para restablecer las cuatro casillas de la izquierda. \r\nEsto mostrará mobs, misiones, objetos e instancias que le den reputación de la facción seleccionada."
RPH_TXT.elements.name.RPH_ShowNoneButton	= RPH_TXT.showNone
RPH_TXT.elements.tip.RPH_ShowNoneButton	= "Pulse este botón para desmarcar la selección de las cuatro casillas de la izquierda. \r\nEsto ocultara mobs, misiones, objetos e instancias que le den reputación de la facción seleccionada."
	
RPH_TXT.elements.name.RPH_ExpandButton	= RPH_TXT.expand
RPH_TXT.elements.tip.RPH_ExpandButton	= "Pulse este botón para expandir todas las entradas de la lista."
RPH_TXT.elements.name.RPH_CollapseButton	= RPH_TXT.collapse
RPH_TXT.elements.tip.RPH_CollapseButton	= "Pulse este botón para colapsar todas las entradas de la lista."
RPH_TXT.elements.name.RPH_SupressNoneFactionButton	= RPH_TXT.supressNoneFaction
RPH_TXT.elements.tip.RPH_SupressNoneFactionButton	= "Pulse este botón para restablecer todos los elementos excluidos de esta facción."
RPH_TXT.elements.name.RPH_SupressNoneGlobalButton	= RPH_TXT.supressNoneGlobal
RPH_TXT.elements.tip.RPH_SupressNoneGlobalButton	= "Pulse este botón para restablecer todos los elementos excluidos de todas las facciones."
RPH_TXT.elements.name.RPH_ClearSessionGainButton	= RPH_TXT.clearSessionGain
RPH_TXT.elements.tip.RPH_ClearSessionGainButton	= "Pulse este botón para reiniciar el contador de reputación de esta sesión."

	
RPH_TXT.elements.name.RPH_EnableMissingBox	= RPH_TXT.showMissing
RPH_TXT.elements.tip.RPH_EnableMissingBox	= "Esta opción añade entre parentesis la reputación faltante para el siguiente nivel en la ventana de reputación.u"
RPH_TXT.elements.name.RPH_ExtendDetailsBox	= RPH_TXT.extendDetails
RPH_TXT.elements.tip.RPH_ExtendDetailsBox	= "Active esta opción para mostrar un cuadro detalle reputación extendida. \r\nEn Además, la información que se muestra en el cuadro detalle original, esto mostrará la reputación faltante necesaria para alcanzar el siguiente nivel de reputación y una lista de maneras de ganar esta reputación mediante anuncio quests , las multitudes, los elementos e instancias que producen reputación de la facción elegida."
RPH_TXT.elements.name.RPH_GainToChatBox	= RPH_TXT.gainToChat	
RPH_TXT.elements.tip.RPH_GainToChatBox	= "Enable this setting to display reputation gained for all factions whenever you gain reputation.\r\nThis differs from the standard way of reporting reputation gain, as normally, only the gain with the main faction is listed."	
RPH_TXT.elements.name.RPH_NoGuildGainBox	= RPH_TXT.noGuildGain
RPH_TXT.elements.tip.RPH_NoGuildGainBox	= "Al marcar esta casilla se desactivara los mensajes de chat de la reputación de hermandad."
RPH_TXT.elements.name.RPH_SupressOriginalGainBox	= RPH_TXT.suppressOriginalGain	
RPH_TXT.elements.tip.RPH_SupressOriginalGainBox	= "Enable this setting to suppress the standard reputation gain messages.\r\nThis makes sense if you have enabled the detailed faction gain messages, so you don't get identical listings from the standard and extended versions."	
RPH_TXT.elements.name.RPH_ShowPreviewRepBox	= RPH_TXT.showPreviewRep	
RPH_TXT.elements.tip.RPH_ShowPreviewRepBox	= "Enable this setting to show the reputation you can gain by handing in items and completed quests as a grey bar overlaid over the normal reputation bar in the reputation frame."	
RPH_TXT.elements.name.RPH_SwitchFactionBarBox	= RPH_TXT.switchFactionBar	
RPH_TXT.elements.tip.RPH_SwitchFactionBarBox	= "Enable this setting to automatically switch the faction being watched to the last faction whom you have gained reputation for."	
RPH_TXT.elements.name.RPH_NoGuildSwitchBox	= RPH_TXT.noGuildSwitch
RPH_TXT.elements.tip.RPH_NoGuildSwitchBox	= "Active esta opción para no cambiar la facción observó por ganancias de reputación del clan."
RPH_TXT.elements.name.RPH_SilentSwitchBox	= RPH_TXT.silentSwitch
RPH_TXT.elements.tip.RPH_SilentSwitchBox	= "Active esta opción para cambiar la barra de reputación silenciosamente (sin mensaje de chat)."
RPH_TXT.elements.name.RPH_GuildCapBox	= RPH_TXT.guildCap	
RPH_TXT.elements.name.RPH_ChatFrameSlider	= "Chat frame"	
RPH_TXT.elements.tip.RPH_ChatFrameSlider	= "Select which chat frame RepHelper prints its messages."
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
	
	
