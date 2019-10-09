*** Settings ***
Documentation    Contém o mapeamento dos localizadores dos elementos da Pasta Digital

*** Variables ***
#  MENUS
${CONTROLEDEPROCESSOS}      //*[@id="main-menu"]/li[2]/a
${BTINICIARPROCESS}          //*[@id="main-menu"]/li[3]/a
#  INPUTS

${USER}                     admdeer
${PASSWORD}                 admdeer
${IUSER}                     //*[@id="txtUsuario"]
${IPASSWORD}                 //*[@id="pwdSenha"]
${TXTESPECIFICACAO}          //*[@id="txtDescricao"]
${TXTASSUNTO}                //*[@id="txtAssunto"]
${TXTONTERESSADOS}           //*[@id="txtInteressadoProcedimento"]
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

# SELECTS
${ORGAOLOGIN}                //*[@id="selOrgao"]

# VALIDATION
${CABECALHO}                //*[@id="divInfraBarraLocalizacao"]
${ITEN1CAMPO}               //*[@id="selAssuntos"]/option[1]
${ITEN2CAMPO}               //*[@id="selAssuntos"]/option[2]
${CODPROSS}                 //*[@id="span35594"]
# CHECKBOX
${ASSUNTO001}               //*[@id="chkInfraItem0"]
${ASSUNTO002}               //*[@id="chkInfraItem2"]



# RADIO
${RADIOPUBLICO}           //*[@id="optPublico"]
${RADIOSELECIONADO}       //*[@id="optProtocoloAutomatico"]


# LINKS
${PROCURAASSUNTO}         sei/controlador.php?acao=assunto_selecionar&tipo_selecao=2&id_object=objLupaAssuntos&infra_sistema=100000100&infra_unidade_atual=110000023&infra_hash=b732ecced859fb0d081919b413b1c0c28545fb17bc53f5b06d4cc586c9939b6d
