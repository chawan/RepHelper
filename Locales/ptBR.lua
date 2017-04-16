-- Português (Brasil)	
--------------------	--------------------
if (GetLocale() =="ptBR") then	
	
-- Binding names	
BINDING_HEADER_FACTIONIZER	= "RepHelper"
BINDING_NAME_SHOWCONFIG	= "Mostrar janela de opções"
BINDING_NAME_SHOWDETAILS	= "Mostrar janela de detalhes de reputação"
	
RPH_TXT	= {}
RPH_TXT.Mob = {}
-- help	
RPH_TXT.help	= "Uma ferramenta para gerenciar sua reputação"
RPH_TXT.command	= "Não foi possível analisar comando"
RPH_TXT.usage	= "Uso"
RPH_TXT.helphelp	= "Mostra este texto de ajuda"
RPH_TXT.helpabout	= "Mostra informações sobre o autor"
RPH_TXT.helpstatus	= "Mostra estado da configuração"
-- about	
RPH_TXT.by	= "por"
RPH_TXT.version	= "Versão"
RPH_TXT.date	= "Data"
RPH_TXT.web	= "Site"
RPH_TXT.slash	= "Comando de barra"
RPH_TXT_STAND_LV	= {}
RPH_TXT_STAND_LV[0]	= "Desconhecido"
RPH_TXT_STAND_LV[1]	= "Odiei"
RPH_TXT_STAND_LV[2]	= "Hostil"
RPH_TXT_STAND_LV[3]	= "Inamistoso"
RPH_TXT_STAND_LV[4]	= "Neutro"
RPH_TXT_STAND_LV[5]	= "Amigável"
RPH_TXT_STAND_LV[6]	= "Homenageado"
RPH_TXT_STAND_LV[7]	= "Reverenciado"
RPH_TXT_STAND_LV[8]	= "Exaltado"
-- status	
RPH_TXT.status	= "Estado"
RPH_TXT.disabled	= "desabilitado"
RPH_TXT.enabled	= "habilitado"
RPH_TXT.statMobs	= "Mostrar monstros [M]"
RPH_TXT.statQuests	= "Mostrar missões [Q]"
RPH_TXT.statInstances	= "Mostrar Instâncias [D]"
RPH_TXT.statItems	= "Mostrar Itens [I]"
RPH_TXT.statGeneral	= "Mostrar Geral [G]"
RPH_TXT.statMissing	= "Mostrar reputação restante"
RPH_TXT.statDetails	= "Mostrar quadro de detalhes extendido"
RPH_TXT.statChat	= "Mensagem detalhada no chat"
RPH_TXT.statNoGuildChat	= "Sem mensagem para rep. com guilda"
RPH_TXT.statSuppress	= "Suprimir mensagem original"
RPH_TXT.statPreview	= "Mostrar rep. prévia no quadro de reputações"
RPH_TXT.statSwitch	= "Trocar facção da barra de rep. automaticamente"
RPH_TXT.statNoGuildSwitch	= "Sem troca para rep. com guilda"
RPH_TXT.statSilentSwitch	= "Sem mensagem ao trocar barra"
RPH_TXT.statGuildCap	= "Mostrar limite de reputação com a guilda na conversa"
-- XML UI elements	
RPH_TXT.showQuests	= "Ver Missões"
RPH_TXT.showInstances	= "Ver Instâncias"
RPH_TXT.showMobs	= "Ver Monstros"
RPH_TXT.showItems	= "Ver Itens"
RPH_TXT.showGeneral	= "Ver Geral"
RPH_TXT.showAll	= "Ver Tudo"
RPH_TXT.showNone	= "Ver Nada"
RPH_TXT.expand	= "Expandir"
RPH_TXT.collapse	= "Recolher"
RPH_TXT.supressNoneFaction	= "Limpar excl. para facção"
RPH_TXT.supressNoneGlobal	= "Limpar excl. para todas"
RPH_TXT.suppressHint	= "Clique com o direito em uma missão para excluí-la do resumo"
RPH_TXT.clearSessionGain	= "Limpar contador de ganho da sessão"
-- options dialog	
RPH_TXT.showMissing	= "Mostrar reputação restante no quadro de reputações"
RPH_TXT.extendDetails	= "Mostrar quadro de detalhes de reputação estendido"
RPH_TXT.gainToChat	= "Mensagens de reputação detalhadas na janela de conversa"
RPH_TXT.noGuildGain	= "Não escrever na conversa para reputação de guilda"
RPH_TXT.suppressOriginalGain	= "Suprimir mensagens originais de ganho de reputação"
RPH_TXT.showPreviewRep	= "Mostrar reputação que a ser entregue no quadro de reputações"
RPH_TXT.switchFactionBar	= "Mudar barra para a facção com que acabou de ganhar reputação"
RPH_TXT.noGuildSwitch	= "Não trocar a barra de reputação para reputação de guilda"
RPH_TXT.silentSwitch	= "Sem mensagem na janela de conversa ao trocar de barra"
RPH_TXT.guildCap	= "Mostrar limite de reputação de guilda na janela de conversa"
RPH_TXT.defaultChatFrame	= "Usando janela de conversa padrão"
RPH_TXT.chatFrame	= "Usando janela de conversa %d (%s)"
RPH_TXT.usingDefaultChatFrame	= "Usando janela de conversa padrão"
RPH_TXT.usingChatFrame	= "Usando janela de conversa"
RPH_TXT.EnableParagonBar = "Display paragon reputation in bars."
-- various LUA	
RPH_TXT.options	= "Opções"
RPH_TXT.orderByStanding	= "Ordenar por Situação"
RPH_TXT.lookup	= "Procurando facção"
RPH_TXT.allFactions	= "Listando todas as facções"
RPH_TXT.missing	= "(p/ próx.)"
RPH_TXT.missing2	= "Restante"
RPH_TXT.heroic	= "Heroica"
RPH_TXT.normal	= "Normal"
RPH_TXT.switchBar	= "Mudando barra de reputação para"
-- RPH_ShowFactions	
RPH_TXT.faction	= "Facção"
RPH_TXT.is	= "é"
RPH_TXT.withStanding	= "com situação"
RPH_TXT.needed	= "necessária"
RPH_TXT.mob	= "[Monstro]"
RPH_TXT.limited	= "é limitado a"
RPH_TXT.limitedPl	= "são limitadas a"
RPH_TXT.quest	= "[Missão]"
RPH_TXT.instance	= "[Instância]"
RPH_TXT.items	= "[Itens]"
RPH_TXT.unknown	= "é desconhecida para este jogador"
-- mob Details	
RPH_TXT.tmob	= "mobs lixo"
RPH_TXT.oboss	= "outros chefes"
RPH_TXT.aboss	= "Todos os Bosses"
RPH_TXT.pboss	= "por chefe"
RPH_TXT.fclear	= "full claro"
RPH_TXT.AU	= "Qualquer sem nome"
RPH_TXT.AN	= "Qualquer nome"
RPH_TXT.BB	= "Bucaneiros da Vela Sangrenta"
RPH_TXT.SSP	= "Pirata dos Mares do Sul"
RPH_TXT.Wa	= "desperdício errante"
RPH_TXT.VCm	= "Qualquer Empreendimentos S.A."
RPH_TXT.Mob.MoshOgg_Spellcrafter = "Feitífice Mosh'Ogg"
RPH_TXT.Mob.BoulderfistOgre = "Ogro Punho de Pedra"
-- Quest Details	
RPH_TXT.cdq	= "Principal cidade cozinhar quests diárias"
RPH_TXT.coq	= "Outra cidade cozinhar quests diárias"
RPH_TXT.fdq	= "Principal cidade pescaria quests diárias"
RPH_TXT.foq	= "Outra cidade pescaria quests diárias"
RPH_TXT.ndq	= "não quests diárias"
RPH_TXT.deleted	= "Desatualizado"
RPH_TXT.Championing	= "Defender (Tabardo)"
RPH_TXT.bpqfg	= "Por cento de ganho de facção busca"
	
