Feature: tela de checkout
como cliente da loja
quero finalizar minha compra 
para receber os produtos selecionados

Background: 
Given que eu esteja autenticado na loja 
And tenha um produto disponivel no carrinho 
And que eu acesse a pagina de checkout


Scenario: finalizar compra com dados validos
When eu informar um endereco de entrega valido
And selecionar uma opcao de frete 
And informar os dados de um cartao valido
And confirma compra
Then deve exibir a mensagem 'compra realizada com sucesso'
And deve exibir o numero pedido



Scenario: tentar finalizar compra sem endereco de entrega 
When eu deixar o endereco de entrega em branco
And tentar comfirma a compra 
Then deve exibir a mensagem de alerta 'informe o endereco de entrega'
And nao deve criar um pedido


Scenario: tentar finalizar compra sem selecionar o pagamento
When eu informar um endereco de entrega valido
And selecionar uma opcao de frete
And nao selecionar uma forma de pagamento
And tentar comfirmar a compra 
Then deve exibir uma mensagem de alerta 'selecione uma forma de pagamento'
And nao deve criar uma pedido


Scenario: tentar finalizar compra com pagamento recusado
When eu informar um endereco de entrega valido 
And selecionar uma opcao de frete 
And informar os dados de um cartao valido
And comfirma compra
And o pagamento for recusado pela operadora 
Then deve exibir uma mensagem de alerta 'pagamento recusado'
And nao deve comfirma o pedido como pago 
And deve permitir uma nova tentativade pagamento


Scenario: conferir o valor total de compra
Given que o subtotal dos produtos seja de R$ 100,00
And que o frete custe R$ 15,00
And que nao existem descontos aplicados 
When eu vusualizar o resumo da compra
Then deve exibir o valor total de R$ 115,00



Scenario Outline: validar campos obrigatorios do endereco 
When eu preencher os demais campos do endereco corretamente 
And deixar o campo '<campo>' em branco
And tentar continuar para o pagamento 
Then deve exibir a mensagem de alerta '<mensagem>'
And nao deve avancar para a etapa de pagamento


Examples:
   | campo | mensagem  |
   | nome  | informar o nome do destinario |
   | CEP.  | informa o CEP |
   | rua.  | informe a rua |
   | numero| informa o numero |
   | cidade| infroma a cidade |
   | estado| informa o estado |