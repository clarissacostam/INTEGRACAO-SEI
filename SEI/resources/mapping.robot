*** Settings ***
Documentation    Contém o mapeamento dos localizadores dos elementos da Pasta Digital

*** Variables ***
#  FRAMES
${IFRAMEARVORE}              //*[@id="ifrArvore"]
${IFRAMEVISUALIZACAO}        //*[@id="ifrVisualizacao"]
${FRAME_MENU}                               //*[@id="idFrameMenu"]
${FRAME_MURAL}                              //*[@id="idFrameMural"]
${FRAME_CORPO}                              //*[@id="idFrameCorpo"]
${FRAME_SEARCH}                             //*[@id="layerFormConsulta"]
#  MENUS
${CONTROLEDEPROCESSOS}       //*[@id="main-menu"]/li[2]/a
${BTINICIARPROCESS}          //*[@id="main-menu"]/li[3]/a
${COMBO_SMO}                                //*[@id="comboModulo"]
${MODULO_SMO}                               172_1
${MENUTRIAGEM}               //*[@id="itemMenu_181_5_1"]
${UNI}                       //*[@id="selInfraUnidades"]
#  INPUTS
${ACTIVEDAY}                 //*[@class="activeDay"]
${ICONEDATE}                 //*[@id="imgDataElaboracao"]
${INPUTDATADOCSEI}           //*[@id="txtDataElaboracao"]
${GERARDOCINPUT}             //*[@id="txtDescricao"]

${USERSEI}                      admdeer
${PASSWORDSEI}                  admdeer
${IUSERSEI}                     //*[@id="txtUsuario"]
${IPASSWORDSEI}                 //*[@id="pwdSenha"]


${USERSCOP}                      siderweb
${PASSWORDSCOP}                  softplan01
${IUSERSCOP}                     //*[@id="j_username"]
${IPASSWORDSCOP}                 //*[@id="j_password"]


${TXTESPECIFICACAO}          //*[@id="txtDescricao"]
${TXTASSUNTO}                //*[@id="txtAssunto"]
${TXTONTERESSADOS}           //*[@id="txtInteressadoProcedimento"]

############## ITENS SCOP
${ASSUNTOPROCESSSCOP}        //*[@id="react-select-2-input"]
${UNILOGIN}                  //*[@id="react-select-3-input"]
${INPTIPODOPROCESS}          //*[@id="react-select-4-input"]
${INPUTPROCESSSCOP}          //*[@id="processFormated"]
${INPUTASSUNTOSCOP}          //*[@id="react-select-5-input"]
${INPUTUNIDADE}              //*[@id="react-select-6-input"]
#BOTÕES
${BTACESSAR}                 //*[@id="sbmLogin"]
${BOTAO_ANOTACAO}            xpath=//*[starts-with(@id, 'anotacaoItemWrapper')]
${PESQUISAASSUNTO}           //*[@id="imgPesquisarAssuntos"]
${PROCEDIMENTOGERAL}         //*[@id="tblTipoProcedimento"]/tbody/tr[9]/td/a[2]
${PESQUISAINTERESSADOS}      //*[@id="imgSelecionarGrupo"]
${BTPESQUISA}                //*[@id="btnPesquisar"]
${PESQUI}
${BTTRANSPORTAR}             //*[@id="btnTransportarSelecao"]
${BTFECHAR}                  //*[@id="btnFecharSelecao"]
${BTSALVAR}                  //*[@id="btnSalvar"]
${BTDOCSEI}                  //*[@id="divArvoreAcoes"]/a[1]/img
${BTEXTERNO}                 //*[@id="tblSeries"]/tbody/tr[1]/td/a[2]
${BTFILESEI}                 //*[@id="filArquivo"]
${INCLUIRDOC}                //*[@id="divComandos"]/a[8]/img
${CONCLUIRPROCESSO}          //*[@id="divArvoreAcoes"]/a[10]/img
${BTPESQUISAPROCS}           //*[@id="root"]/div/div/div/div[1]/div/form/div/div/div/div/button


############## BUTTONS Scop
${BTCADASTRAR}               //*[@type="submit"]
# SELECTS
${SCOPLOGIN}                 //*[@id="submit"]
${ORGAOLOGIN}                //*[@id="selOrgao"]
${TIPODOCUMENTO}             //*[@id="selSerie"]
${TIPOCONFERENCIA}           //*[@id="selTipoConferencia"]
# VALIDATION
${CABECALHO}                //*[@id="divInfraBarraLocalizacao"]
${ITEN1CAMPO}               //*[@id="selAssuntos"]/option[1]
${ITEN2CAMPO}               //*[@id="selAssuntos"]/option[2]
${CODPROSS}                 //*[@target="ifrVisualizacao"]/span
${PROCESSOCADAS}            //*[@id="tblProcessosGerados"]/tbody
${DIVVALIDADOCSEI}          //*[@id="divInformacao"]
# CHECKBOX
${ASSUNTO001}               //*[@id="chkInfraItem0"]
${ASSUNTO002}               //*[@id="chkInfraItem2"]
${0PROCESSSEI}              //*[@id="chkDetalhadoItem0"]
${ITEMPROCESSO-0}           //*[@id="chkGeradosItem0"]
${CHECKATRIBUIRPROCESS}     //*[@id="root"]/div/div/div/div[2]/div/div[1]/label/span[1]/span[1]/span[1]
# RADIO
${RADIOPUBLICO}           //*[@id="optPublico"]
${RADIOSELECIONADO}       //*[@id="optProtocoloAutomatico"]
${RADIODIGITALIZADO}      //*[@id="optDigitalizado"]

# LINKS
${PROCURAASSUNTO}         sei/controlador.php?acao=assunto_selecionar&tipo_selecao=2&id_object=objLupaAssuntos&infra_sistema=100000100&infra_unidade_atual=110000023&infra_hash=b732ecced859fb0d081919b413b1c0c28545fb17bc53f5b06d4cc586c9939b6d
${CONSULTAANDAMENTO}      //*[@id="divConsultarAndamento"]/a/span
${VISUALIZAPROCESS}       //*[@id="ancTipoVisualizacao"]
