-- Français (French)	
--------------------	--------------------
if (GetLocale() =="frFR") then	
	
-- Binding names	
BINDING_HEADER_FACTIONIZER	= "RepHelper"
BINDING_NAME_SHOWCONFIG	= "Afficher les options fenêtre"
BINDING_NAME_SHOWDETAILS	= "Fenêtre Montrer détail réputation"
	
RPH_TXT	= {}
RPH_TXT.Mob = {}
-- help	
RPH_TXT.help	= "Un outil pour gérer votre réputation"
RPH_TXT.command	= "Impossible d'analyser commande"
RPH_TXT.usage	= "Usage"
RPH_TXT.helphelp	= "Voir ce texte d'aide"
RPH_TXT.helpabout	= "Mostrar información del autor"
RPH_TXT.helpstatus	= "Afficher l'état de configuration"
-- about	
RPH_TXT.by	= "par"
RPH_TXT.version	= "Version"
RPH_TXT.date	= "date"
RPH_TXT.web	= "site Web"
RPH_TXT.slash	= "slash commande"
RPH_TXT_STAND_LV	= {}
RPH_TXT_STAND_LV[0]	= "Inconnue"
RPH_TXT_STAND_LV[1]	= "Détesté"
RPH_TXT_STAND_LV[2]	= "Hostile"
RPH_TXT_STAND_LV[3]	= "Défavorable"
RPH_TXT_STAND_LV[4]	= "Neutre"
RPH_TXT_STAND_LV[5]	= "Accueillant"
RPH_TXT_STAND_LV[6]	= "Honoré"
RPH_TXT_STAND_LV[7]	= "Révéré"
RPH_TXT_STAND_LV[8]	= "Exalté"
-- status	
RPH_TXT.status	= "statut"
RPH_TXT.disabled	= "handicapé"
RPH_TXT.enabled	= "permis"
RPH_TXT.statMobs	= "Voir Mobs [M]"
RPH_TXT.statQuests	= "Afficher Quêtes[Q]"
RPH_TXT.statInstances	= "Afficher les instances [D]"
RPH_TXT.statItems	= "Afficher les éléments [I]"
RPH_TXT.statGeneral	= "Voir général [G]"
RPH_TXT.statMissing	= "Voir réputation manquant"
RPH_TXT.statDetails	= "Afficher le cadre détails prolongée"
RPH_TXT.statChat	= "Message de discussion détaillée"
RPH_TXT.statNoGuildChat	= "Pas de chat de guilde rep"
RPH_TXT.statSuppress	= "Suppression du message de chat originale"
RPH_TXT.statPreview	= "Montrer représentant aperçu dans un cadre réputation"
RPH_TXT.statSwitch	= "Basculer automatiquement faction de rep bar"
RPH_TXT.statNoGuildSwitch	= "Pas de commutation pour guilde rep"
RPH_TXT.statSilentSwitch	= "Aucun message lors du passage bar"
RPH_TXT.statGuildCap	= "Montrer bouchon réputation de guilde dans le chat"
-- XML UI elements	
RPH_TXT.showQuests	= "Afficher Quêtes"
RPH_TXT.showInstances	= "Afficher les instances"
RPH_TXT.showMobs	= "Voir Mobs"
RPH_TXT.showItems	= "Afficher les éléments"
RPH_TXT.showGeneral	= "Voir générale"
RPH_TXT.showAll	= "Tout afficher"
RPH_TXT.showNone	= "montrer Aucun"
RPH_TXT.expand	= "étendre"
RPH_TXT.collapse	= "effondrement"
RPH_TXT.supressNoneFaction	= "Exclusion claire pour la faction"
RPH_TXT.supressNoneGlobal	= "Exclusion claire pour tous"
RPH_TXT.suppressHint	= "Faites un clic droit sur ​​une quête pour l'exclure du résumé"
RPH_TXT.clearSessionGain	= "Zéro du compteur de gain séance"
-- options dialog	
RPH_TXT.showMissing	= "Voir réputation manquant dans un cadre réputation"
RPH_TXT.extendDetails	= "Voir prolongée cadre réputation détail"
RPH_TXT.gainToChat	= "Rédiger les messages détaillés de gain de faction à la fenêtre de chat"
RPH_TXT.noGuildGain	= "N'écrivez pas discuter de la réputation de guilde"
RPH_TXT.suppressOriginalGain	= "Réprimer originales messages de gain de faction"
RPH_TXT.showPreviewRep	= "Voir réputation qui peut être remis dans un cadre réputation"
RPH_TXT.switchFactionBar	= "Barre de réputation interrupteur à la faction pour laquelle tout acquis une réputation"
RPH_TXT.noGuildSwitch	= "Ne mettez pas la barre réputation pour la réputation de guilde"
RPH_TXT.silentSwitch	= "Aucun message à discuter lors de la commutation barre"
RPH_TXT.guildCap	= "Montrer bouchon réputation de guilde dans le chat"
RPH_TXT.defaultChatFrame	= "Utilisation fenêtre de discussion par défaut"
RPH_TXT.chatFrame	= "Utilisation fenêtre de discussion %d (%s)"
RPH_TXT.usingDefaultChatFrame	= "Maintenant, en utilisant fenêtre de discussion par défaut"
RPH_TXT.usingChatFrame	= "Maintenant, en utilisant fenêtre de discussion"
RPH_TXT.EnableParagonBar = "Display paragon reputation in bars."
-- various LUA	
RPH_TXT.options	= "options d'"
RPH_TXT.orderByStanding	= "Trier par permanent"
RPH_TXT.lookup	= "Regarder vers le haut faction"
RPH_TXT.allFactions	= "Liste de toutes les factions"
RPH_TXT.missing	= "(à côté)"
RPH_TXT.missing2	= "manquant"
RPH_TXT.heroic	= "héroïque"
RPH_TXT.normal	= "normale"
RPH_TXT.switchBar	= "Modification de la barre de réputation à"
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
RPH_TXT.tmob	= "détritus mob"
RPH_TXT.oboss	= "autres patrons"
RPH_TXT.aboss	= "Tous les patrons"
RPH_TXT.pboss	= "par Fondateur"
RPH_TXT.fclear	= "complet clair"
RPH_TXT.AU	= "Any Unnamed"
RPH_TXT.AN	= "Any named"
RPH_TXT.BB	= "Bloodsail Buccaneer"
RPH_TXT.SSP	= "Southsea Pirate"
RPH_TXT.Wa	= "Wastewander"
RPH_TXT.VCm	= "Any Venture Co. mob"
RPH_TXT.Mob.MoshOgg_Spellcrafter = "Magicien mosh'Ogg"
RPH_TXT.Mob.BoulderfistOgre = "Ogre rochepoing"
-- Quest Details	
RPH_TXT.cdq	= "principale ville cuisine quêtes journalières"
RPH_TXT.coq	= "autre ville cuisine quêtes journalières"
RPH_TXT.fdq	= "principale ville pêche quêtes journalières"
RPH_TXT.foq	= "autre ville pêche quêtes journalières"
RPH_TXT.ndq	= "aucun quêtes journalières"
RPH_TXT.deleted	= "dépassé"
RPH_TXT.Championing	= "Défendre (Tabard)"
RPH_TXT.bpqfg	= "En pour cent du gain de faction de la quête"
	
