#language = pt

Funcionalidade: tela de login 
como acessar o meta 
quero me autenticar 
para vizualizar minha rede social 

Contexto: 
Dado  que eu acesse a pagina de autenticação do meta 



Cenario: autenticação válida 
Quando eu digitar meu email "euclides@06.com.br"
E a senha 'senha@123'
Entao deve exibir uma mensagem de boas vindas "ola euclides"

Cenario: usuario inexistente 
Quando eu digitar o usuario 'hdhdasj@.com.br'
E a senha 'senha@123'
Entao deve exibir uma messagem de alerta 'usuario inexistente'

Cenario: usuario com senha invalida
Quando eu digitar o usuario 'euclides@06.com.br'
E a senha 'hdhsd2@dyt'
Entao deve exibir uma menssagem de alerta 'usuario ou senha invalidos'

Cenario: autenticar multiplos usuarios 
Quando  eu digitar o <usuarios>
E a <senha>
Entao deve exibir a <mensagem> de sucesso


Exemplos:
    |   usuario   |  senha    |     mensagem   |
    |'euclides@06'|'teste@213'| 'ola euclides' |
    |'maria@08'.  |'teste@213'|  'ola maria'   |
    |'jose@ebac'. |'teste@213'|  'ola jose '   |



