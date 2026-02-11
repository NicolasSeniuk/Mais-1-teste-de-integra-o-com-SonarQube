*** Settings ***
Library    Browser

*** Keywords ***
Abrir Navegador
    New Browser    chromium
    New Context
    New Page       ${URL}

Fechar Navegador
    Close Browser