-- items Details	
RPH_TXT.cbadge	= "Ecusson de mérite de autre ville"
-- instance Details	
RPH_TXT.srfd	= "Représentant retombées de donjons"
RPH_TXT.tbd	= "ToBe Done"
RPH_TXT.nci	= "Cas Cataclysm normales"
RPH_TXT.hci	= "Cas Cataclysm Heroric"
-- ToBeDone general	
RPH_TXT.tfr	= "Tiller agriculture représentant"
RPH_TXT.nswts	= "Ne sais pas quand cela commence"
RPH_TXT.mnd	= "Nombre maximum de quêtes journalières"
RPH_TXT.mnds	= "Le nombre maximum de quotidiens est"
	
	
	
	
	
-- ReputationDetails	
RPH_TXT.currentRep	= "réputation actuelle"
RPH_TXT.neededRep	= "réputation nécessaire"
RPH_TXT.missingRep	= "réputation manquant"
RPH_TXT.repInBag	= "Réputation dans le sac"
RPH_TXT.repInBagBank	= "Réputation dans le sac et banque"
RPH_TXT.repInQuest	= "Réputation en quêtes"
RPH_TXT.factionGained	= "Acquis cette session"
RPH_TXT.noInfo	= "Aucune information disponible pour cette faction / réputation."
RPH_TXT.toExalted	= "Réputation à exalté"
RPH_TXT.toBestFriend = "Reputation to best friend"
-- to chat	
RPH_TXT.stats	= " (Totale: %s%d, Laissé: %d)"
-- config changed	
RPH_TXT.configQuestion	= "Some (new) settings were enabled. This is only done once for a setting. It is recommended that you verify the RepHelper options."
RPH_TXT.showConfig	= "voir config"
RPH_TXT.later	= "Plus tard"
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
RPH_TXT.skillHerb	= "Herborisme"
RPH_TXT.skillMine	= "Minage"
RPH_TXT.skillSkin	= "Dépecage"
RPH_TXT.skillAlch	= "Alchimie"
RPH_TXT.skillBlack	= "Forge"
RPH_TXT.skillEnch	= "Enchantement"
RPH_TXT.skillEngi	= "Ingénierie"
RPH_TXT.skillIncrip	= "Calligraphie"
RPH_TXT.skillJewel	= "Joaillerie"
RPH_TXT.skillLeath	= "Travail du cuir"
RPH_TXT.skillTail	= "Couture"
RPH_TXT.skillAid	= "Premiers soins"
RPH_TXT.skillArch	= "Archéologie"
RPH_TXT.skillCook	= "Cuisine"
RPH_TXT.skillFish	= "Pêche"
-- Tooltip	
RPH_TXT.elements	= {}
RPH_TXT.elements.name	= {}
RPH_TXT.elements.tip	= {}
	
