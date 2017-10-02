Dado(/^que eu estou na tela de busca do app$/) do
  #Se exibir o anuncio fecha
  page(Buscar).fechar_anuncio()

  #Se pedir avaliação do app fecha
  page(Buscar).avaliar_app()
end

Quando(/^eu pesquiso por uma placa$/) do
  #pesquisa uma placa vádida
  page(Buscar).pesquisar_placa("ABD", "0101")
end

Então(/^visualizo os dados do carro$/) do
  #Grava a placa válida no arquivo .YML
  page(Buscar).escrever_placa()
end

Quando(/^eu pesquiso por uma placa inválida$/) do
  #Pesquisa uma placa inválida
  page(Buscar).pesquisar_placa("ZZZ", "0000")
end

Então(/^visualizo uma mensagem de erro$/) do
  #Verifica se retornou a mensagem de erro
  page(Buscar).validar_texto("Não encontrada")
end
