*** Settings ***
Library                             SeleniumLibrary
Library                             BuiltIn
Library                             String
Resource                            commonScop.robot

*** Variable ***
# http://deermg-des.ungp.softplan.com.br/
${linkScop}
${BROWSER}                          Headless Chrome
*** Keywords ***
Abrir navegador

    Open Browser                     about:blank                 ${BROWSER}
    Set Browser Implicit Wait        10s

Delete All Cookies
Fechar navegador
    Close Browser

DADO QUE realizo o login no SCOP.
    Capture cod processo SEI
    ACESSO Scop
    MENU TRIAGEM SCOP

QUANDO atribuo o processo
    Set Focus To Element             ${INPUTPROCESSSCOP}
    Input Text                       ${INPUTPROCESSSCOP}          ${WORK}
    Capture Page Screenshot
    ${GETPROCESSSCOP}=      Get Value         ${INPUTPROCESSSCOP}
    Set Suite Variable               ${GETPROCESSSCOP}

    # Click Button                     ${BTPESQUISAPROCS}
    # Click Element                    //*[@id="root"]/div/div/div/div[1]/div/ul/div[1]
    # Wait Until Element Is Visible    ${CHECKATRIBUIRPROCESS}
    # Click Element                    ${CHECKATRIBUIRPROCESS}
    # Click Element                    //*[@id="root"]/div/div/div/div[1]/div/ul/div[2]
    # Wait Until Element Is Visible    ${CHECKATRIBUIRPROCESS}
    # Click Element                    ${CHECKATRIBUIRPROCESS}
    # Click Element                    //*[@id="root"]/div/div/div/div[1]/div/ul/div[3]
    # Wait Until Element Is Visible    ${CHECKATRIBUIRPROCESS}
    # Click Element                    ${CHECKATRIBUIRPROCESS}
    # Click Element                    //*[@id="root"]/div/div/div/div[1]/div/ul/div[4]
    # Wait Until Element Is Visible    ${CHECKATRIBUIRPROCESS}
    # Click Element                    ${CHECKATRIBUIRPROCESS}
    Sleep    3s

E inicio a triagem doc no SCOP
    PROCESSO DO TIPO DOC FICI
    PROCESSO DO TIPO DOC DEFESA
    PROCESSO DO TIPO DOC RECURSO JARI
    PROCESSO DO TIPO DOC RECURSO CETRAN
    Capture Page Screenshot
