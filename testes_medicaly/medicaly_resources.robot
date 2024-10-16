Código de teste:
* Settings *
Library  SeleniumLibrary

* Variables *


* Keywords *
Abrir Site
    Open Browser  http://localhost:4200/home  chrome

Abrir NavLateral
    Click Element    class:example-icon.mdc-icon-button.mat-mdc-icon-button.mat-unthemed.mat-mdc-button-base
    
Clicar no botão "${texto_botao}"
    Click Element    //html/body/app-root/mat-drawer-container/mat-drawer/div/button[contains(.,'${texto_botao}')]

Digitar "${input}" no input "${campo}"
    Click Element    //html/body/app-root/mat-drawer-container/mat-drawer/div/button[contains(.,'${texto_botao}')]
    Input Text    //html/body/app-root/mat-drawer-container/mat-drawer-content/tela-cadastro/div/form/div/mat-form-field[contains(.,'${campo}')]   ${input}

Fechar o navegador
    Capture Page Screenshot
    Close Browser