*** Settings ***
Library                                     SeleniumLibrary
Resource                                    mapping.robot


*** Keywords ***

ACESSO SEI
    Go To                 https://homologasei.prodemge.gov.br/
    Maximize Browser Window
    Input Text            ${IUSERSEI}              ${USERSEI}
    Input Password        ${IPASSWORDSEI}          ${PASSWORDSEI}
    Select From List By Value        ${ORGAOLOGIN}          2
    Sleep                 3s
    Click Button          ${BTACESSAR}
    Capture Page Screenshot
    Select From List By Value           ${UNI}          110000023
    Element Should Contain              //*[@id="selInfraUnidades"]           DEER/PROTOCOLO-teste
    Sleep    2s

E VERIFICO O PROCESSO @{CODPROCESSO}
    ACESSO SEI
    Click Element                           ${CONTROLEDEPROCESSOS}
    Page Should Contain                     Gerados
    #
    # Execute Javascript                      document.getElementsByClassName("infraTrClara")[0].id;
    # ${CODPROCESSO}=     Get Text            //*[@class="processoVisualizado processoVisitado"]
    # Log To Console                          ${CODPROCESSO}
    # Set Global Variable                     ${CODPROCESSO}
    Wait Until Element Is Visible           ${VISUALIZAPROCESS}
    Set Focus To Element                    ${ITEMPROCESSO-0}
    Select Checkbox                         ${ITEMPROCESSO-0}
    Wait Until Element Is Visible           ${INCLUIRDOC}
    Click Image                             ${INCLUIRDOC}
    # Run Keyword And Return If               "@{CODPROCESSO}"="true"             E realizo o upload documento no processo "@{CODPROCESSO}"
    # Click Link                              ${VISUALIZAPROCESS}
