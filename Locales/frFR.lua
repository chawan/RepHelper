-- Français (French)	
--------------------	--------------------
if (GetLocale() =="frFR") then	
	
-- Binding names	
BINDING_HEADER_REPHELPER	= "RepHelper"
BINDING_NAME_SHOWCONFIG	= "Afficher les options fenêtre"
BINDING_NAME_SHOWDETAILS	= "Fenêtre Montrer détail réputation"
	
RPH_TXT	= {}
RPH_TXT.Mob = {}
-- help	
RPH_TXT.help	= "Un outil pour gérer votre réputation"
RPH_TXT.command	= "Impossible d'analyser la commande"
RPH_TXT.usage	= "Usage"
RPH_TXT.helphelp	= "Voir cette aide"
RPH_TXT.helpabout	= "Voir les informations sur l'auteur"
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
RPH_TXT_STAND_LV[5]	= "Amical"
RPH_TXT_STAND_LV[6]	= "Honoré"
RPH_TXT_STAND_LV[7]	= "Révéré"
RPH_TXT_STAND_LV[8]	= "Exalté"
-- status	
RPH_TXT.status	= "statut"
RPH_TXT.disabled	= "désactivé"
RPH_TXT.enabled	= "activé"
RPH_TXT.statMobs	= "Afficher Mobs [M]"
RPH_TXT.statQuests	= "Afficher Quêtes[Q]"
RPH_TXT.statInstances	= "Afficher Donjons [D]"
RPH_TXT.statItems	= "Afficher Objets [I]"
RPH_TXT.statGeneral	= "Afficher Général [G]"
RPH_TXT.statMissing	= "Voir réputation manquante"
RPH_TXT.statDetails	= "Afficher le cadre détaillé"
RPH_TXT.statChat	= "Message de discussion détaillé"
RPH_TXT.statNoGuildChat	= "Pas de chat pour la réputation de guilde"
RPH_TXT.statSuppress	= "Suppression du message de chat original"
RPH_TXT.statPreview	= "Afficher l'aperçu dans le cadre réputation"
RPH_TXT.statSwitch	= "Basculer automatiquement la barre de réputation de faction"
RPH_TXT.statNoGuildSwitch	= "Pas de commutation pour réputation de guilde "
RPH_TXT.statSilentSwitch	= "Aucun message lors du changement de barre"
RPH_TXT.statGuildCap	= "Afficher le CAP de réputation de guilde dans le chat"
-- XML UI elements	
RPH_TXT.showQuests	= "Quêtes"
RPH_TXT.showInstances	= "Donjons"
RPH_TXT.showMobs	= "Mobs"
RPH_TXT.showItems	= "Objets"
RPH_TXT.showGeneral	= "Général"
RPH_TXT.showAll	= "Tout afficher"
RPH_TXT.showNone	= "Tout Cacher"
RPH_TXT.expand	= "Etendre"
RPH_TXT.collapse	= "Réduire"
RPH_TXT.supressNoneFaction	= "Annuler exclusions faction"
RPH_TXT.supressNoneGlobal	= "Annuler toutes exclusions"
RPH_TXT.suppressHint	= "Faites un clic droit sur une quête pour l'exclure du résumé"
RPH_TXT.clearSessionGain	= "Zéro du compteur de gain séance"
-- options dialog	
RPH_TXT.showMissing	= "Afficher la réputation manquante dans le cadre réputation"
RPH_TXT.extendDetails	= "Afficher la fenêtree de réputation détaillée"
RPH_TXT.gainToChat	= "Remplacer le message original de gain de réputation de faction par un message plus détaillé"
RPH_TXT.noGuildGain	= "Pas de message de réputation de guilde dans la fenêtre de chat"
RPH_TXT.suppressOriginalGain	= "Supprimer le message original de gain de réputation de faction"
RPH_TXT.showPreviewRep	= "Afficher la réputation qui peut être obtenue dans le cadre réputation"
RPH_TXT.switchFactionBar	= "Basculer la barre de réputation vèrs la faction lors d'un gain de réputation"
RPH_TXT.noGuildSwitch	= "Pas de barre de réputation pour la réputation de guilde"
RPH_TXT.silentSwitch	= "Aucun message de chat lors de la commutation de barre"
RPH_TXT.guildCap	= "Afficher le CAP de réputation de guilde dans le chat"
RPH_TXT.defaultChatFrame	= "Utilisation de la fenêtre de discussion par défaut"
RPH_TXT.chatFrame	= "Utilisation de la fenêtre de discussion %d (%s)"
RPH_TXT.usingDefaultChatFrame	= "Fenêtre de discussion par défaut activée"
RPH_TXT.usingChatFrame	= "Fenêtre de discussion personnalisée acivée"
RPH_TXT.EnableParagonBar = "Afficher la reputation paragon dans les barres."
-- various LUA	
RPH_TXT.options	= "options d'"
RPH_TXT.orderByStanding	= "Trier par niveau de réputation"
RPH_TXT.lookup	= "Suivre la faction"
RPH_TXT.allFactions	= "Liste de toutes les factions"
RPH_TXT.missing	= "(suivant)"
RPH_TXT.missing2	= "manquant"
RPH_TXT.heroic	= "héroïque"
RPH_TXT.normal	= "normale"
RPH_TXT.switchBar	= "Modification de la barre de réputation vèrs"
-- RPH_ShowFactions	
RPH_TXT.faction	= "Faction"
RPH_TXT.is	= "est"
RPH_TXT.withStanding	= "Avec le niveau"
RPH_TXT.needed	= "obligatoire"
RPH_TXT.mob	= "[Mob]"
RPH_TXT.limited	= "est limité à"
RPH_TXT.limitedPl	= "sont limités à"
RPH_TXT.quest	= "[Quête]"
RPH_TXT.instance	= "[Instance]"
RPH_TXT.items	= "[Objets]"
RPH_TXT.unknown	= "n'est pas connu de ce personnage"
-- mob Details	
RPH_TXT.tmob	= "trash mob"
RPH_TXT.oboss	= "autres boss"
RPH_TXT.aboss	= "Tous les boss"
RPH_TXT.pboss	= "par boss"
RPH_TXT.fclear	= "Effacement complet"
RPH_TXT.AU	= "Tous les inconnus"
RPH_TXT.AN	= "Tous les connus"
RPH_TXT.BB	= "Boucanier de la Voile Sanglante"
RPH_TXT.SSP	= "Pirate des Mers du Sud"
RPH_TXT.Wa	= "Bat-le-Désert"
RPH_TXT.VCm	= "Tout mob de la KapitalRisk "
RPH_TXT.Mob.MoshOgg_Spellcrafter = "Magicien mosh'Ogg"
RPH_TXT.Mob.BoulderfistOgre = "Ogre Rochepoing"
-- Quest Details	
RPH_TXT.cdq	= "quêtes journalières cuisine ville principale"
RPH_TXT.coq	= "quêtes journalières cuisine autre ville "
RPH_TXT.fdq	= "quêtes journalières pêche ville principale"
RPH_TXT.foq	= "quêtes journalières pêche autre ville"
RPH_TXT.ndq	= "aucune quête journalière"
RPH_TXT.deleted	= "dépassé"
RPH_TXT.Championing	= "Défendre (Tabard)"
RPH_TXT.bpqfg	= "En pourcentage du gain de faction de la quête"
    
