-- Français (French)	
--------------------	--------------------
if (GetLocale() =="frFR") then	
	
-- Binding names	
BINDING_HEADER_FACTIONIZER	= "Factionizer"
BINDING_NAME_SHOWCONFIG	= "Afficher les options fenêtre"
BINDING_NAME_SHOWDETAILS	= "Fenêtre Montrer détail réputation"
	
FIZ_TXT	= {}
FIZ_TXT.Mob = {}
-- help	
FIZ_TXT.help	= "Un outil pour gérer votre réputation"
FIZ_TXT.command	= "Impossible d'analyser commande"
FIZ_TXT.usage	= "Usage"
FIZ_TXT.helphelp	= "Voir ce texte d'aide"
FIZ_TXT.helpabout	= "Mostrar información del autor"
FIZ_TXT.helpstatus	= "Afficher l'état de configuration"
-- about	
FIZ_TXT.by	= "par"
FIZ_TXT.version	= "Version"
FIZ_TXT.date	= "date"
FIZ_TXT.web	= "site Web"
FIZ_TXT.slash	= "slash commande"
FIZ_TXT_STAND_LV	= {}
FIZ_TXT_STAND_LV[0]	= "Inconnue"
FIZ_TXT_STAND_LV[1]	= "Détesté"
FIZ_TXT_STAND_LV[2]	= "Hostile"
FIZ_TXT_STAND_LV[3]	= "Défavorable"
FIZ_TXT_STAND_LV[4]	= "Neutre"
FIZ_TXT_STAND_LV[5]	= "Accueillant"
FIZ_TXT_STAND_LV[6]	= "Honoré"
FIZ_TXT_STAND_LV[7]	= "Révéré"
FIZ_TXT_STAND_LV[8]	= "Exalté"
-- status	
FIZ_TXT.status	= "statut"
FIZ_TXT.disabled	= "handicapé"
FIZ_TXT.enabled	= "permis"
FIZ_TXT.statMobs	= "Voir Mobs [M]"
FIZ_TXT.statQuests	= "Afficher Quêtes[Q]"
FIZ_TXT.statInstances	= "Afficher les instances [D]"
FIZ_TXT.statItems	= "Afficher les éléments [I]"
FIZ_TXT.statGeneral	= "Voir général [G]"
FIZ_TXT.statMissing	= "Voir réputation manquant"
FIZ_TXT.statDetails	= "Afficher le cadre détails prolongée"
FIZ_TXT.statChat	= "Message de discussion détaillée"
FIZ_TXT.statNoGuildChat	= "Pas de chat de guilde rep"
FIZ_TXT.statSuppress	= "Suppression du message de chat originale"
FIZ_TXT.statPreview	= "Montrer représentant aperçu dans un cadre réputation"
FIZ_TXT.statSwitch	= "Basculer automatiquement faction de rep bar"
FIZ_TXT.statNoGuildSwitch	= "Pas de commutation pour guilde rep"
FIZ_TXT.statSilentSwitch	= "Aucun message lors du passage bar"
FIZ_TXT.statGuildCap	= "Montrer bouchon réputation de guilde dans le chat"
-- XML UI elements	
FIZ_TXT.showQuests	= "Afficher Quêtes"
FIZ_TXT.showInstances	= "Afficher les instances"
FIZ_TXT.showMobs	= "Voir Mobs"
FIZ_TXT.showItems	= "Afficher les éléments"
FIZ_TXT.showGeneral	= "Voir générale"
FIZ_TXT.showAll	= "Tout afficher"
FIZ_TXT.showNone	= "montrer Aucun"
FIZ_TXT.expand	= "étendre"
FIZ_TXT.collapse	= "effondrement"
FIZ_TXT.supressNoneFaction	= "Exclusion claire pour la faction"
FIZ_TXT.supressNoneGlobal	= "Exclusion claire pour tous"
FIZ_TXT.suppressHint	= "Faites un clic droit sur ​​une quête pour l'exclure du résumé"
FIZ_TXT.clearSessionGain	= "Zéro du compteur de gain séance"
-- options dialog	
FIZ_TXT.showMissing	= "Voir réputation manquant dans un cadre réputation"
FIZ_TXT.extendDetails	= "Voir prolongée cadre réputation détail"
FIZ_TXT.gainToChat	= "Rédiger les messages détaillés de gain de faction à la fenêtre de chat"
FIZ_TXT.noGuildGain	= "N'écrivez pas discuter de la réputation de guilde"
FIZ_TXT.suppressOriginalGain	= "Réprimer originales messages de gain de faction"
FIZ_TXT.showPreviewRep	= "Voir réputation qui peut être remis dans un cadre réputation"
FIZ_TXT.switchFactionBar	= "Barre de réputation interrupteur à la faction pour laquelle tout acquis une réputation"
FIZ_TXT.noGuildSwitch	= "Ne mettez pas la barre réputation pour la réputation de guilde"
FIZ_TXT.silentSwitch	= "Aucun message à discuter lors de la commutation barre"
FIZ_TXT.guildCap	= "Montrer bouchon réputation de guilde dans le chat"
FIZ_TXT.defaultChatFrame	= "Utilisation fenêtre de discussion par défaut"
FIZ_TXT.chatFrame	= "Utilisation fenêtre de discussion %d (%s)"
FIZ_TXT.usingDefaultChatFrame	= "Maintenant, en utilisant fenêtre de discussion par défaut"
FIZ_TXT.usingChatFrame	= "Maintenant, en utilisant fenêtre de discussion"
FIZ_TXT.EnableParagonBar = "Display paragon reputation in bars."
-- various LUA	
FIZ_TXT.options	= "options d'"
FIZ_TXT.orderByStanding	= "Trier par permanent"
FIZ_TXT.lookup	= "Regarder vers le haut faction"
FIZ_TXT.allFactions	= "Liste de toutes les factions"
FIZ_TXT.missing	= "(à côté)"
FIZ_TXT.missing2	= "manquant"
FIZ_TXT.heroic	= "héroïque"
FIZ_TXT.normal	= "normale"
FIZ_TXT.switchBar	= "Modification de la barre de réputation à"
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
FIZ_TXT.tmob	= "détritus mob"
FIZ_TXT.oboss	= "autres patrons"
FIZ_TXT.aboss	= "Tous les patrons"
FIZ_TXT.pboss	= "par Fondateur"
FIZ_TXT.fclear	= "complet clair"
FIZ_TXT.AU	= "Any Unnamed"
FIZ_TXT.AN	= "Any named"
FIZ_TXT.BB	= "Bloodsail Buccaneer"
FIZ_TXT.SSP	= "Southsea Pirate"
FIZ_TXT.Wa	= "Wastewander"
FIZ_TXT.VCm	= "Any Venture Co. mob"
FIZ_TXT.Mob.MoshOgg_Spellcrafter = "Magicien mosh'Ogg"
FIZ_TXT.Mob.BoulderfistOgre = "Ogre rochepoing"
-- Quest Details	
FIZ_TXT.cdq	= "principale ville cuisine quêtes journalières"
FIZ_TXT.coq	= "autre ville cuisine quêtes journalières"
FIZ_TXT.fdq	= "principale ville pêche quêtes journalières"
FIZ_TXT.foq	= "autre ville pêche quêtes journalières"
FIZ_TXT.ndq	= "aucun quêtes journalières"
FIZ_TXT.deleted	= "dépassé"
FIZ_TXT.Championing	= "Défendre (Tabard)"
FIZ_TXT.bpqfg	= "En pour cent du gain de faction de la quête"
	
