Feature: tela de login 
como acessar o meta 
quero me autenticar 
para vizualizar minha rede social 

context:
When que eu acesse a pagina de autenticação do meta 



Scenario: autenticação válida 
When eu digitar meu email "euclides@06.com.br"
And a senha 'senha@123'
Then deve exibir uma mensagem de boas vindas "ola euclides"

Scenario: usuario inexistente 
When eu digitar o usuario 'hdhdasj@.com.br'
And a senha 'senha@123'
Then deve exibir uma messagem de alerta 'usuario inexistente'

Scenario: usuario com senha invalida
When eu digitar o usuario 'euclides@06.com.br'
And a senha 'hdhsd2@dyt'
Then deve exibir uma menssagem de alerta 'usuario ou senha invalidos'

Scenario: autenticar multiplos usuarios 
When eu digitar o <usuarios>
And a <senha>
Then deve exibir a <mensagem> de sucesso


Examples:
    |   usuario   |  senha    |     mensagem   |
    |'euclides@06'|'teste@213'| 'ola euclides' |
    |'maria@08'.  |'teste@213'|  'ola maria'   |
    |'jose@ebac'. |'teste@213'|  'ola jose '   |