-- items Details	
RPH_TXT.cbadge	= "Ecusson de mérite d'une autre ville"
-- instance Details	
RPH_TXT.srfd	= "Retombées de donjons"
RPH_TXT.tbd	= "A faire"
RPH_TXT.nci	= "Instances Cataclysm normales"
RPH_TXT.hci	= "Instances Cataclysm Heroïques"
-- ToBeDone general	
RPH_TXT.tfr	= "Tiller agriculture représentant"
RPH_TXT.nswts	= "Ne sais pas quand cela commence"
RPH_TXT.mnd	= "Nombre maximum de quêtes journalières"
RPH_TXT.mnds	= "Le nombre quotidien maximum est de "
	
	
	
	
	
-- ReputationDetails	
RPH_TXT.currentRep	= "Réputation actuelle"
RPH_TXT.neededRep	= "Réputation nécessaire"
RPH_TXT.missingRep	= "Réputation manquante"
RPH_TXT.repInBag	= "Réputation dans les sacs"
RPH_TXT.repInBagBank	= "Réputation dans les sacs et à la banque"
RPH_TXT.repInQuest	= "Réputation en quêtes"
RPH_TXT.factionGained	= "Acquis cette session"
RPH_TXT.noInfo	= "Aucune information disponible pour cette faction / réputation."
RPH_TXT.toExalted	= "Réputation à Exalté"
RPH_TXT.toBestFriend = "Reputation à Amical"
-- to chat	
RPH_TXT.stats	= " (Totale: %s%d, Reste: %d)"
-- config changed	
RPH_TXT.configQuestion	= "Une (nouvelle) configuration a été activée. Ceci n'a lieu qu'une fois par configuration. Il est recommandé de vérifier les options de RepHelper."
RPH_TXT.showConfig	= "Afficher Config"
RPH_TXT.later	= "Plus tard"
-- UpdateList	
RPH_TXT.mobShort	= "[M]"
RPH_TXT.questShort	= "[Q]"
RPH_TXT.instanceShort	= "[D]"
RPH_TXT.itemsShort	= "[I]"
RPH_TXT.generalShort	= "[G]"
RPH_TXT.mobHead	= "Gain de réputation en tuant ce mob"
RPH_TXT.questHead	= "Gain de réputation en validant cette quête"
RPH_TXT.instanceHead	= "Gain de réputation en faisant ce donjon"
RPH_TXT.itemsHead	= "Gain de réputation en remettant cet objet"
RPH_TXT.generalHead	= "Informations générales sur les gains de réputation"
RPH_TXT.mobTip	= "Chaque fois que vous tuez ce mob, vous gagnez de la réputation. Le faire souvent vous aidera à atteindre le niveau suivant."
RPH_TXT.questTip	= "Chaque fois que vous effectuez cette quête journalière ou répétable, vous gagnez de la réputation. Le faire souvent vous aidera à atteindre le niveau suivant.."
RPH_TXT.instanceTip	= "Chaque fois que vous faites ce donjon, vous gagnez de la réputation. Le faire souvent vous aidera à atteindre le niveau suivant.."
RPH_TXT.itemsName	= "Remise d'objet"
RPH_TXT.itemsTip	= "Chaque fois que vous remettez cet objet, vous gagnez de la réputation. Le faire souvent vous aidera à atteindre le niveau suivant.."
RPH_TXT.generalTip	= "Informatiopns à propos du gain de réputation avec une faction non forcément rattaché à une mission répétable."
RPH_TXT.allOfTheAbove	= "Résumé des %d quêtes citées ci-dessus"
RPH_TXT.questSummaryHead	= RPH_TXT.allOfTheAbove
RPH_TXT.questSummaryTip	= "Cette entrée montre un résumé des quêtes citées ci-dessus.\r\nceci n'a du sens que si toutes les quêtes mentionnées sont journalières, puisque ceci indique combien de jours seront nécessaires pour atteindre le niveau de réputation suivant si vous réalisez toutes les quêtes chaque jour."
RPH_TXT.complete	= "complète"
RPH_TXT.active	= "active"
RPH_TXT.inBag	= "Dans les sacs"
RPH_TXT.turnIns	= "Remis:"
RPH_TXT.reputation	= "Réputation:"
RPH_TXT.reputationCap	= "CAP de Réputation :"
RPH_TXT.reputationCapCurrent	= "Réputation actuelle:"
RPH_TXT.inBagBank	= "Dans les sacs et à la banque"
RPH_TXT.questCompleted	= "Quête complétée"
RPH_TXT.timesToDo	= "Nombre de fois à répéter:"
RPH_TXT.instance2	= "Instance:"
RPH_TXT.mode	= "Mode:"
RPH_TXT.timesToRun	= "Nombre de fois à répéter:"
RPH_TXT.mob2	= "Mob:"
RPH_TXT.location	= "Localisation:"
RPH_TXT.toDo	= "à faire:"
RPH_TXT.quest2	= "Quête:"
RPH_TXT.itemsRequired	= "Objets nécessaires"
RPH_TXT.general2	= "Géneral:"
RPH_TXT.maxStanding	= "Donne de la réputation jusqu'à "
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
RPH_TXT.elements.tip.RPH_OptionsButton	= "Ouvre une fenêtre pour configurer RepHelper."
RPH_TXT.elements.name.RPH_OrderByStandingCheckBox	= RPH_TXT.orderByStanding
RPH_TXT.elements.tip.RPH_OrderByStandingCheckBox	= "Si cette case n'est pas cochée, la liste de faction est affichée triée par défaut (Blizzard), regroupées par ordre logique et alphabétique. \r\n\r\n Si cette case est cochée, la liste de factions est triée par date. \r\n\r\n Pour vopir les factions | cFFFAA0A0inactive |r  , décochez cette case et allez à la fin de la liste."
	
