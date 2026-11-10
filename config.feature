Funcionalidade:configuracao de produtos
como administrador do sistema
quero aconfigurar os produtos
para gerenciar os produtos cadastrados

Contexto:
Dado que eu estou logado no sistema

Cenario: acessar configuracaes de produtos
Dado que estou na pagina inicial
Quando clicar no menu 'produtos'
Entao deve exibir a tela de configuracao de produtos

Cenario: Cadastrar novo produto
Dado que eu estou na tela de configuracoes de produtos
Quando preencher o nome e o preco do produto 
E  clicar em 'salvar'
Entao deve exibir uma mensagem  'produto cadastrado com sucesso'

Cenario: validar campos obrigatorios
Dado que eu estou na tela de cadastro de produtos
Quando deixar os campos obrigatorios vazios 
E  clicar em 'salvar'
Entao deve exibir uma mensagem de validacao

Cenario: editar produto 
Dado que existe um produto cadastrado
Quando alterar as informacoes do produto
E clicar em 'salvar'
Entao deve exibir uma mensagem 'produto atualizado com sucesso'

Cenario: excluir produto
Dado que existe um produto cadastrado
Quando clicar em 'Excluir'
E comfirma a exclusao
Entao o produto deve ser removido da lista

Cenario: cancelar cadastro de produto
Dado que estou na tela de cadastro de produtos
Quando preencher os dados do produto
E clicar em 'cancelar'
Entao o cadastro nao deve ser realizado


