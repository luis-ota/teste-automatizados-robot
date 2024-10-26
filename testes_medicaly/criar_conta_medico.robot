*** Settings ***
Documentation    criando cadastro de medico medicaly
Resource         medicaly_resources.robot
Resource    medicaly_resources.robot
Resource    medicaly_resources.robot
Resource    medicaly_resources.robot
Test Setup       Abrir Site
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 04 - Criar conta de medico"
	[Documentation]    Esse teste verificar se o cadastro de medico funciona corretamente
	[Tags]             sair

	Sleep    1
	Abrir NavLateral
	Clicar no botão "Acesso Administrador" da NavLateral
	Sleep    .3

	Digitar "gusapas26@gmail.com" no input "0"
	Digitar "123qwe" no input "1"
	Clicar em login
	Sleep    3

	Fechar toast
	Sleep    1

	Clicar no botão "Dashboard" da NavLateral
    Sleep    1

    Clicar em adicionar medico
    Sleep    1

    Digitar "Medico" no input "nome" em cadastro medico
    Digitar "Da silva" no input "sobrenome" em cadastro medico
    Digitar "05/01/2005" no input "dataNascimento" em cadastro medico
    Digitar "Medico" no input "nome" em cadastro medico
    Digitar "12345678909" no input "cpf" em cadastro medico
    Digitar "1234567" no input "credencialDeSaude" em cadastro medico
    Digitar "medico@email.com" no input "email" em cadastro medico
    Digitar "41998798238" no input "telefone" em cadastro medico
    Digitar "123qwe" no input "senha" em cadastro medico

    Digitar "10:00" no input "7" horario no cadastro medico
    Digitar "16:00" no input "8" horario no cadastro medico

    Marcar "16" em "especialidadesIds"
    Marcar "17" em "atuacoesIds"




    Sleep    100

