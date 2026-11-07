#language = pt

Fucionalidade : tela de login 
como acessar o meta 
quero me autenticar 
para vizualizar minha rede social 

contexto: 
dado  que eu acesse a pagina de autenticação do meta 



cenario : autenticação válida 
quando eu digitar meu email "euclides@06.com.br"
e a senha 'senha@123'
entao deve exibir uma mensagem de boas vindas "ola euclides"

cenario : usuario inexistente 
quando eu digitar o usuario 'hdhdasj@.com.br'
e a senha 'senha@123'
entao deve exibir uma messagem de alerta 'usuario inexistente'

cenario: usuario com senha invalida
quando eu digitar o usuario 'euclides@06.com.br'
e a senha 'hdhsd2@dyt'
entao deve exibir uma menssagem de alerta 'usuario ou senha invalidos'

cenario: autenticar multiplos usuarios 
quando  eu digitar o <usuarios>
e a <senha>
entao deve exibir a <mensagem> de sucesso


Examplos:
    |   usuario   |  senha    |     mensagem   |
    |'euclides@06'|'teste@213'| 'ola euclides' |
    |'maria@08'.  |'teste@213'|  'ola maria'   |
    |'jose@ebac'. |'teste@213'|  'ola jose '   |



