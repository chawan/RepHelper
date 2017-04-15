-- Português (Brasil)	
--------------------	--------------------
if (GetLocale() =="ptBR") then	
	
-- Binding names	
BINDING_HEADER_FACTIONIZER	= "Factionizer"
BINDING_NAME_SHOWCONFIG	= "Mostrar janela de opções"
BINDING_NAME_SHOWDETAILS	= "Mostrar janela de detalhes de reputação"
	
FIZ_TXT	= {}
FIZ_TXT.Mob = {}
-- help	
FIZ_TXT.help	= "Uma ferramenta para gerenciar sua reputação"
FIZ_TXT.command	= "Não foi possível analisar comando"
FIZ_TXT.usage	= "Uso"
FIZ_TXT.helphelp	= "Mostra este texto de ajuda"
FIZ_TXT.helpabout	= "Mostra informações sobre o autor"
FIZ_TXT.helpstatus	= "Mostra estado da configuração"
-- about	
FIZ_TXT.by	= "por"
FIZ_TXT.version	= "Versão"
FIZ_TXT.date	= "Data"
FIZ_TXT.web	= "Site"
FIZ_TXT.slash	= "Comando de barra"
FIZ_TXT_STAND_LV	= {}
FIZ_TXT_STAND_LV[0]	= "Desconhecido"
FIZ_TXT_STAND_LV[1]	= "Odiei"
FIZ_TXT_STAND_LV[2]	= "Hostil"
FIZ_TXT_STAND_LV[3]	= "Inamistoso"
FIZ_TXT_STAND_LV[4]	= "Neutro"
FIZ_TXT_STAND_LV[5]	= "Amigável"
FIZ_TXT_STAND_LV[6]	= "Homenageado"
FIZ_TXT_STAND_LV[7]	= "Reverenciado"
FIZ_TXT_STAND_LV[8]	= "Exaltado"
-- status	
FIZ_TXT.status	= "Estado"
FIZ_TXT.disabled	= "desabilitado"
FIZ_TXT.enabled	= "habilitado"
FIZ_TXT.statMobs	= "Mostrar monstros [M]"
FIZ_TXT.statQuests	= "Mostrar missões [Q]"
FIZ_TXT.statInstances	= "Mostrar Instâncias [D]"
FIZ_TXT.statItems	= "Mostrar Itens [I]"
FIZ_TXT.statGeneral	= "Mostrar Geral [G]"
FIZ_TXT.statMissing	= "Mostrar reputação restante"
FIZ_TXT.statDetails	= "Mostrar quadro de detalhes extendido"
FIZ_TXT.statChat	= "Mensagem detalhada no chat"
FIZ_TXT.statNoGuildChat	= "Sem mensagem para rep. com guilda"
FIZ_TXT.statSuppress	= "Suprimir mensagem original"
FIZ_TXT.statPreview	= "Mostrar rep. prévia no quadro de reputações"
FIZ_TXT.statSwitch	= "Trocar facção da barra de rep. automaticamente"
FIZ_TXT.statNoGuildSwitch	= "Sem troca para rep. com guilda"
FIZ_TXT.statSilentSwitch	= "Sem mensagem ao trocar barra"
FIZ_TXT.statGuildCap	= "Mostrar limite de reputação com a guilda na conversa"
-- XML UI elements	
FIZ_TXT.showQuests	= "Ver Missões"
FIZ_TXT.showInstances	= "Ver Instâncias"
FIZ_TXT.showMobs	= "Ver Monstros"
FIZ_TXT.showItems	= "Ver Itens"
FIZ_TXT.showGeneral	= "Ver Geral"
FIZ_TXT.showAll	= "Ver Tudo"
FIZ_TXT.showNone	= "Ver Nada"
FIZ_TXT.expand	= "Expandir"
FIZ_TXT.collapse	= "Recolher"
FIZ_TXT.supressNoneFaction	= "Limpar excl. para facção"
FIZ_TXT.supressNoneGlobal	= "Limpar excl. para todas"
FIZ_TXT.suppressHint	= "Clique com o direito em uma missão para excluí-la do resumo"
FIZ_TXT.clearSessionGain	= "Limpar contador de ganho da sessão"
-- options dialog	
FIZ_TXT.showMissing	= "Mostrar reputação restante no quadro de reputações"
FIZ_TXT.extendDetails	= "Mostrar quadro de detalhes de reputação estendido"
FIZ_TXT.gainToChat	= "Mensagens de reputação detalhadas na janela de conversa"
FIZ_TXT.noGuildGain	= "Não escrever na conversa para reputação de guilda"
FIZ_TXT.suppressOriginalGain	= "Suprimir mensagens originais de ganho de reputação"
FIZ_TXT.showPreviewRep	= "Mostrar reputação que a ser entregue no quadro de reputações"
FIZ_TXT.switchFactionBar	= "Mudar barra para a facção com que acabou de ganhar reputação"
FIZ_TXT.noGuildSwitch	= "Não trocar a barra de reputação para reputação de guilda"
FIZ_TXT.silentSwitch	= "Sem mensagem na janela de conversa ao trocar de barra"
FIZ_TXT.guildCap	= "Mostrar limite de reputação de guilda na janela de conversa"
FIZ_TXT.defaultChatFrame	= "Usando janela de conversa padrão"
FIZ_TXT.chatFrame	= "Usando janela de conversa %d (%s)"
FIZ_TXT.usingDefaultChatFrame	= "Usando janela de conversa padrão"
FIZ_TXT.usingChatFrame	= "Usando janela de conversa"
FIZ_TXT.EnableParagonBar = "Display paragon reputation in bars."
-- various LUA	
FIZ_TXT.options	= "Opções"
FIZ_TXT.orderByStanding	= "Ordenar por Situação"
FIZ_TXT.lookup	= "Procurando facção"
FIZ_TXT.allFactions	= "Listando todas as facções"
FIZ_TXT.missing	= "(p/ próx.)"
FIZ_TXT.missing2	= "Restante"
FIZ_TXT.heroic	= "Heroica"
FIZ_TXT.normal	= "Normal"
FIZ_TXT.switchBar	= "Mudando barra de reputação para"
-- FIZ_ShowFactions	
FIZ_TXT.faction	= "Facção"
FIZ_TXT.is	= "é"
FIZ_TXT.withStanding	= "com situação"
FIZ_TXT.needed	= "necessária"
FIZ_TXT.mob	= "[Monstro]"
FIZ_TXT.limited	= "é limitado a"
FIZ_TXT.limitedPl	= "são limitadas a"
FIZ_TXT.quest	= "[Missão]"
FIZ_TXT.instance	= "[Instância]"
FIZ_TXT.items	= "[Itens]"
FIZ_TXT.unknown	= "é desconhecida para este jogador"
-- mob Details	
FIZ_TXT.tmob	= "mobs lixo"
FIZ_TXT.oboss	= "outros chefes"
FIZ_TXT.aboss	= "Todos os Bosses"
FIZ_TXT.pboss	= "por chefe"
FIZ_TXT.fclear	= "full claro"
FIZ_TXT.AU	= "Qualquer sem nome"
FIZ_TXT.AN	= "Qualquer nome"
FIZ_TXT.BB	= "Bucaneiros da Vela Sangrenta"
FIZ_TXT.SSP	= "Pirata dos Mares do Sul"
FIZ_TXT.Wa	= "desperdício errante"
FIZ_TXT.VCm	= "Qualquer Empreendimentos S.A."
FIZ_TXT.Mob.MoshOgg_Spellcrafter = "Feitífice Mosh'Ogg"
FIZ_TXT.Mob.BoulderfistOgre = "Ogro Punho de Pedra"
-- Quest Details	
FIZ_TXT.cdq	= "Principal cidade cozinhar quests diárias"
FIZ_TXT.coq	= "Outra cidade cozinhar quests diárias"
FIZ_TXT.fdq	= "Principal cidade pescaria quests diárias"
FIZ_TXT.foq	= "Outra cidade pescaria quests diárias"
FIZ_TXT.ndq	= "não quests diárias"
FIZ_TXT.deleted	= "Desatualizado"
FIZ_TXT.Championing	= "Defender (Tabardo)"
FIZ_TXT.bpqfg	= "Por cento de ganho de facção busca"
	
