*** Settings ***
Documentation    criando logout_usuario medicaly
Resource         medicaly_resources.robot
Test Setup       Abrir Site
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 03 - Preencher formulario criar conta"
	[Documentation]    Esse teste ira criar uma conta preenchendo todas as informacoes
	[Tags]             criar_conta

	Sleep    1
	Abrir NavLateral
	Clicar no botão "Acessar"
	Sleep    3
	Clicar no botão "Criar conta"
	Digitar "Gu" no input "Nome*"
	Digitar "Passos" no input "Sobrenome*"
	Digitar "08617926961" no input "CPF*"


