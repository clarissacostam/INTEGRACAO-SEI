*** Settings ***
Resource          ../resources/commonSei.robot
Resource          ../resources/commonScop.robot
Resource          ../resources/processo.robot
Resource          ../resources/triagemDoc.robot
Suite Setup       triagemDoc.Abrir Navegador
# Suite Teardown    Fechar navegador


*** Test Cases ***
LOGIN X CRIANDO UM PROCESSO NO SEI.
    [Documentation]     Criando dados do processo para importar os mesmos e realizar a triagem deles no SCOP.
        DADO QUE realizo o login e crio processo no sei
    QUANDO inicio um processo no sei
        E seleciono o assunto do processo
        E seleciono o Interessados do processo
        E atribuo o numero do processo "@{CODPROCESSO}"
        E realizo o upload doc externo "@{CODPROCESSO}"
        E realizo o segundo upload doc externo "@{CODPROCESSO}"
        E realizo o terceiro upload doc externo "@{CODPROCESSO}"
        E realizo o quarto upload doc externo "@{CODPROCESSO}"
    ENTAO valido o doc importado no processo

INTEGRANDO PROCESSO NO SCOP
    [Documentation]     Validação da integração cadastrados no SEI p/ SCOP.
        DADO QUE realizo o login no SCOP.
    QUANDO atribuo o processo
        E inicio a triagem doc no SCOP


    # QUANDO o sistema carrega o processo
        # E verifico o processo @{CODPROCESSO}

    # QUANDO o sistema carrega o processo
    #     E libero todos os documentos aguardando liberação
    # ENTÃO o(s) documento(s) sigiloso(s) é(são) exibido(s):
    #     1. Doc. principal com mov.: "Despacho"; Data: "DATA_ATUAL"; Ícone: "Gabinete"
    #         Mov. relacionada ao doc. "1": "Proferido despacho de mero expediente"; Data: "DATA_ATUAL"
    #     2. Doc. principal com mov.: "Despacho"; Data: "DATA_ATUAL"; Parte(s): "Manoel, Thales"; Ícone: "Gabinete"
    #         Mov. relacionada ao doc. "2": "Proferido despacho de mero expediente"; Data: "DATA_ATUAL"
    #     E o(s) documento(s) não liberado(s) é(são) exibido(s):
    #         1. Doc. secundário: "Ofício"; Parte(s): "Manoel"; Ícone: "Cartório"
    #         2. Doc. secundário: "Ofício"; Parte(s): "Manoel"; Ícone: "Cartório"
    #         3. Doc. secundário: "Ofício"; Parte(s): "Thales"; Ícone: "Cartório"
