*** Settings ***
Documentation    criando usuario medicaly
Resource         medicaly_resources.robot
Test Setup       Abrir Site
Test Teardown    Fechar o navegador

Library    String

*** Test Cases ***
Caso de Teste 01 - Criar conta paciente"
	[Documentation]    Esse teste verificar a criação de conta de paciente
	[Tags]             cadastro_paciente

	Sleep   1
	Abrir NavLateral
	Clicar no botão "Cadastrar-se" da NavLateral
	Sleep   1

	Digitar "Luis" no input "Nome" do formulario de cadastro
	Digitar "Otavio" no input "Sobrenome" do formulario de cadastro
	Digitar "12345678909" no input "CPF" do formulario de cadastro
	Digitar "1234567890" no input "Telefone" do formulario de cadastro
	Digitar "usuario@email.com" no input email do formulario de cadastro
	Digitar "06/05/2003" no input data do formulario de cadastro
	Digitar "123qwe" no input "Senha" do formulario de cadastro

	Clique no botao Prosseguir
	Sleep   1

	Digitar "80215182" no input "cep" do formulario de endereco
	Digitar "1234" no input "numero" do formulario de endereco
	Digitar "casa" no input "complemento" do formulario de endereco
    Sleep   2
    Clique no botao Concluir
    Sleep    3
    Verifica se "Luis" cadastrou-se com sucesso