-- items Details	
FIZ_TXT.cbadge	= "Ecusson de mérite de autre ville"
-- instance Details	
FIZ_TXT.srfd	= "Représentant retombées de donjons"
FIZ_TXT.tbd	= "ToBe Done"
FIZ_TXT.nci	= "Cas Cataclysm normales"
FIZ_TXT.hci	= "Cas Cataclysm Heroric"
-- ToBeDone general	
FIZ_TXT.tfr	= "Tiller agriculture représentant"
FIZ_TXT.nswts	= "Ne sais pas quand cela commence"
FIZ_TXT.mnd	= "Nombre maximum de quêtes journalières"
FIZ_TXT.mnds	= "Le nombre maximum de quotidiens est"
	
	
	
	
	
-- ReputationDetails	
FIZ_TXT.currentRep	= "réputation actuelle"
FIZ_TXT.neededRep	= "réputation nécessaire"
FIZ_TXT.missingRep	= "réputation manquant"
FIZ_TXT.repInBag	= "Réputation dans le sac"
FIZ_TXT.repInBagBank	= "Réputation dans le sac et banque"
FIZ_TXT.repInQuest	= "Réputation en quêtes"
FIZ_TXT.factionGained	= "Acquis cette session"
FIZ_TXT.noInfo	= "Aucune information disponible pour cette faction / réputation."
FIZ_TXT.toExalted	= "Réputation à exalté"
FIZ_TXT.toBestFriend = "Reputation to best friend"
-- to chat	
FIZ_TXT.stats	= " (Totale: %s%d, Laissé: %d)"
-- config changed	
FIZ_TXT.configQuestion	= "Some (new) settings were enabled. This is only done once for a setting. It is recommended that you verify the Factionizer options."
FIZ_TXT.showConfig	= "voir config"
FIZ_TXT.later	= "Plus tard"
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
FIZ_TXT.skillHerb	= "Herborisme"
FIZ_TXT.skillMine	= "Minage"
FIZ_TXT.skillSkin	= "Dépecage"
FIZ_TXT.skillAlch	= "Alchimie"
FIZ_TXT.skillBlack	= "Forge"
FIZ_TXT.skillEnch	= "Enchantement"
FIZ_TXT.skillEngi	= "Ingénierie"
FIZ_TXT.skillIncrip	= "Calligraphie"
FIZ_TXT.skillJewel	= "Joaillerie"
FIZ_TXT.skillLeath	= "Travail du cuir"
FIZ_TXT.skillTail	= "Couture"
FIZ_TXT.skillAid	= "Premiers soins"
FIZ_TXT.skillArch	= "Archéologie"
FIZ_TXT.skillCook	= "Cuisine"
FIZ_TXT.skillFish	= "Pêche"
-- Tooltip	
FIZ_TXT.elements	= {}
FIZ_TXT.elements.name	= {}
FIZ_TXT.elements.tip	= {}
	
