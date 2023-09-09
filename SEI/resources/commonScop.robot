*** Settings ***
Library                                     SeleniumLibrary
Resource                                    mapping.robot
Resource                                    commonSei.robot
Library                                     BuiltIn
Library                                     String

*** Keywords ***

SLEEP_2m
    Sleep           120s

SLEEP_3m
    Sleep           160s

ACESSO Scop
    Go To                 http://deermg-des.ungp.softplan.com.br/sgiv/
    Maximize Browser Window
    Input Text            ${IUSERSCOP}              ${USERSCOP}
    Input Password        ${IPASSWORDSCOP}          ${PASSWORDSCOP}
    Sleep                 2s
    Click Button          ${SCOPLOGIN}
    Capture Page Screenshot

MENU TRIAGEM SCOP
    Sleep                            3s
    Select Frame                     ${FRAME_MENU}
    Select From List By Value        ${COMBO_SMO}    181_5
    Wait Until Element Is Visible    ${MENUTRIAGEM}
    Click Element                    ${MENUTRIAGEM}
    Sleep    2s
    Unselect Frame
    Select Frame                     ${FRAME_MURAL}
    Sleep    2s

PROCESSO DO TIPO DOC FICI
    Sleep    5s
    Click Button                     ${BTPESQUISAPROCS}
    Click Element                    //*[@id="root"]/div/div/div/div[1]/div/ul/div[1]
    Wait Until Element Is Visible    ${CHECKATRIBUIRPROCESS}
    Click Element                    ${CHECKATRIBUIRPROCESS}
    Sleep    2s
    Click Element                    //*[@id="root"]/div/div/div/div[1]/div/ul/div[1]
    Click Element                    //*[@title="Novo processo"]
    Sleep    3s
    Select Window                    Integração SEI
    Sleep    2s
    Input Text                       ${UNILOGIN}                    DEER/PROTOCOLO-teste
    Press Key                        ${UNILOGIN}                    \\13
    Sleep    2s
    Input Text                       ${ASSUNTOPROCESSSCOP}          FICI
    Press Key                        ${ASSUNTOPROCESSSCOP}          \\13
    Sleep    2s
    Input Text                       ${INPTIPODOPROCESS}            Acesso à Informação:
    Press Key                        ${INPTIPODOPROCESS}            \\13
    Sleep    2s
    Input Text                       ${INPUTASSUNTOSCOP}            Comunicação interna
    Press Key                        ${INPUTASSUNTOSCOP}            \\13
    Sleep    2s
    Input Text                       ${INPUTUNIDADE}                DEER/PROTOCOLO-teste
    Press Key                        ${INPUTUNIDADE}                \\13
    Wait Until Element Is Visible    ${BTCADASTRAR}
    Click Button                     ${BTCADASTRAR}
    Sleep    12s
    Page Should Contain              Etapa Realizada com Sucesso!
    Sleep    8s
    Capture Page Screenshot

PROCESSO DO TIPO DOC DEFESA
    Sleep    5s
    Click Button                     ${BTPESQUISAPROCS}
    Click Element                    //*[@id="root"]/div/div/div/div[1]/div/ul/div[2]
    Wait Until Element Is Visible    ${CHECKATRIBUIRPROCESS}
    Click Element                    ${CHECKATRIBUIRPROCESS}
    Sleep    2s
    Click Element                    //*[@id="root"]/div/div/div/div[1]/div/ul/div[2]
    Click Element                    //*[@title="Novo processo"]
    Sleep    3s
    Select Window                    Integração SEI
    Sleep    2s
    Input Text                       ${UNILOGIN}                    DEER/PROTOCOLO-teste
    Press Key                        ${UNILOGIN}                    \\13
    Sleep    2s
    Input Text                       ${ASSUNTOPROCESSSCOP}          Defesa
    Press Key                        ${ASSUNTOPROCESSSCOP}          \\13
    Sleep    2s
    Input Text                       ${INPTIPODOPROCESS}            Acesso à Informação:
    Press Key                        ${INPTIPODOPROCESS}            \\13
    Sleep    2s
    Input Text                       ${INPUTASSUNTOSCOP}            Comunicação interna
    Press Key                        ${INPUTASSUNTOSCOP}            \\13
    Sleep    2s
    Input Text                       ${INPUTUNIDADE}                DEER/PROTOCOLO-teste
    Press Key                        ${INPUTUNIDADE}                \\13
    Wait Until Element Is Visible    ${BTCADASTRAR}
    Click Button                     ${BTCADASTRAR}
    Sleep    12s
    Page Should Contain              Etapa Realizada com Sucesso!
    Press Key                        ${UNILOGIN}                    \\13
    Sleep    15s
    Capture Page Screenshot