RPH_TXT.elements.name.RPH_ShowMobsButton	= RPH_TXT.showMobs
RPH_TXT.elements.tip.RPH_ShowMobsButton	= "Cochez cette case pour voir les mobs que vous pouvez tuer pour améliorer votre réputation."
RPH_TXT.elements.name.RPH_ShowQuestButton	= RPH_TXT.showQuests
RPH_TXT.elements.tip.RPH_ShowQuestButton	= "Cochez cette case pour voir quêtes que vous pouvez faire pour améliorer votre réputation."
RPH_TXT.elements.name.RPH_ShowItemsButton	= RPH_TXT.showItems
RPH_TXT.elements.tip.RPH_ShowItemsButton	= "Cochez cette case pour voir les articles que vous pouvez remettre à améliorer votre réputation."
RPH_TXT.elements.name.RPH_ShowInstancesButton	= RPH_TXT.showInstances
RPH_TXT.elements.tip.RPH_ShowInstancesButton	= "Cochez cette case pour voir les donjons que vous pouvez exécuter pour améliorer votre réputation."
RPH_TXT.elements.name.RPH_ShowGeneralButton	= RPH_TXT.showGeneral
RPH_TXT.elements.tip.RPH_ShowGeneralButton	= "Cochez cette case pour afficher des informations générales sur l'amélioration de votre réputation."
 