-- items Details	
RPH_TXT.cbadge	= "Comenda de Outra cidade"
-- instance Details	
RPH_TXT.srfd	= "Rep repercussões de dungeons"
RPH_TXT.tbd	= "ToBe Done"
RPH_TXT.nci	= "Casos Cataclysm (normais)"
RPH_TXT.hci	= "Casos Cataclysm (heróico)"
-- ToBeDone general	
RPH_TXT.tfr	= "Os Lavradores agricultura rep"
RPH_TXT.nswts	= "Não tenho certeza quando isso começa"
RPH_TXT.mnd	= "Número máximo de quests diárias"
RPH_TXT.mnds	= "O número máximo de dallies é "
	
	
	
	
	
-- ReputationDetails	
RPH_TXT.currentRep	= "Reputação atual"
RPH_TXT.neededRep	= "Reputação necessária"
RPH_TXT.missingRep	= "Reputação restante"
RPH_TXT.repInBag	= "Reputação em bolsas"
RPH_TXT.repInBagBank	= "Reputação em bolsas e banco"
RPH_TXT.repInQuest	= "Reputação em missões"
RPH_TXT.factionGained	= "Recebida nesta sessão"
RPH_TXT.noInfo	= "Nenhuma informação disponível para esta facção/reputação."
RPH_TXT.toExalted	= "Reputação até exaltado"
RPH_TXT.toBestFriend = "Reputation to best friend"
-- to chat	
RPH_TXT.stats	= "(Total: %s%d, Rest.: %d)"
-- config changed	
RPH_TXT.configQuestion	= "Algumas (novas) opções foram habilitadas. Isto é feito apenas uma vez para cada opção. Recomenda-se que você verifique as configurações do RepHelper."
RPH_TXT.showConfig	= "Ver config."
RPH_TXT.later	= "Mais tarde"
-- UpdateList	
RPH_TXT.mobShort	= "[M]"
RPH_TXT.questShort	= "[Q]"
RPH_TXT.instanceShort	= "[D]"
RPH_TXT.itemsShort	= "[I]"
RPH_TXT.generalShort	= "[G]"
RPH_TXT.mobHead	= "Ganhe reputação matando este monstro"
RPH_TXT.questHead	= "Ganhe reputação ao fazer esta missão"
RPH_TXT.instanceHead	= "Ganhe reputação participando desta instância"
RPH_TXT.itemsHead	= "Ganhe reputação ao entregar itens"
RPH_TXT.generalHead	= "Informações gerais sobre ganho de reputação"
RPH_TXT.mobTip	= "Cada vez que matar este monstro, você ganha reputação. Fazer isto frequentemente ajudará você a alcançar o próximo nível."
RPH_TXT.questTip	= "Cada vez que completar esta missão diária ou repetível, você ganha reputação. Fazer isto frequentemente ajudará você a alcançar o próximo nível."
RPH_TXT.instanceTip	= "Cada vez que faz esta instância, você ganha reputação. Fazer isto frequentemente ajudará você a alcançar o próximo nível."
RPH_TXT.itemsName	= "Entrega de itens"
RPH_TXT.itemsTip	= "Cada vez que entrega os itens listados, você ganha reputação. Fazer isto frequentemente ajudará você a alcançar o próximo nível."
RPH_TXT.generalTip	= "Esta informação é sobre ganho de reputação com uma facção não necessariamente relacionada a métodos de ganho repetitivos."
RPH_TXT.allOfTheAbove	= "Resumo de %d missões listadas acima"
RPH_TXT.questSummaryHead	= RPH_TXT.allOfTheAbove
RPH_TXT.questSummaryTip	= "Esta entrada mostra um resumo de todas as missões listadas acima.\\r\\nIsto é útil supondo que todas as missões listadas sejam diárias, já que isto irá dizer quantos dias levará para você alcançar o próximo nível de reputação se você RPHer todas as missões diárias todo dia."
RPH_TXT.complete	= "completa"
RPH_TXT.active	= "ativa"
RPH_TXT.inBag	= "Em bolsas"
RPH_TXT.turnIns	= "Entregas:"
RPH_TXT.reputation	= "Reputação:"
RPH_TXT.reputationCap	= "Limite de reputação:"
RPH_TXT.reputationCapCurrent	= "Reputação atual:"
RPH_TXT.inBagBank	= "Em bolsas e banco"
RPH_TXT.questCompleted	= "Missão completa"
RPH_TXT.timesToDo	= "Vezes para fazer:"
RPH_TXT.instance2	= "Instância:"
RPH_TXT.mode	= "Modo:"
RPH_TXT.timesToRun	= "Vezes para fazer:"
RPH_TXT.mob2	= "Monstro:"
RPH_TXT.location	= "Local:"
RPH_TXT.toDo	= "Fazer:"
RPH_TXT.quest2	= "Missão:"
RPH_TXT.itemsRequired	= "Itens necessários"
RPH_TXT.general2	= "Geral:"
RPH_TXT.maxStanding	= "Concede reputação até"
-- skills	
RPH_TXT.skillHerb	= "Herborismo"
RPH_TXT.skillMine	= "Mineração"
RPH_TXT.skillSkin	= "Esfolamento"
RPH_TXT.skillAlch	= "Alquimia"
RPH_TXT.skillBlack	= "Ferraria"
RPH_TXT.skillEnch	= "Encantamento"
RPH_TXT.skillEngi	= "Engenharia"
RPH_TXT.skillIncrip	= "Escrivania"
RPH_TXT.skillJewel	= "Joalheria"
RPH_TXT.skillLeath	= "Couraria"
RPH_TXT.skillTail	= "Alfaiataria"
RPH_TXT.skillAid	= "Primeiros Socorros"
RPH_TXT.skillArch	= "Arqueologia"
RPH_TXT.skillCook	= "Culinária"
RPH_TXT.skillFish	= "Pesca"
-- Tooltip	
RPH_TXT.elements	= {}
RPH_TXT.elements.name	= {}
RPH_TXT.elements.tip	= {}
	
