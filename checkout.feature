Funcionalidade: tela de checkout
como cliente da loja
quero finalizar minha compra 
para receber os produtos selecionados

Contexto: 
Dado que eu esteja autenticado na loja 
E tenha um produto disponivel no carrinho e que eu acesse a pagina de checkout



Cenario: finalizar compra com dados validos
Quando eu informar um endereco de entrega valido
E selecionar uma opcao de frete e informar os dados de um cartao valido e comfirmar compra
Entao  deve exibir a mensagem 'compra realizada com sucesso'




Cenario: tentar finalizar compra sem endereco de entrega 
Quando eu deixar o endereco de entrega em branco
E tentar comfirma a compra 
Entao deve exibir a mensagem de alerta 'informe o endereco de entrega'



Cenario: tentar finalizar compra sem selecionar o pagamento
Quando eu informar um endereco de entrega valido
E selecionar uma opcao de frete e nao selecionar uma forma de pagamento e tentar comfirmar a compra 
Entao deve exibir uma mensagem de alerta 'selecione uma forma de pagamento'



Cenario: tentar finalizar compra com pagamento recusado
Quando eu informar um endereco de entrega valido 
E selecionar uma opcao de frete e informar os dados de um cartao valido e comfirma compra e o pagamento for recusado pela operadora 
Entao deve exibir uma mensagem de alerta 'pagamento recusado'



Cenario: conferir o valor total de compra
Dado que o subtotal dos produtos seja de R$ 100,00
E que o frete custe R$ 15,00 e que nao existem descontos aplicados 
Quando eu vusualizar o resumo da compra
Entao deve exibir o valor total de R$ 115,00



Cenario: validar campos obrigatorios do endereco 
Quando eu preencher os demais campos do endereco corretamente 
E deixar o campo '<campo>' em branco e tentar continuar para o pagamento 
Entao deve exibir a mensagem de alerta '<mensagem>'


Exemplos:
   | campo | mensagem  |
   | nome  | informar o nome do destinario |
   | CEP.  | informa o CEP |
   | rua.  | informe a rua |
   | numero| informa o numero |
   | cidade| infroma a cidade |
   | estado| informa o estado |