RPH_TXT.elements.name.RPH_ShowAllButton	= RPH_TXT.showAll
RPH_TXT.elements.tip.RPH_ShowAllButton	= "Appuyez sur ce bouton pour sélectionner les quatre cases de gauche. \r\nCela fera apparaître les monstres, quêtes, objets et instances qui vous donnent la réputation de la faction actuellement sélectionnée."
RPH_TXT.elements.name.RPH_ShowNoneButton	= RPH_TXT.showNone
RPH_TXT.elements.tip.RPH_ShowNoneButton	= "Appuyez sur ce bouton pour désélectionner les quatre cases de gauche. \r\nCela cachera les façons de gagner de la réputation de la faction actuellement sélectionné."
 
RPH_TXT.elements.name.RPH_ExpandButton	= RPH_TXT.expand
RPH_TXT.elements.tip.RPH_ExpandButton	= "Appuyez sur ce bouton pour développer toutes les entrées de la liste. Cela va vous montrer les matériaux nécessaires à obtenir dans les quêtes de collecte."
RPH_TXT.elements.name.RPH_CollapseButton	= RPH_TXT.collapse
RPH_TXT.elements.tip.RPH_CollapseButton	= "Appuyez sur ce bouton pour réduire toutes les entrées de la liste. Cela permet de masquer les matériaux nécessaires à obtenir dans les quêtes de collecte."
RPH_TXT.elements.name.RPH_SupressNoneFactionButton	= RPH_TXT.supressNoneFaction
RPH_TXT.elements.tip.RPH_SupressNoneFactionButton	= "Appuyez sur ce bouton pour réactiver toutes les quêtes de cette faction que vous avez exclues par un clic droit sur elles."
RPH_TXT.elements.name.RPH_SupressNoneGlobalButton	= RPH_TXT.supressNoneGlobal
RPH_TXT.elements.tip.RPH_SupressNoneGlobalButton	= "Appuyez sur ce bouton pour réactiver toutes les quêtes pour toutes les factions que vous avez exclues par un clic droit sur elles."
RPH_TXT.elements.name.RPH_ClearSessionGainButton	= RPH_TXT.clearSessionGain
RPH_TXT.elements.tip.RPH_ClearSessionGainButton	= "Appuyez sur ce bouton pour réinitialiser le compteur de réputation acquise cette session."
	
