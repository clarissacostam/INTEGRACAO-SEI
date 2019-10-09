*** Settings ***
Library                                     SeleniumLibrary
Resource                                    mapping.robot


*** Keywords ***

ACESSO SEI
    Go To                 https://homologasei.prodemge.gov.br/
    Maximize Browser Window
    Input Text            ${IUSER}              ${USER}
    Input Password        ${IPASSWORD}          ${PASSWORD}
    Select From List By Value        ${ORGAOLOGIN}          2
    Sleep                 3s
    Click Button          ${BTACESSAR}
    Capture Page Screenshot