RPH_TXT.elements.name.RPH_OptionsButton	= RPH_TXT.options
RPH_TXT.elements.tip.RPH_OptionsButton	= "Abre uma janela para configurar o RepHelper."
RPH_TXT.elements.name.RPH_OrderByStandingCheckBox	= RPH_TXT.orderByStanding
RPH_TXT.elements.tip.RPH_OrderByStandingCheckBox	= "Se esta caixa estiver desmarcada, a lista de facções é mostrada na ordem padrão (Blizzard), agrupadas por ordem lógica e alfabética.\\r\\n\\r\\nSe esta caixa estiver marcada, a lista de facções é ordenada pela situação atual.\\r\\n\\r\\nPara ver as facções |cFFFAA0A0inativas|r, desmarque esta caixa e vá para o fim da lista."
	
RPH_TXT.elements.name.RPH_ShowMobsButton	= RPH_TXT.showMobs
RPH_TXT.elements.tip.RPH_ShowMobsButton	= "Marque este botão para ver monstros que você pode matar para melhorar sua reputação."
RPH_TXT.elements.name.RPH_ShowQuestButton	= RPH_TXT.showQuests
RPH_TXT.elements.tip.RPH_ShowQuestButton	= "Marque este botão para ver missões que você pode fazer para melhorar sua reputação."
RPH_TXT.elements.name.RPH_ShowItemsButton	= RPH_TXT.showItems
RPH_TXT.elements.tip.RPH_ShowItemsButton	= "Marque este botão para ver itens que você pode entregar para melhorar sua reputação."
RPH_TXT.elements.name.RPH_ShowInstancesButton	= RPH_TXT.showInstances
RPH_TXT.elements.tip.RPH_ShowInstancesButton	= "Marque este botão para ver instâncias que você pode participar para melhorar sua reputação."
RPH_TXT.elements.name.RPH_ShowGeneralButton	= RPH_TXT.showGeneral
RPH_TXT.elements.tip.RPH_ShowGeneralButton	= "Marque este botão para ver informações gerais sobre como aprimorar sua reputação."
	
