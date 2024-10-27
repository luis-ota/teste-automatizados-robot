*** Settings ***
Documentation    criando logout_usuario medicaly
Resource         medicaly_resources.robot
Test Setup       Abrir Site
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 02 - Sair do usuario"
	[Documentation]    Esse teste verificar se efetuou login corretamente e depois sai do usuario
	[Tags]             sair

	Sleep    1
	Abrir NavLateral
	Clicar no botão "Acessar"
	Sleep    1
	Digitar "usuario@email.com" no input "0"
	Digitar "123qwe" no input "1"
	Clicar em login
	Sleep    5
    Clicar no botão "Sair" da NavLateral

    Sleep    1
    Verificar se saiu




