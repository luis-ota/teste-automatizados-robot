*** Settings ***
Documentation    verificar se ha como agendar sem logar
Resource         medicaly_resources.robot
Test Setup       Abrir Site
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 02 - Sair do usuario"
	[Documentation]    verficiar se ha como agendar sem logar
	[Tags]             sair

	Sleep    1
	Abrir NavLateral
    Verificar se NAO ha botao "Agendar Procedimento" na nav lateral






