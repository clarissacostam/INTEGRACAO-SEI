*** Settings ***
Documentation    Contém o mapeamento dos localizadores dos elementos da Pasta Digital

*** Variables ***
${USER}                     admdeer
${PASSWORD}                 admdeer



${IUSER}                    //*[@id="txtUsuario"]
${IPASSWORD}                //*[@id="pwdSenha"]
${BTACESSAR}                //*[@id="sbmLogin"]
#BOTÕES
${BOTAO_ANOTACAO}            xpath=//*[starts-with(@id, 'anotacaoItemWrapper')]
${BOTAO_ASSUNTO}

# SELECTS
${ORGAOLOGIN}               //*[@id="selOrgao"]