RPH_TXT.elements.name.RPH_ShowAllButton	= RPH_TXT.showAll
RPH_TXT.elements.tip.RPH_ShowAllButton	= "Pressione este botão para marcar todas as caixas de seleção à esquerda.\\r\\nIsto mostrará monstros, missões, itens e instâncias que lhe concedem reputação com a facção atualmente selecionada."
RPH_TXT.elements.name.RPH_ShowNoneButton	= RPH_TXT.showNone
RPH_TXT.elements.tip.RPH_ShowNoneButton	= "Pressione este botão para desmarcar todas as quatro caixas de seleção à esquerda.\\r\\nDesta maneira, nada será mostrado sobre como receber reputação para a facção atualmente selecionada."
	
RPH_TXT.elements.name.RPH_ExpandButton	= RPH_TXT.expand
RPH_TXT.elements.tip.RPH_ExpandButton	= "Pressione este botão para expandir todas as entradas da lista. Isto mostrará os materiais que precisam ser entregues para missões de coleta."
RPH_TXT.elements.name.RPH_CollapseButton	= RPH_TXT.collapse
RPH_TXT.elements.tip.RPH_CollapseButton	= "Pressione este botão para recolher todas as entradas da lista. Isto irá ocultar os materiais necessários para entregar em missões de coleta."
RPH_TXT.elements.name.RPH_SupressNoneFactionButton	= RPH_TXT.supressNoneFaction
RPH_TXT.elements.tip.RPH_SupressNoneFactionButton	= "Pressione este botão para reexibir todas as missões desta facção que você excluiu clicando com o botão direito."
RPH_TXT.elements.name.RPH_SupressNoneGlobalButton	= RPH_TXT.supressNoneGlobal
RPH_TXT.elements.tip.RPH_SupressNoneGlobalButton	= "Pressione este botão para reexibir todas as missões de todas as facções que você excluiu clicando com o botão direito."
RPH_TXT.elements.name.RPH_ClearSessionGainButton	= RPH_TXT.clearSessionGain
RPH_TXT.elements.tip.RPH_ClearSessionGainButton	= "Pressione este botão para reiniciar o contador de reputação adquirida nesta sessão."
	