RPH_TXT.elements.name.RPH_OptionsButton	= RPH_TXT.options
RPH_TXT.elements.tip.RPH_OptionsButton	= "Ouvrez une fenêtre pour configurer RepHelper."
RPH_TXT.elements.name.RPH_OrderByStandingCheckBox	= RPH_TXT.orderByStanding
RPH_TXT.elements.tip.RPH_OrderByStandingCheckBox	= "Si cette case n'est pas cochée, la liste de faction est affichée par défaut (Blizzard) tri, regroupés par ordre logique et alphabétique. \r\n\r\n Si cette case est cochée, la liste de faction sont triées par date. \r\n\r\n Pour vue des | cFFFAA0A0inactive |r les factions , décochez cette case et passez à la fin de la liste."
	
RPH_TXT.elements.name.RPH_ShowMobsButton	= RPH_TXT.showMobs
RPH_TXT.elements.tip.RPH_ShowMobsButton	= "Vérifiez ce bouton pour voir les mobs que vous pouvez tuer pour améliorer votre réputation."
RPH_TXT.elements.name.RPH_ShowQuestButton	= RPH_TXT.showQuests
RPH_TXT.elements.tip.RPH_ShowQuestButton	= "Vérifiez ce bouton pour voir quêtes que vous pouvez faire pour améliorer votre réputation."
RPH_TXT.elements.name.RPH_ShowItemsButton	= RPH_TXT.showItems
RPH_TXT.elements.tip.RPH_ShowItemsButton	= "Cochez ce bouton pour voir les articles que vous pouvez remettre à améliorer votre réputation."
RPH_TXT.elements.name.RPH_ShowInstancesButton	= RPH_TXT.showInstances
RPH_TXT.elements.tip.RPH_ShowInstancesButton	= "Vérifiez ce bouton pour voir cas, vous pouvez exécuter pour améliorer votre réputation."
RPH_TXT.elements.name.RPH_ShowGeneralButton	= RPH_TXT.showGeneral
RPH_TXT.elements.tip.RPH_ShowGeneralButton	= "Cochez cette touche pour afficher des informations générales sur l'amélioration de votre réputation."
	
RPH_TXT.elements.name.RPH_ShowAllButton	= RPH_TXT.showAll
RPH_TXT.elements.tip.RPH_ShowAllButton	= "Appuyez sur ce bouton pour vérifier les quatre cases vers la gauche. \r\nCela fera apparaître des monstres, quêtes, objets et instances qui vous donnent la réputation de la faction actuellement sélectionné."
RPH_TXT.elements.name.RPH_ShowNoneButton	= RPH_TXT.showNone
RPH_TXT.elements.tip.RPH_ShowNoneButton	= "Appuyez sur ce bouton pour désélectionner les quatre cases vers la gauche. \r\nCela va vous montrer qu'aucun des façons de gagner de la réputation de la faction actuellement sélectionné."
	
