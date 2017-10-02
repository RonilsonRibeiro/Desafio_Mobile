#language: pt
#utf-8

Funcionalidade: Buscar Placas
Eu como usuário do app
Quero fazer buscas de placas
Para verificar se as placas são válidas ou inválidas

Contexto: Acessar o app
  Dado que eu estou na tela de busca do app

@valida
Cenário: Buscar placa válida
  Quando eu pesquiso por uma placa
  Então visualizo os dados do carro

@invalida
Cenário: Buscar placa inválida
  Quando eu pesquiso por uma placa inválida
  Então visualizo uma mensagem de erro
