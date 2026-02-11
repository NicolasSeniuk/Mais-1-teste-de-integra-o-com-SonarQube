*** Settings ***
Library    Browser

*** Keywords ***
Preencher Usuário
    [Arguments]    ${user}
    Fill Text      id=user-name    ${user}

Preencher Senha
    [Arguments]    ${pass}
    Fill Text      id=password     ${pass}

Clicar Login
    Click    id=login-button

Validar Login Sucesso
    Wait For Elements State    text=Products    visible

Validar Erro Login
    Wait For Elements State    text=Epic sadface    visible
