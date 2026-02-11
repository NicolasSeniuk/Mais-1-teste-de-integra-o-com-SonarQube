*** Settings ***
Resource    ../resources/keywords/common_keywords.robot
Resource    ../resources/pages/login_page.robot

*** Variables ***
${URL}    https://www.saucedemo.com

*** Test Cases ***
Login válido
    [Tags]    smoke    regression
    Abrir Navegador

    Preencher Usuário    standard_user
    Preencher Senha      secret_sauce
    Clicar Login

    Validar Login Sucesso
    Fechar Navegador


Login inválido
    [Tags]    regression
    Abrir Navegador

    Preencher Usuário    usuario_errado
    Preencher Senha      senha_errada
    Clicar Login

    Validar Erro Login
    Fechar Navegador
