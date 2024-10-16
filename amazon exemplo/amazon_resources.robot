*** Settings ***
Library	SeleniumLibrary

*** Variables ***
${BROWSER}	chrome 
${URL}	http://www.amazon.com.br
${TITULO}	"Amazon.com.br | Tudo pra você, de A a Z."
${PRODUTO}	"playstation 5"

*** Keywords ***
Abrir o navegador
    Open Browser	browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}
        
Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button
    
Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[3]