-- items Details	
FIZ_TXT.cbadge	= "Comenda de Outra cidade"
-- instance Details	
FIZ_TXT.srfd	= "Rep repercussões de dungeons"
FIZ_TXT.tbd	= "ToBe Done"
FIZ_TXT.nci	= "Casos Cataclysm (normais)"
FIZ_TXT.hci	= "Casos Cataclysm (heróico)"
-- ToBeDone general	
FIZ_TXT.tfr	= "Os Lavradores agricultura rep"
FIZ_TXT.nswts	= "Não tenho certeza quando isso começa"
FIZ_TXT.mnd	= "Número máximo de quests diárias"
FIZ_TXT.mnds	= "O número máximo de dallies é "
	
	
	
	
	
-- ReputationDetails	
FIZ_TXT.currentRep	= "Reputação atual"
FIZ_TXT.neededRep	= "Reputação necessária"
FIZ_TXT.missingRep	= "Reputação restante"
FIZ_TXT.repInBag	= "Reputação em bolsas"
FIZ_TXT.repInBagBank	= "Reputação em bolsas e banco"
FIZ_TXT.repInQuest	= "Reputação em missões"
FIZ_TXT.factionGained	= "Recebida nesta sessão"
FIZ_TXT.noInfo	= "Nenhuma informação disponível para esta facção/reputação."
FIZ_TXT.toExalted	= "Reputação até exaltado"
FIZ_TXT.toBestFriend = "Reputation to best friend"
-- to chat	
FIZ_TXT.stats	= "(Total: %s%d, Rest.: %d)"
-- config changed	
FIZ_TXT.configQuestion	= "Algumas (novas) opções foram habilitadas. Isto é feito apenas uma vez para cada opção. Recomenda-se que você verifique as configurações do Factionizer."
FIZ_TXT.showConfig	= "Ver config."
FIZ_TXT.later	= "Mais tarde"
-- UpdateList	
FIZ_TXT.mobShort	= "[M]"
FIZ_TXT.questShort	= "[Q]"
FIZ_TXT.instanceShort	= "[D]"
FIZ_TXT.itemsShort	= "[I]"
FIZ_TXT.generalShort	= "[G]"
FIZ_TXT.mobHead	= "Ganhe reputação matando este monstro"
FIZ_TXT.questHead	= "Ganhe reputação ao fazer esta missão"
FIZ_TXT.instanceHead	= "Ganhe reputação participando desta instância"
FIZ_TXT.itemsHead	= "Ganhe reputação ao entregar itens"
FIZ_TXT.generalHead	= "Informações gerais sobre ganho de reputação"
FIZ_TXT.mobTip	= "Cada vez que matar este monstro, você ganha reputação. Fazer isto frequentemente ajudará você a alcançar o próximo nível."
FIZ_TXT.questTip	= "Cada vez que completar esta missão diária ou repetível, você ganha reputação. Fazer isto frequentemente ajudará você a alcançar o próximo nível."
FIZ_TXT.instanceTip	= "Cada vez que faz esta instância, você ganha reputação. Fazer isto frequentemente ajudará você a alcançar o próximo nível."
FIZ_TXT.itemsName	= "Entrega de itens"
FIZ_TXT.itemsTip	= "Cada vez que entrega os itens listados, você ganha reputação. Fazer isto frequentemente ajudará você a alcançar o próximo nível."
FIZ_TXT.generalTip	= "Esta informação é sobre ganho de reputação com uma facção não necessariamente relacionada a métodos de ganho repetitivos."
FIZ_TXT.allOfTheAbove	= "Resumo de %d missões listadas acima"
FIZ_TXT.questSummaryHead	= FIZ_TXT.allOfTheAbove
FIZ_TXT.questSummaryTip	= "Esta entrada mostra um resumo de todas as missões listadas acima.\\r\\nIsto é útil supondo que todas as missões listadas sejam diárias, já que isto irá dizer quantos dias levará para você alcançar o próximo nível de reputação se você fizer todas as missões diárias todo dia."
FIZ_TXT.complete	= "completa"
FIZ_TXT.active	= "ativa"
FIZ_TXT.inBag	= "Em bolsas"
FIZ_TXT.turnIns	= "Entregas:"
FIZ_TXT.reputation	= "Reputação:"
FIZ_TXT.reputationCap	= "Limite de reputação:"
FIZ_TXT.reputationCapCurrent	= "Reputação atual:"
FIZ_TXT.inBagBank	= "Em bolsas e banco"
FIZ_TXT.questCompleted	= "Missão completa"
FIZ_TXT.timesToDo	= "Vezes para fazer:"
FIZ_TXT.instance2	= "Instância:"
FIZ_TXT.mode	= "Modo:"
FIZ_TXT.timesToRun	= "Vezes para fazer:"
FIZ_TXT.mob2	= "Monstro:"
FIZ_TXT.location	= "Local:"
FIZ_TXT.toDo	= "Fazer:"
FIZ_TXT.quest2	= "Missão:"
FIZ_TXT.itemsRequired	= "Itens necessários"
FIZ_TXT.general2	= "Geral:"
FIZ_TXT.maxStanding	= "Concede reputação até"
-- skills	
FIZ_TXT.skillHerb	= "Herborismo"
FIZ_TXT.skillMine	= "Mineração"
FIZ_TXT.skillSkin	= "Esfolamento"
FIZ_TXT.skillAlch	= "Alquimia"
FIZ_TXT.skillBlack	= "Ferraria"
FIZ_TXT.skillEnch	= "Encantamento"
FIZ_TXT.skillEngi	= "Engenharia"
FIZ_TXT.skillIncrip	= "Escrivania"
FIZ_TXT.skillJewel	= "Joalheria"
FIZ_TXT.skillLeath	= "Couraria"
FIZ_TXT.skillTail	= "Alfaiataria"
FIZ_TXT.skillAid	= "Primeiros Socorros"
FIZ_TXT.skillArch	= "Arqueologia"
FIZ_TXT.skillCook	= "Culinária"
FIZ_TXT.skillFish	= "Pesca"
-- Tooltip	
FIZ_TXT.elements	= {}
FIZ_TXT.elements.name	= {}
FIZ_TXT.elements.tip	= {}
	