PROCESSO DO TIPO DOC RECURSO JARI
    Sleep    5s
    Click Button                     ${BTPESQUISAPROCS}
    Click Element                    //*[@id="root"]/div/div/div/div[1]/div/ul/div[3]
    Wait Until Element Is Visible    ${CHECKATRIBUIRPROCESS}
    Click Element                    ${CHECKATRIBUIRPROCESS}
    Sleep    2s
    Click Element                    //*[@id="root"]/div/div/div/div[1]/div/ul/div[3]
    Click Element                    //*[@title="Novo processo"]
    Sleep    3s
    Select Window                    Integração SEI
    Sleep    2s
    Input Text                       ${UNILOGIN}                    DEER/PROTOCOLO-teste
    Press Key                        ${UNILOGIN}                    \\13
    Sleep    2s
    Input Text                       ${ASSUNTOPROCESSSCOP}          Recurso JARI
    Press Key                        ${ASSUNTOPROCESSSCOP}          \\13
    Sleep    2s
    Input Text                       ${INPTIPODOPROCESS}            Acesso à Informação:
    Press Key                        ${INPTIPODOPROCESS}            \\13
    Sleep    2s
    Input Text                       ${INPUTASSUNTOSCOP}            Comunicação interna
    Press Key                        ${INPUTASSUNTOSCOP}            \\13
    Sleep    2s
    Input Text                       ${INPUTUNIDADE}                DEER/PROTOCOLO-teste
    Press Key                        ${INPUTUNIDADE}                \\13
    Wait Until Element Is Visible    ${BTCADASTRAR}
    Click Button                     ${BTCADASTRAR}
    Sleep    12s
    Page Should Contain              Etapa Realizada com Sucesso!
    Sleep    8s
    Capture Page Screenshot

PROCESSO DO TIPO DOC RECURSO CETRAN
    Sleep    5s
    Click Button                     ${BTPESQUISAPROCS}
    Click Element                    //*[@id="root"]/div/div/div/div[1]/div/ul/div[4]
    Wait Until Element Is Visible    ${CHECKATRIBUIRPROCESS}
    Click Element                    ${CHECKATRIBUIRPROCESS}
    Sleep    2s
    Click Element                    //*[@id="root"]/div/div/div/div[1]/div/ul/div[4]
    Click Element                    //*[@title="Novo processo"]
    Sleep    3s
    Select Window                    Integração SEI
    Sleep    2s
    Input Text                       ${UNILOGIN}                    DEER/PROTOCOLO-teste
    Press Key                        ${UNILOGIN}                    \\13
    Sleep    2s
    Input Text                       ${ASSUNTOPROCESSSCOP}          Recurso CETRAN
    Press Key                        ${ASSUNTOPROCESSSCOP}          \\13
    Sleep    2s
    Input Text                       ${INPTIPODOPROCESS}            Acesso à Informação:
    Press Key                        ${INPTIPODOPROCESS}            \\13
    Sleep    2s
    Input Text                       ${INPUTASSUNTOSCOP}            Comunicação interna
    Press Key                        ${INPUTASSUNTOSCOP}            \\13
    Sleep    2s
    Input Text                       ${INPUTUNIDADE}                DEER/PROTOCOLO-teste
    Press Key                        ${INPUTUNIDADE}                \\13
    Wait Until Element Is Visible    ${BTCADASTRAR}
    Click Button                     ${BTCADASTRAR}
    Sleep    12s
    Page Should Contain              Etapa Realizada com Sucesso!
    Sleep    8s
    Capture Page Screenshot

Capture cod processo SEI
    ACESSO SEI
    SLEEP_3m
    Input Text                       //*[@id="txtPesquisaRapida"]                test
    Press Key                        //*[@id="txtPesquisaRapida"]                \\13
    Sleep    4s
    Wait Until Element Is Visible    //*[@id="divOrgao"]/div/button
    Click Element                    //*[@id="divOrgao"]/div/button
    Sleep    2s
    Click Element                    //*[@id="optProcessos"]
    Sleep    4s
    Click Element                    //*[@id="divOrgao"]/div/button/span
    Wait Until Element Is Visible    //*[@id="divOrgao"]/div/div/ul/li[10]/label/input
    Click Element                    //*[@id="divOrgao"]/div/div/ul/li[10]/label/input
    sleep    2s
    Element Should Contain           //*[@id="divOrgao"]/div/button/span        DEER
    # Click Element                    //*[@id="chkSinDocumentosGerados"]
    # Click Element                    //*[@id="chkSinDocumentosRecebidos"]
    # Click Element                    //*[@name="rdoPesquisarEm"]
    Select Radio Button              rdoPesquisarEm      P
    Click Element                    //*[@id="sbmPesquisar"]
    Wait Until Element Is Visible    //*[@id="conteudo"]
    Capture Page Screenshot
    Sleep       2s
    Wait Until Element Is Visible    //*[@id="conteudo"]/table[1]/tbody/tr[1]/td[1]/a[1]
    Double Click Element             //*[@id="conteudo"]/table[1]/tbody/tr[1]/td[1]/a[1]
    Sleep    5s
    Select Window                    SEI - Processo
    Capture Page Screenshot
    Wait Until Element Is Visible    ${IFRAMEARVORE}
    Select Frame                     ${IFRAMEARVORE}
    Wait Until Element Is Visible    ${CODPROSS}
    ${WORK}=            Get Text     ${CODPROSS}
    Log To Console                           ${WORK}
    Set Global Variable                      ${WORK}


Defesa de Auto de Infração Nº 0005.01.0001362/2019-95


    ${work}=        Get Text         //*[@id="conteudo"]/table[1]/tbody/tr[1]/td[1]
    Set Global Variable              ${work}
    ${rest}    ${last} =	         Split String From Right              ${work}[-1]       max_split=-1
    ${rest} =	           Split String	     	   ${work}.i         max_split=-1
    Sleep    3s
    ${str} =	           Remove String    ${rest}    Defesa de Auto de Infração Nº 0005.01.0001362/2019-95         Defesa de Auto de Infração Nº
    Set Variable                     ${rest}
    
    Log                              ${work}
    Log                              ${rest}
    Go Back
