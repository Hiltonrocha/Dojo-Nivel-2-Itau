# language: pt
  # encoding: utf-8
  
  Funcionalidade: Cadastrar Conta
  Eu como administrador 
  Quero cadastrar novas contas
  Para que possa administrar as contas criadas
  
  Contexto: Realizar Login Admin
  Dado que na home faça o login como administrador
  
  @cadastrar_conta
  Esquema do Cenário: Cadastrar Conta
  Dado acesso a opção de cadastrar nova conta
  Quando preencher os campos "<nome>", "<website>" e "<email>"
  Então a conta deve ser cadastrada com sucesso
  
  Exemplos:
      | nome         | website                  | email                   | 
      | Joana Abdala | http://www.marcos.com.br | marcos.abdala@gmail.com | 
  
  @editar_conta
  Esquema do Cenário: Editar Conta
  Dado acesso a opção de cadastrar nova conta
  E clico em visualizar conta
  Quando fizer uma busca simples pelo o "<nome>"
  E alterar os dados para "<novonome>", "<novoemail>"
  Então a conta deve ser editada com sucesso
  
  Exemplos:
      | nome          | novonome           | novoemail               | 
      |Joana Abdala   | OTC Holdings       | sac@otcholdings.com     | 