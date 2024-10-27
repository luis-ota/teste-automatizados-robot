*** Settings ***
Documentation    verificar se ha opcao de cancelar na agenda do medico
Resource         medicaly_resources.robot
Resource    medicaly_resources.robot
Resource    medicaly_resources.robot
Resource    medicaly_resources.robot
Test Setup       Abrir Site
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 04 - Criar conta de medico"
	[Documentation]    verificar se ha opcao de cancelar na agenda do medico
	[Tags]             sair

	Sleep    1
	Abrir NavLateral
	Clicar no botão "Acesso profissional" da NavLateral
	Sleep    .3

	Digitar "profissional@medicaly.com" no input "0"
	Digitar "123qwe" no input "1"
	Clicar em login
	Sleep    3

	Fechar toast
	Sleep    1

	Clicar no botão "Minha Agenda" da NavLateral
    Sleep    1
    Abrir NavLateral

    Clicar em um agendamento
    Sleep    1.5

    Verificar se ha botao de cancelar