FIZ_TXT.elements.name.FIZ_OptionsButton	= FIZ_TXT.options
FIZ_TXT.elements.tip.FIZ_OptionsButton	= "Ouvrez une fenêtre pour configurer Factionizer."
FIZ_TXT.elements.name.FIZ_OrderByStandingCheckBox	= FIZ_TXT.orderByStanding
FIZ_TXT.elements.tip.FIZ_OrderByStandingCheckBox	= "Si cette case n'est pas cochée, la liste de faction est affichée par défaut (Blizzard) tri, regroupés par ordre logique et alphabétique. \r\n\r\n Si cette case est cochée, la liste de faction sont triées par date. \r\n\r\n Pour vue des | cFFFAA0A0inactive |r les factions , décochez cette case et passez à la fin de la liste."
	
FIZ_TXT.elements.name.FIZ_ShowMobsButton	= FIZ_TXT.showMobs
FIZ_TXT.elements.tip.FIZ_ShowMobsButton	= "Vérifiez ce bouton pour voir les mobs que vous pouvez tuer pour améliorer votre réputation."
FIZ_TXT.elements.name.FIZ_ShowQuestButton	= FIZ_TXT.showQuests
FIZ_TXT.elements.tip.FIZ_ShowQuestButton	= "Vérifiez ce bouton pour voir quêtes que vous pouvez faire pour améliorer votre réputation."
FIZ_TXT.elements.name.FIZ_ShowItemsButton	= FIZ_TXT.showItems
FIZ_TXT.elements.tip.FIZ_ShowItemsButton	= "Cochez ce bouton pour voir les articles que vous pouvez remettre à améliorer votre réputation."
FIZ_TXT.elements.name.FIZ_ShowInstancesButton	= FIZ_TXT.showInstances
FIZ_TXT.elements.tip.FIZ_ShowInstancesButton	= "Vérifiez ce bouton pour voir cas, vous pouvez exécuter pour améliorer votre réputation."
FIZ_TXT.elements.name.FIZ_ShowGeneralButton	= FIZ_TXT.showGeneral
FIZ_TXT.elements.tip.FIZ_ShowGeneralButton	= "Cochez cette touche pour afficher des informations générales sur l'amélioration de votre réputation."
	
FIZ_TXT.elements.name.FIZ_ShowAllButton	= FIZ_TXT.showAll
FIZ_TXT.elements.tip.FIZ_ShowAllButton	= "Appuyez sur ce bouton pour vérifier les quatre cases vers la gauche. \r\nCela fera apparaître des monstres, quêtes, objets et instances qui vous donnent la réputation de la faction actuellement sélectionné."
FIZ_TXT.elements.name.FIZ_ShowNoneButton	= FIZ_TXT.showNone
FIZ_TXT.elements.tip.FIZ_ShowNoneButton	= "Appuyez sur ce bouton pour désélectionner les quatre cases vers la gauche. \r\nCela va vous montrer qu'aucun des façons de gagner de la réputation de la faction actuellement sélectionné."
	
