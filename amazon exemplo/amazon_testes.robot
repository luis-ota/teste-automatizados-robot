*** Settings ***
Documentation    Essa suíte testa o site da Amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Acesso site da Amazon"
	[Documentation]    Esse teste verifica o site da Amazon.com.br
	[Tags]             site_principal
	Acessar a home page do site Amazon.com.br
 	Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    
Caso de Teste 02 - Pesquisa de um Produto
	[Documentation]    Esse teste verifica a busca de um produto
	[Tags]             busca_produtos  lista_busca
	Acessar a home page do site Amazon.com.br
	Digitar o nome de produto "playstation 5" no campo de pesquisa
	Clicar no botão de pesquisa
	Verificar o resultado da pesquisa se está listando o produto "Console PlayStation 5"

