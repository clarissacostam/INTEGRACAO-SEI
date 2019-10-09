*** Settings ***
Library                             SeleniumLibrary
Resource                            commonSei.robot

*** Variable ***
${linkSei}
${BROWSER}                          Chrome
*** Keywords ***
Abrir navegador

    Open Browser                     about:blank                 ${BROWSER}
    Set Browser Implicit Wait        10s

    Set Window Size	                 1680                            900

Delete All Cookies
Fechar navegador
    Close Browser

DADO QUE realizo o login e crio processo no sei
    ACESSO SEI
    Sleep                                   3s

QUANDO inicio um processo no sei
    Wait Until Element Is Visible           ${BTINICIARPROCESS}
    Element Text Should Be                  ${BTINICIARPROCESS}         Iniciar Processo
    Click Element                           ${BTINICIARPROCESS}
    Sleep                                   4s
    Element Text Should Be                  ${PROCEDIMENTOGERAL}        Corregedoria: Procedimento Geral
    Click Element                           ${PROCEDIMENTOGERAL}
    Page Should Contain                     Iniciar Processo
    Radio Button Should Be Set To           rdoProtocolo                A
    Input Text                              ${TXTESPECIFICACAO}         TESTES ROBOT SEI IMPORTAÇÃO PROCESSOS SCOP
    Sleep                                   5s

E seleciono o assunto do processo
    Click Image                             ${PESQUISAASSUNTO}
    Sleep                                   5s
    Execute Javascript                      document.querySelector("#divInfraModalFundo").click()
    Select Window                           SEI - Selecionar Assuntos
    Sleep                                   2s
    Capture Page Screenshot
    Get Location
    Click Element                           ${ASSUNTO001}
    Click Element                           ${ASSUNTO002}
    Checkbox Should Be Selected             ${ASSUNTO001}
    Checkbox Should Be Selected             ${ASSUNTO002}
    Click Button                            ${BTTRANSPORTAR}
    Click Button                            ${BTFECHAR}
    Sleep    2s
    Select Window                           SEI - Iniciar Processo
    Select Radio Button                     rdoNivelAcesso          0
    Set Focus To Element                    //*[@id="selAssuntos"]/option
    Element Should Be Visible               ${ITEN1CAMPO}
    Element Should Be Visible               ${ITEN2CAMPO}
    Capture Page Screenshot

E seleciono o Interessados do processo
    Click Image                             ${PESQUISAINTERESSADOS}
    Sleep                                   5s
    Execute Javascript                      document.querySelector("#divInfraModalFundo").click()
    Select Window                           SEI - Selecionar Contatos
    Sleep                                   2s
    Capture Page Screenshot
    Get Location
    Click Element                           ${ASSUNTO001}
    Click Element                           ${ASSUNTO002}
    Checkbox Should Be Selected             ${ASSUNTO001}
    Checkbox Should Be Selected             ${ASSUNTO002}
    Sleep    2s
    Click Button                            ${BTTRANSPORTAR}
    Click Button                            ${BTFECHAR}
    Sleep    2s
    Select Window                           SEI - Iniciar Processo
    Select Radio Button                     rdoNivelAcesso          0
    Set Focus To Element                    //*[@id="selAssuntos"]/option
    Element Should Be Visible               ${ITEN1CAMPO}
    Element Should Be Visible               ${ITEN2CAMPO}
    Capture Page Screenshot
    Click Button                            //*[@id="btnSalvar"]
    Capture Page Screenshot

E atribuo o numero do processo @{CODPROCESSO}
    Sleep    2s
    Wait Until Element Is Visible           ${CODPROSS}
    @{CODPROCESSO}=     Get Value           ${CODPROSS}
    Log    @{CODPROCESSO}

E realizo o upload de arquivos dentro do processo @{CODPROCESSO}
