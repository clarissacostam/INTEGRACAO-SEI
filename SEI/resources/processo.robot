*** Settings ***
Library                             SeleniumLibrary
Library                             DateTime
Resource                            commonSei.robot

*** Variable ***
# https://homologasei.prodemge.gov.br/
${linkSei}                          https://homologasei.prodemge.gov.br/
${PATHUPLOAD}                       ./INTEGRAÇÃOSEI/SEI/resources/Uploads/arquivoSei/
${BROWSER}                          Headless Chrome
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
    Wait Until Element Is Visible           ${PROCEDIMENTOGERAL}
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
    Click Button                            ${BTSALVAR}
    Capture Page Screenshot

E atribuo o numero do processo "@{CODPROCESSO}"
    Sleep    5s
    Select Frame                            ${IFRAMEARVORE}
    Wait Until Element Is Visible           ${CONSULTAANDAMENTO}
    Click Element                           ${CONSULTAANDAMENTO}
    Set Focus To Element                    ${CODPROSS}
    Wait Until Element Is Visible           ${CODPROSS}
    ${CODPROCESSO}=     Get Text            ${CODPROSS}
    Log To Console                          ${CODPROCESSO}
    Set Global Variable                     ${CODPROCESSO}
    Set Suite Variable                      ${CODPROCESSO}
    Capture Page Screenshot
    Sleep    2s
    Set Focus To Element                    ${CODPROSS}
    Click Element                           ${CODPROSS}
    Unselect Frame
    Sleep    2s

E realizo o upload doc externo "@{CODPROCESSO}"
    Select Frame                            ${IFRAMEVISUALIZACAO}
    Wait Until Element Is Visible           ${BTDOCSEI}
    Click Image                             ${BTDOCSEI}
    Sleep    2s
    Click Element                           ${BTEXTERNO}
    Wait Until Element Is Visible           ${TIPODOCUMENTO}
    Select From List By Value               ${TIPODOCUMENTO}            294
    Get Current Date
    Click Image                             ${ICONEDATE}
    Capture Page Screenshot
    Wait Until Element Is Visible           //*[@class="activeDay"]
    Click Element                           //*[@class="activeDay"]
    Set Focus To Element                    ${RADIOPUBLICO}
    Capture Page Screenshot
    Select Radio Button                     rdoNivelAcesso          0
    Sleep    2s
    Wait Until Element Is Visible           ${BTFILESEI}
    Choose File                             ${BTFILESEI}                  ${CURDIR}/Uploads/arquivoSei/relatorioTESTE1.pdf
    Select Radio Button                     rdoFormato                    D
    Radio Button Should Be Set To           rdoFormato                    D
    Select From List By Value               ${TIPOCONFERENCIA}            4
    Capture Page Screenshot
    Click Button                            ${BTSALVAR}
    Sleep    5s
    Capture Page Screenshot

E realizo o segundo upload doc externo "@{CODPROCESSO}"
    Unselect Frame
    Select Frame                            ${IFRAMEARVORE}
    Sleep    2s
    Page Should Contain Element             //*[@class="infraArvore"]
    Wait Until Element Is Visible           //*[@target="ifrVisualizacao"]/span
    Click Element                           //*[@target="ifrVisualizacao"]/span
    Unselect Frame
    Select Frame                            ${IFRAMEVISUALIZACAO}
    Sleep    2s
    Wait Until Element Is Visible           ${BTDOCSEI}
    Click Image                             ${BTDOCSEI}
    Sleep    2s
    Click Element                           ${BTEXTERNO}
    Wait Until Element Is Visible           ${TIPODOCUMENTO}
    Select From List By Value               ${TIPODOCUMENTO}            294
    Get Current Date
    Click Image                             ${ICONEDATE}
    Capture Page Screenshot
    Wait Until Element Is Visible           //*[@class="activeDay"]
    Click Element                           //*[@class="activeDay"]
    Set Focus To Element                    ${RADIOPUBLICO}
    Capture Page Screenshot
    Select Radio Button                     rdoNivelAcesso          0
    Sleep    2s
    Wait Until Element Is Visible           ${BTFILESEI}
    Choose File                             ${BTFILESEI}                  ${CURDIR}/Uploads/arquivoSei/relatorioTESTE2.pdf
    Select Radio Button                     rdoFormato                    D
    Radio Button Should Be Set To           rdoFormato                    D
    Select From List By Value               ${TIPOCONFERENCIA}            4
    Capture Page Screenshot
    Click Button                            ${BTSALVAR}
    Sleep    5s
    Capture Page Screenshot

