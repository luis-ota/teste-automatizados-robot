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
    Abrir NavLateral

    Digitar "Medicoooooo" no input "nome" em cadastro medico
    Digitar "Da silva" no input "sobrenome" em cadastro medico
    Digitar "05/01/2005" no input "dataNascimento" em cadastro medico
    Digitar "288.516.620-70" no input "cpf" em cadastro medico
    Digitar "123456127" no input "credencialDeSaude" em cadastro medico
    Digitar "sdaddasd123456@email.com" no input "email" em cadastro medico
    Digitar "41998798238" no input "telefone" em cadastro medico
    Digitar "123qwe" no input "senha" em cadastro medico

    Selecionar "10" em "inicioExpediente"
    Selecionar "12" em "fimExpediente"


    Marcar "16" em "especialidadesIds"
    Marcar "17" em "atuacoesIds"
    Marcar "0" em "diasAtendidos"

    Marcar "7" em "unidadeId" sem overlay

    Clicar em prossegir

    Sleep    1

    Digitar "80215182" no input "cep" do formulario de endereco
	Digitar "1234" no input "numero" do formulario de endereco
	Digitar "casa" no input "complemento" do formulario de endereco
    Sleep    2
    Clique no botao Concluir medico
    Sleep    2