FIZ_TXT.elements.name.FIZ_OptionsButton	= FIZ_TXT.options
FIZ_TXT.elements.tip.FIZ_OptionsButton	= "Abre uma janela para configurar o Factionizer."
FIZ_TXT.elements.name.FIZ_OrderByStandingCheckBox	= FIZ_TXT.orderByStanding
FIZ_TXT.elements.tip.FIZ_OrderByStandingCheckBox	= "Se esta caixa estiver desmarcada, a lista de facções é mostrada na ordem padrão (Blizzard), agrupadas por ordem lógica e alfabética.\\r\\n\\r\\nSe esta caixa estiver marcada, a lista de facções é ordenada pela situação atual.\\r\\n\\r\\nPara ver as facções |cFFFAA0A0inativas|r, desmarque esta caixa e vá para o fim da lista."
	
FIZ_TXT.elements.name.FIZ_ShowMobsButton	= FIZ_TXT.showMobs
FIZ_TXT.elements.tip.FIZ_ShowMobsButton	= "Marque este botão para ver monstros que você pode matar para melhorar sua reputação."
FIZ_TXT.elements.name.FIZ_ShowQuestButton	= FIZ_TXT.showQuests
FIZ_TXT.elements.tip.FIZ_ShowQuestButton	= "Marque este botão para ver missões que você pode fazer para melhorar sua reputação."
FIZ_TXT.elements.name.FIZ_ShowItemsButton	= FIZ_TXT.showItems
FIZ_TXT.elements.tip.FIZ_ShowItemsButton	= "Marque este botão para ver itens que você pode entregar para melhorar sua reputação."
FIZ_TXT.elements.name.FIZ_ShowInstancesButton	= FIZ_TXT.showInstances
FIZ_TXT.elements.tip.FIZ_ShowInstancesButton	= "Marque este botão para ver instâncias que você pode participar para melhorar sua reputação."
FIZ_TXT.elements.name.FIZ_ShowGeneralButton	= FIZ_TXT.showGeneral
FIZ_TXT.elements.tip.FIZ_ShowGeneralButton	= "Marque este botão para ver informações gerais sobre como aprimorar sua reputação."
	
