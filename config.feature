Fucionalidade: tela de configuracao
como usuario do sistema
quero acessar as configuracoes 
para vusualizar e alterar minhas preferencias 

contexto:
dado que eu estou na pagina de configuracao 

cenario: acessar configuracaes 
quando eu clicar no menu 'configuracoes'
entao deve exibir a tela de configuracoes 

cenario: alterar nome do usuario 
dado que eu estou na tela de configuracoes 
quando eu informa a senha atual 'euclides'
e eu clicar em 'salvar'
entao deve exibir uma mesagem de sucesso 'configuracoes salvas'

cenario: alterar senha
dado que eu estou na tela de configuracoes
quando eu informa a a senha atual 'teste123'
e eu informar a nova senha 'nova123'
e eu clicar em 'salvar'
entao deve exibir uma mensagem de sucesso 'senha alterada'

cenario: senha atual invalida 
dado que estou na tela de configuracaes
quando eu informa a senha atual 'senha errada'
e eu informa a nova senha 'nova123'
e eu clicar em 'salvar'
entao deve exibir uma mensagem de aleta 'senha atual invalida'

cenario:cancelar alteracao 
dado que estou na de configuracaes
quando eu alterar uma configuracao
e eu clicar 'cancelar'
entao as alteracoes nao devem ser salvas

