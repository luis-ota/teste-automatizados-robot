*** Settings ***
Documentation    agendar procedimento
Resource         medicaly_resources.robot
Test Setup       Abrir Site
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 02 - Sair do usuario"
	[Documentation]    agendar procedimento
	[Tags]             sair
	Sleep    1
	Abrir NavLateral
	Clicar no botão "Acessar"
	Sleep    1
	Digitar "paciente@medicaly.com" no input "0"
	Digitar "123qwe" no input "1"
	Clicar em login
	Sleep    3
	Fechar toast
	Sleep    1
    Clicar no botão "Agendar Procedimento" da NavLateral
    Sleep    1
    Clicar em Agendar
    Sleep    1
    Ir para o proximo mes
    Sleep    1
    Selecionar dia "3 de novembro de 2024"
    Selecionar "11" em "horarioProcedimento"
    Abrir NavLateral
    Agendar







