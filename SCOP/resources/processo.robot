*** Settings ***
Library                             SeleniumLibrary
Resource                            commonSei.robot

*** Variable ***
${linkSei}
${BROWSER}                          Headless Chrome
*** Keywords ***
Abrir navegador

    Open Browser                     about:blank                 ${BROWSER}
    Set Browser Implicit Wait        10s

Delete All Cookies
Fechar navegador
    Close Browser

DADO QUE realizo o login e crio processo no sei.
    ACESSO SEI
    Sleep                            3s