FIZ_TXT.elements.name.FIZ_ShowAllButton	= FIZ_TXT.showAll
FIZ_TXT.elements.tip.FIZ_ShowAllButton	= "Pressione este botão para marcar todas as caixas de seleção à esquerda.\\r\\nIsto mostrará monstros, missões, itens e instâncias que lhe concedem reputação com a facção atualmente selecionada."
FIZ_TXT.elements.name.FIZ_ShowNoneButton	= FIZ_TXT.showNone
FIZ_TXT.elements.tip.FIZ_ShowNoneButton	= "Pressione este botão para desmarcar todas as quatro caixas de seleção à esquerda.\\r\\nDesta maneira, nada será mostrado sobre como receber reputação para a facção atualmente selecionada."
	
FIZ_TXT.elements.name.FIZ_ExpandButton	= FIZ_TXT.expand
FIZ_TXT.elements.tip.FIZ_ExpandButton	= "Pressione este botão para expandir todas as entradas da lista. Isto mostrará os materiais que precisam ser entregues para missões de coleta."
FIZ_TXT.elements.name.FIZ_CollapseButton	= FIZ_TXT.collapse
FIZ_TXT.elements.tip.FIZ_CollapseButton	= "Pressione este botão para recolher todas as entradas da lista. Isto irá ocultar os materiais necessários para entregar em missões de coleta."
FIZ_TXT.elements.name.FIZ_SupressNoneFactionButton	= FIZ_TXT.supressNoneFaction
FIZ_TXT.elements.tip.FIZ_SupressNoneFactionButton	= "Pressione este botão para reexibir todas as missões desta facção que você excluiu clicando com o botão direito."
FIZ_TXT.elements.name.FIZ_SupressNoneGlobalButton	= FIZ_TXT.supressNoneGlobal
FIZ_TXT.elements.tip.FIZ_SupressNoneGlobalButton	= "Pressione este botão para reexibir todas as missões de todas as facções que você excluiu clicando com o botão direito."
FIZ_TXT.elements.name.FIZ_ClearSessionGainButton	= FIZ_TXT.clearSessionGain
FIZ_TXT.elements.tip.FIZ_ClearSessionGainButton	= "Pressione este botão para reiniciar o contador de reputação adquirida nesta sessão."
	