RPH_TXT.elements.name.RPH_ExpandButton	= RPH_TXT.expand
RPH_TXT.elements.tip.RPH_ExpandButton	= "Appuyez sur ce bouton pour développer toutes les entrées de la liste. Cela va vous montrer les matériaux nécessaires à la main dans les quêtes de collecte élément."
RPH_TXT.elements.name.RPH_CollapseButton	= RPH_TXT.collapse
RPH_TXT.elements.tip.RPH_CollapseButton	= "Appuyez sur ce bouton pour réduire toutes les entrées de la liste. Cela permet de masquer les matériaux nécessaires à portée de main dans la collecte des quêtes."
RPH_TXT.elements.name.RPH_SupressNoneFactionButton	= RPH_TXT.supressNoneFaction
RPH_TXT.elements.tip.RPH_SupressNoneFactionButton	= "Appuyez sur ce bouton pour réactiver toutes les quêtes de cette faction que vous avez exclu par droi-cliquant dessus."
RPH_TXT.elements.name.RPH_SupressNoneGlobalButton	= RPH_TXT.supressNoneGlobal
RPH_TXT.elements.tip.RPH_SupressNoneGlobalButton	= "Appuyez sur ce bouton pour réactiver toutes les quêtes pour toutes les factions que vous avez exclu par un clic droit sur ​​elle."
RPH_TXT.elements.name.RPH_ClearSessionGainButton	= RPH_TXT.clearSessionGain
RPH_TXT.elements.tip.RPH_ClearSessionGainButton	= "Appuyez sur ce bouton pour effacer réinitialiser le compteur de la réputation acquise cette session."
	
RPH_TXT.elements.name.RPH_EnableMissingBox	= RPH_TXT.showMissing
RPH_TXT.elements.tip.RPH_EnableMissingBox	= "Activez ce paramètre pour ajouter des points de réputation manquantes nécessaires pour le prochain niveau de réputation derrière la position actuelle de chaque faction dans le cadre de la réputation."
RPH_TXT.elements.name.RPH_ExtendDetailsBox	= RPH_TXT.extendDetails
RPH_TXT.elements.tip.RPH_ExtendDetailsBox	= "Activez ce paramètre pour afficher une image détaillée de la réputation prolongée. \r\nEn outre les informations indiquées dans le cadre des détails d'origine, cela affichera la réputation manquant nécessaire pour atteindre le prochain niveau de réputation et une liste des moyens de gagner cette réputation en dressant la liste des quêtes , monstres, objets et instances qui rendement réputation pour la faction choisie."
RPH_TXT.elements.name.RPH_GainToChatBox	= RPH_TXT.gainToChat
RPH_TXT.elements.tip.RPH_GainToChatBox	= "Habilite esta opción para mostrar la reputación adquirida por todas las facciones Siempre que ganes reputación. \r\nEste difiere de la forma habitual de presentación de informes ganancia reputación, normalmente, sólo la ganancia con la facción principal está en la lista."
RPH_TXT.elements.name.RPH_NoGuildGainBox	= RPH_TXT.noGuildGain
RPH_TXT.elements.tip.RPH_NoGuildGainBox	= "Activez ce paramètre pour ne pas imprimer les messages de discuter de réputation de guilde."
RPH_TXT.elements.name.RPH_SupressOriginalGainBox	= RPH_TXT.suppressOriginalGain
RPH_TXT.elements.tip.RPH_SupressOriginalGainBox	= "Activez ce paramètre pour supprimer les messages de gain de réputation standard. \r \n Cela est utile si vous avez activé les messages détaillés de gain de faction, si vous n'obtenez pas de résultats identiques aux versions standard et étendu."
RPH_TXT.elements.name.RPH_ShowPreviewRepBox	= RPH_TXT.showPreviewRep
RPH_TXT.elements.tip.RPH_ShowPreviewRepBox	= "Activez ce paramètre pour afficher la réputation que vous pouvez gagner en remettant articles et des quêtes accomplies comme une barre grise recouverte sur la barre de réputation normale dans le cadre de la réputation."
RPH_TXT.elements.name.RPH_SwitchFactionBarBox	= RPH_TXT.switchFactionBar
RPH_TXT.elements.tip.RPH_SwitchFactionBarBox	= "Activez ce paramètre pour passer automatiquement la faction être regardé à la faction dernière que vous avez gagné la réputation d'."
RPH_TXT.elements.name.RPH_NoGuildSwitchBox	= RPH_TXT.noGuildSwitch
RPH_TXT.elements.tip.RPH_NoGuildSwitchBox	= "Activez ce paramètre pour ne pas passer la faction regardé pour des gains de réputation de guilde."
RPH_TXT.elements.name.RPH_SilentSwitchBox	= RPH_TXT.silentSwitch
RPH_TXT.elements.tip.RPH_SilentSwitchBox	= "Activez ce paramètre pour activer la barre de réputation en mode silencieux (sans message à chat)."
RPH_TXT.elements.name.RPH_GuildCapBox	= RPH_TXT.guildCap
RPH_TXT.elements.name.RPH_ChatFrameSlider	= "T'Chat cadre"
RPH_TXT.elements.tip.RPH_ChatFrameSlider	= "Sélectionnez le chat qui cadre RepHelper imprime ses messages"
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
	
	