RPH_TXT.elements.name.RPH_EnableMissingBox	= RPH_TXT.showMissing
RPH_TXT.elements.tip.RPH_EnableMissingBox	= "Habilite esta opção para adicionar os pontos de reputação restantes para o próximo nível de reputação após a situação atual de cada facção no quadro de reputações."
RPH_TXT.elements.name.RPH_ExtendDetailsBox	= RPH_TXT.extendDetails
RPH_TXT.elements.tip.RPH_ExtendDetailsBox	= "Habilite esta opção para mostrar um quadro de detalhes de reputação.\\r\\nAlém das informações mostradas no quadro de detalhes original, isto mostrará a reputação restante necessária para alcançar o próximo nível de reputação e uma lista de maneiras de conseguir reputação especificando missões, monstros, itens e instâncias que concedem reputação para a facção escolhida."
RPH_TXT.elements.name.RPH_GainToChatBox	= RPH_TXT.gainToChat
RPH_TXT.elements.tip.RPH_GainToChatBox	= "Habilite esta opção para mostrar a reputação adquirida para todas as facções sempre que você ganhar reputação.\\r\\nIsto difere da maneira padrão de relatar ganho de reputação pois, normalmente, somente o ganho com a facção principal é listado."
RPH_TXT.elements.name.RPH_NoGuildGainBox	= RPH_TXT.noGuildGain
RPH_TXT.elements.tip.RPH_NoGuildGainBox	= "Habilite esta opção para não mostrar mensagens na conversa relativas à reputação da guilda."
RPH_TXT.elements.name.RPH_SupressOriginalGainBox	= RPH_TXT.suppressOriginalGain
RPH_TXT.elements.tip.RPH_SupressOriginalGainBox	= "Habilite esta opção para suprimir as mensagens padrão de reputação.\\r\\nIsto faz sentido caso você tenha habilitado as mensagens de ganho de reputação detalhadas, para que não receba listagens idênticas das versões padrão e estendida."
RPH_TXT.elements.name.RPH_ShowPreviewRepBox	= RPH_TXT.showPreviewRep
RPH_TXT.elements.tip.RPH_ShowPreviewRepBox	= "Habilite esta opção para mostrar a reputação que você pode receber entregando itens e completando missões como uma barra cinza sobreposta à barra de reputações normal no quadro de reputações."
RPH_TXT.elements.name.RPH_SwitchFactionBarBox	= RPH_TXT.switchFactionBar
RPH_TXT.elements.tip.RPH_SwitchFactionBarBox	= "Habilite esta opção para trocar automaticamente a facção em observação para a última facção com a qual você ganhou reputação."
RPH_TXT.elements.name.RPH_NoGuildSwitchBox	= RPH_TXT.noGuildSwitch
RPH_TXT.elements.tip.RPH_NoGuildSwitchBox	= "Habilite esta configuração para não trocar a facção observada para ganhos de reputação da guilda."
RPH_TXT.elements.name.RPH_SilentSwitchBox	= RPH_TXT.silentSwitch
RPH_TXT.elements.tip.RPH_SilentSwitchBox	= "Habilite esta opção para trocar a barra de reputação silenciosamente (sem uma mensagem na janela de conversa)."
RPH_TXT.elements.name.RPH_GuildCapBox	= RPH_TXT.guildCap
RPH_TXT.elements.name.RPH_ChatFrameSlider	= "Janela de conversa"
RPH_TXT.elements.tip.RPH_ChatFrameSlider	= "Selecione em qual janela de conversa o RepHelper exibe as mensagens."
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
	
	
