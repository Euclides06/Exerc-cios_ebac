Fucionalidade: tela de checkout
como cliente da loja
quero finalizar minha compra 
para receber os produtos selecionados

contexto: 
dado que eu esteja autenticado na loja 
e tenha um produto disponivel no carrinho 
e que eu acesse a pagina de checkout


cenario: finalizar compra com dados validos
quando eu informar um endereco de entrega valido
e selecionar uma opcao de frete 
e informar os dados de um cartao valido
e confirma compra
entao deve exibir a mensagem 'compra realizada com sucesso'
e deve exibir o numero pedido



cenario: tentar finalizar compra sem endereco de entrega 
quando eu deixar o endereco de entrega em branco
e tentar comfirma a compra 
entao deve exibir a mensagem de alerta 'informe o endereco de entrega'
e nao deve criar um pedido


cenario: tentar finalizar compra sem selecionar o pagamento
quando eu informar um endereco de entrega valido
e selecionar uma opcao de frete
e nao selecionar uma forma de pagamento
e tentar comfirmar a compra 
entao deve exibir uma mensagem de alerta 'selecione uma forma de pagamento'
e nao deve criar uma pedido


cenario: tentar finalizar compra com pagamento recusado
quando eu informar um endereco de entrega valido 
e selecionar uma opcao de frete 
e informar os dados de um cartao valido
e comfirma compra
e o pagamento for recusado pela operadora 
entao deve exibir uma mensagem de alerta 'pagamento recusado'
e nao deve comfirma o pedido como pago 
e deve permitir uma nova tentativade pagamento


cenario: conferir o valor total de compra
dado que o subtotal dos produtos seja de R$ 100,00
e que o frete custe R$ 15,00
e que nao existem descontos aplicados 
quando eu vusualizar o resumo da compra
entao deve exibir o valor total de R$ 115,00



cenario: validar campos obrigatorios do endereco 
quando eu preencher os demais campos do endereco corretamente 
e deixar o campo '<campo>' em branco
e tentar continuar para o pagamento 
entao deve exibir a mensagem de alerta '<mensagem>'
e nao deve avancar para a etapa de pagamento


Examplos:
   | campo | mensagem  |
   | nome  | informar o nome do destinario |
   | CEP.  | informa o CEP |
   | rua.  | informe a rua |
   | numero| informa o numero |
   | cidade| infroma a cidade |
   | estado| informa o estado |