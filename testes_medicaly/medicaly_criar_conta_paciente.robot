*** Settings ***
Documentation    criando usuario medicaly
Resource         medicaly_resources.robot
Test Setup       Abrir Site
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Criar conta paciente"
	[Documentation]    Esse teste verificar a criação de conta de paciente
	[Tags]             cadastro_paciente

	Sleep    1
	Abrir NavLateral
	Clicar no botão "Cadastrar-se"
	Sleep    3
	Digitar "Luis" no input "Nome*"


