
Dado(/^que na home faça o login como administrador$/) do
  @login = Login.new
  @login.load
  @login.logarAdmin
end

Dado(/^acesso a opção de cadastrar nova conta$/) do
  @menu = Menu.new
  @menu.create_btn.click
  @menu.createaccount_btn.click
end

Quando(/^preencher os campos "([^"]*)", "([^"]*)" e "([^"]*)"$/) do |nome, website, email|
  @cadastrar = Cadastrar.new
  @nome = nome
  @cadastrar.criar_conta(nome, website, email)
end

Então(/^a conta deve ser cadastrada com sucesso$/) do
  expect(@cadastrar.nomeconta_field.text).to eq  @nome.upcase
end

## Editar conta Steps

Dado(/^clico em visualizar conta$/) do
  @cadastrar = Cadastrar.new
  @conta = Conta.new
  @cadastrar.visualizarconta_field.click
 
end

Quando(/^fizer uma busca simples pelo o "([^"]*)"$/) do |nome|
  @conta.busca_conta(nome)
  @conta.linknome.click
  sleep 2
end

Quando(/^alterar os dados para "([^"]*)", "([^"]*)"$/) do |novonome, email|
  @conta.editar
  @novonome = novonome
  @cadastrar.alterar_conta(novonome, email)
  sleep 5 
end

Então(/^a conta deve ser editada com sucesso$/) do
  expect(@cadastrar.nomeconta_field.text) == @novonome
end 