RPH_TXT.elements.name.RPH_EnableMissingBox	= RPH_TXT.showMissing
RPH_TXT.elements.tip.RPH_EnableMissingBox	= "Activez ce paramètre pour ajouter des points de réputation manquantes nécessaires pour le prochain niveau de réputation derrière la position actuelle de chaque faction dans le cadre de réputation."
RPH_TXT.elements.name.RPH_ExtendDetailsBox	= RPH_TXT.extendDetails
RPH_TXT.elements.tip.RPH_ExtendDetailsBox	= "Activez ce paramètre pour afficher une fenêtre de réputation détaillée. \r\nEn plus les informations indiquées dans le cadre des détails d'origine, cela affichera la réputation manquante nécessaire pour atteindre le prochain niveau de réputation et une liste des moyens de gagner cette réputation en dressant la liste des quêtes , monstres, objets et instances qui donnent de la réputation pour la faction choisie."
RPH_TXT.elements.name.RPH_GainToChatBox	= RPH_TXT.gainToChat
RPH_TXT.elements.tip.RPH_GainToChatBox	= "Activez ce paramètre pour afficher dans la fen^tre de chat la réputation gagnée pour toutes les factions à chaque gain de réputation.\r\nCeci diffère de l'affichage standard des gains de réputation qui n'indique normalement que les gains dans les factions principales."	
RPH_TXT.elements.name.RPH_NoGuildGainBox	= RPH_TXT.noGuildGain
RPH_TXT.elements.tip.RPH_NoGuildGainBox	= "Activez ce paramètre pour ne pas afficher les messages de réputation de guilde dans la fenêtre de chat."
RPH_TXT.elements.name.RPH_SupressOriginalGainBox	= RPH_TXT.suppressOriginalGain
RPH_TXT.elements.tip.RPH_SupressOriginalGainBox	= "Activez ce paramètre pour supprimer les messages de gain de réputation standard. \r \n Cela est utile si vous avez activé les messages détaillés de gain de faction . Vous obtiendrez alors des messages différents pour les versions standard et étendu."
RPH_TXT.elements.name.RPH_ShowPreviewRepBox	= RPH_TXT.showPreviewRep
RPH_TXT.elements.tip.RPH_ShowPreviewRepBox	= "Activez ce paramètre pour afficher la réputation que vous pouvez gagner en remettant des articles ou les quêtes complétées comme une barre grise recouvrant la barre de réputation normale dans la fenêtre de réputation."
RPH_TXT.elements.name.RPH_SwitchFactionBarBox	= RPH_TXT.switchFactionBar
RPH_TXT.elements.tip.RPH_SwitchFactionBarBox	= "Activez ce paramètre pour que la faction affichée soit automatiquement la dernière dans laquelle vous avez gagné de la réputation."
RPH_TXT.elements.name.RPH_NoGuildSwitchBox	= RPH_TXT.noGuildSwitch
RPH_TXT.elements.tip.RPH_NoGuildSwitchBox	= "Activez ce paramètre pour ne pas basculer automatiquement la faction affichée vers la guilde en cas de gain de réputation de guilde."
RPH_TXT.elements.name.RPH_SilentSwitchBox	= RPH_TXT.silentSwitch
RPH_TXT.elements.tip.RPH_SilentSwitchBox	= "Activez ce paramètre pour activer la barre de réputation en mode silencieux (sans message dans la fenêtre de chat)."
RPH_TXT.elements.name.RPH_GuildCapBox	= RPH_TXT.guildCap
RPH_TXT.elements.name.RPH_ChatFrameSlider	= "Fenêtre de chat"
RPH_TXT.elements.tip.RPH_ChatFrameSlider	= "Sélectionnez la fenêtre de chat dans laquelle RepHelper affiche ses messages"
RPH_TXT.elements.name.RPH_EnableParagonBarBox = RPH_TXT.EnableParagonBar
RPH_TXT.elements.tip.RPH_EnableParagonBarBox  = "Activez cette option pour afficher votre réputation paragon actuelle dans la barre de réputation."		
	
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
	
	