E realizo o terceiro upload doc externo "@{CODPROCESSO}"
    Unselect Frame
    Select Frame                            ${IFRAMEARVORE}
    Sleep    2s
    Page Should Contain Element             //*[@class="infraArvore"]
    Wait Until Element Is Visible           //*[@target="ifrVisualizacao"]/span
    Click Element                           //*[@target="ifrVisualizacao"]/span
    Unselect Frame
    Select Frame                            ${IFRAMEVISUALIZACAO}
    Sleep    2s
    Wait Until Element Is Visible           ${BTDOCSEI}
    Click Image                             ${BTDOCSEI}
    Sleep    2s
    Click Element                           ${BTEXTERNO}
    Wait Until Element Is Visible           ${TIPODOCUMENTO}
    Select From List By Value               ${TIPODOCUMENTO}            294
    Get Current Date
    Click Image                             ${ICONEDATE}
    Capture Page Screenshot
    Wait Until Element Is Visible           //*[@class="activeDay"]
    Click Element                           //*[@class="activeDay"]
    Set Focus To Element                    ${RADIOPUBLICO}
    Capture Page Screenshot
    Select Radio Button                     rdoNivelAcesso          0
    Sleep    2s
    Wait Until Element Is Visible           ${BTFILESEI}
    Choose File                             ${BTFILESEI}                  ${CURDIR}/Uploads/arquivoSei/relatorioTESTE2.pdf
    Select Radio Button                     rdoFormato                    D
    Radio Button Should Be Set To           rdoFormato                    D
    Select From List By Value               ${TIPOCONFERENCIA}            4
    Capture Page Screenshot
    Click Button                            ${BTSALVAR}
    Sleep    5s
    Capture Page Screenshot

E realizo o quarto upload doc externo "@{CODPROCESSO}"
    Unselect Frame
    Select Frame                            ${IFRAMEARVORE}
    Sleep    2s
    Page Should Contain Element             //*[@class="infraArvore"]
    Wait Until Element Is Visible           //*[@target="ifrVisualizacao"]/span
    Click Element                           //*[@target="ifrVisualizacao"]/span
    Unselect Frame
    Select Frame                            ${IFRAMEVISUALIZACAO}
    Sleep    2s
    Wait Until Element Is Visible           ${BTDOCSEI}
    Click Image                             ${BTDOCSEI}
    Sleep    2s
    Click Element                           ${BTEXTERNO}
    Wait Until Element Is Visible           ${TIPODOCUMENTO}
    Select From List By Value               ${TIPODOCUMENTO}            294
    Get Current Date
    Click Image                             ${ICONEDATE}
    Capture Page Screenshot
    Wait Until Element Is Visible           //*[@class="activeDay"]
    Click Element                           //*[@class="activeDay"]
    Set Focus To Element                    ${RADIOPUBLICO}
    Capture Page Screenshot
    Select Radio Button                     rdoNivelAcesso          0
    Sleep    2s
    Wait Until Element Is Visible           ${BTFILESEI}
    Choose File                             ${BTFILESEI}                  ${CURDIR}/Uploads/arquivoSei/relatorioTESTE2.pdf
    Select Radio Button                     rdoFormato                    D
    Radio Button Should Be Set To           rdoFormato                    D
    Select From List By Value               ${TIPOCONFERENCIA}            4
    Capture Page Screenshot
    Click Button                            ${BTSALVAR}
    Sleep    5s
    Capture Page Screenshot

ENTAO valido o doc importado no processo
    Sleep    4s
    Unselect Frame
    Select Frame                            ${IFRAMEVISUALIZACAO}
    Sleep    2s
    Wait Until Element Is Visible           ${DIVVALIDADOCSEI}
    Element Should Contain                  ${DIVVALIDADOCSEI}            Clique aqui para visualizar o conteúdo deste documento em uma nova janela.
    Click Image                             ${CONCLUIRPROCESSO}
    Sleep    2s

    Go To                                   ${linkSei}
    Wait Until Element Is Visible           ${CONTROLEDEPROCESSOS}
    Click Element                           ${CONTROLEDEPROCESSOS}
    Page Should Contain                     Gerados
    Element Text Should Not Be              ${PROCESSOCADAS}             ${CODPROCESSO}
    ${GETVALUEPROCESS}=        Get Value    //*[@id="chkGeradosItem0"]
    Set Global Variable                     ${GETVALUEPROCESS}
    Log To Console                          ${GETVALUEPROCESS}