FIZ_TXT.elements.name.FIZ_EnableMissingBox	= FIZ_TXT.showMissing
FIZ_TXT.elements.tip.FIZ_EnableMissingBox	= "Habilite esta opção para adicionar os pontos de reputação restantes para o próximo nível de reputação após a situação atual de cada facção no quadro de reputações."
FIZ_TXT.elements.name.FIZ_ExtendDetailsBox	= FIZ_TXT.extendDetails
FIZ_TXT.elements.tip.FIZ_ExtendDetailsBox	= "Habilite esta opção para mostrar um quadro de detalhes de reputação.\\r\\nAlém das informações mostradas no quadro de detalhes original, isto mostrará a reputação restante necessária para alcançar o próximo nível de reputação e uma lista de maneiras de conseguir reputação especificando missões, monstros, itens e instâncias que concedem reputação para a facção escolhida."
FIZ_TXT.elements.name.FIZ_GainToChatBox	= FIZ_TXT.gainToChat
FIZ_TXT.elements.tip.FIZ_GainToChatBox	= "Habilite esta opção para mostrar a reputação adquirida para todas as facções sempre que você ganhar reputação.\\r\\nIsto difere da maneira padrão de relatar ganho de reputação pois, normalmente, somente o ganho com a facção principal é listado."
FIZ_TXT.elements.name.FIZ_NoGuildGainBox	= FIZ_TXT.noGuildGain
FIZ_TXT.elements.tip.FIZ_NoGuildGainBox	= "Habilite esta opção para não mostrar mensagens na conversa relativas à reputação da guilda."
FIZ_TXT.elements.name.FIZ_SupressOriginalGainBox	= FIZ_TXT.suppressOriginalGain
FIZ_TXT.elements.tip.FIZ_SupressOriginalGainBox	= "Habilite esta opção para suprimir as mensagens padrão de reputação.\\r\\nIsto faz sentido caso você tenha habilitado as mensagens de ganho de reputação detalhadas, para que não receba listagens idênticas das versões padrão e estendida."
FIZ_TXT.elements.name.FIZ_ShowPreviewRepBox	= FIZ_TXT.showPreviewRep
FIZ_TXT.elements.tip.FIZ_ShowPreviewRepBox	= "Habilite esta opção para mostrar a reputação que você pode receber entregando itens e completando missões como uma barra cinza sobreposta à barra de reputações normal no quadro de reputações."
FIZ_TXT.elements.name.FIZ_SwitchFactionBarBox	= FIZ_TXT.switchFactionBar
FIZ_TXT.elements.tip.FIZ_SwitchFactionBarBox	= "Habilite esta opção para trocar automaticamente a facção em observação para a última facção com a qual você ganhou reputação."
FIZ_TXT.elements.name.FIZ_NoGuildSwitchBox	= FIZ_TXT.noGuildSwitch
FIZ_TXT.elements.tip.FIZ_NoGuildSwitchBox	= "Habilite esta configuração para não trocar a facção observada para ganhos de reputação da guilda."
FIZ_TXT.elements.name.FIZ_SilentSwitchBox	= FIZ_TXT.silentSwitch
FIZ_TXT.elements.tip.FIZ_SilentSwitchBox	= "Habilite esta opção para trocar a barra de reputação silenciosamente (sem uma mensagem na janela de conversa)."
FIZ_TXT.elements.name.FIZ_GuildCapBox	= FIZ_TXT.guildCap
FIZ_TXT.elements.name.FIZ_ChatFrameSlider	= "Janela de conversa"
FIZ_TXT.elements.tip.FIZ_ChatFrameSlider	= "Selecione em qual janela de conversa o Factionizer exibe as mensagens."
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
	
	