FIZ_TXT.elements.name.FIZ_ExpandButton	= FIZ_TXT.expand
FIZ_TXT.elements.tip.FIZ_ExpandButton	= "Appuyez sur ce bouton pour développer toutes les entrées de la liste. Cela va vous montrer les matériaux nécessaires à la main dans les quêtes de collecte élément."
FIZ_TXT.elements.name.FIZ_CollapseButton	= FIZ_TXT.collapse
FIZ_TXT.elements.tip.FIZ_CollapseButton	= "Appuyez sur ce bouton pour réduire toutes les entrées de la liste. Cela permet de masquer les matériaux nécessaires à portée de main dans la collecte des quêtes."
FIZ_TXT.elements.name.FIZ_SupressNoneFactionButton	= FIZ_TXT.supressNoneFaction
FIZ_TXT.elements.tip.FIZ_SupressNoneFactionButton	= "Appuyez sur ce bouton pour réactiver toutes les quêtes de cette faction que vous avez exclu par droi-cliquant dessus."
FIZ_TXT.elements.name.FIZ_SupressNoneGlobalButton	= FIZ_TXT.supressNoneGlobal
FIZ_TXT.elements.tip.FIZ_SupressNoneGlobalButton	= "Appuyez sur ce bouton pour réactiver toutes les quêtes pour toutes les factions que vous avez exclu par un clic droit sur ​​elle."
FIZ_TXT.elements.name.FIZ_ClearSessionGainButton	= FIZ_TXT.clearSessionGain
FIZ_TXT.elements.tip.FIZ_ClearSessionGainButton	= "Appuyez sur ce bouton pour effacer réinitialiser le compteur de la réputation acquise cette session."
	
FIZ_TXT.elements.name.FIZ_EnableMissingBox	= FIZ_TXT.showMissing
FIZ_TXT.elements.tip.FIZ_EnableMissingBox	= "Activez ce paramètre pour ajouter des points de réputation manquantes nécessaires pour le prochain niveau de réputation derrière la position actuelle de chaque faction dans le cadre de la réputation."
FIZ_TXT.elements.name.FIZ_ExtendDetailsBox	= FIZ_TXT.extendDetails
FIZ_TXT.elements.tip.FIZ_ExtendDetailsBox	= "Activez ce paramètre pour afficher une image détaillée de la réputation prolongée. \r\nEn outre les informations indiquées dans le cadre des détails d'origine, cela affichera la réputation manquant nécessaire pour atteindre le prochain niveau de réputation et une liste des moyens de gagner cette réputation en dressant la liste des quêtes , monstres, objets et instances qui rendement réputation pour la faction choisie."
FIZ_TXT.elements.name.FIZ_GainToChatBox	= FIZ_TXT.gainToChat
FIZ_TXT.elements.tip.FIZ_GainToChatBox	= "Habilite esta opción para mostrar la reputación adquirida por todas las facciones Siempre que ganes reputación. \r\nEste difiere de la forma habitual de presentación de informes ganancia reputación, normalmente, sólo la ganancia con la facción principal está en la lista."
FIZ_TXT.elements.name.FIZ_NoGuildGainBox	= FIZ_TXT.noGuildGain
FIZ_TXT.elements.tip.FIZ_NoGuildGainBox	= "Activez ce paramètre pour ne pas imprimer les messages de discuter de réputation de guilde."
FIZ_TXT.elements.name.FIZ_SupressOriginalGainBox	= FIZ_TXT.suppressOriginalGain
FIZ_TXT.elements.tip.FIZ_SupressOriginalGainBox	= "Activez ce paramètre pour supprimer les messages de gain de réputation standard. \r \n Cela est utile si vous avez activé les messages détaillés de gain de faction, si vous n'obtenez pas de résultats identiques aux versions standard et étendu."
FIZ_TXT.elements.name.FIZ_ShowPreviewRepBox	= FIZ_TXT.showPreviewRep
FIZ_TXT.elements.tip.FIZ_ShowPreviewRepBox	= "Activez ce paramètre pour afficher la réputation que vous pouvez gagner en remettant articles et des quêtes accomplies comme une barre grise recouverte sur la barre de réputation normale dans le cadre de la réputation."
FIZ_TXT.elements.name.FIZ_SwitchFactionBarBox	= FIZ_TXT.switchFactionBar
FIZ_TXT.elements.tip.FIZ_SwitchFactionBarBox	= "Activez ce paramètre pour passer automatiquement la faction être regardé à la faction dernière que vous avez gagné la réputation d'."
FIZ_TXT.elements.name.FIZ_NoGuildSwitchBox	= FIZ_TXT.noGuildSwitch
FIZ_TXT.elements.tip.FIZ_NoGuildSwitchBox	= "Activez ce paramètre pour ne pas passer la faction regardé pour des gains de réputation de guilde."
FIZ_TXT.elements.name.FIZ_SilentSwitchBox	= FIZ_TXT.silentSwitch
FIZ_TXT.elements.tip.FIZ_SilentSwitchBox	= "Activez ce paramètre pour activer la barre de réputation en mode silencieux (sans message à chat)."
FIZ_TXT.elements.name.FIZ_GuildCapBox	= FIZ_TXT.guildCap
FIZ_TXT.elements.name.FIZ_ChatFrameSlider	= "T'Chat cadre"
FIZ_TXT.elements.tip.FIZ_ChatFrameSlider	= "Sélectionnez le chat qui cadre Factionizer imprime ses messages"
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
	
	
