home_page = HomePage.new
pesquisa_page = PesquisaPage.new

Quando("preencho o conteudo desejado para pesquisa") do
    home_page.texto_pesquisa.set 'Treinamento'
  end
  
  Quando("clico no botão de pesquisa") do
    home_page.botao_pesquisa.click
  end

  Então("o sitema me retorna o resultado da pesquisa") do
    pesquisa_page.load(pesquisavel: 'treinamento')
    pesquisa_page.primeiro_resultado.click
    expect(pesquisa_page).to have_content('O BSTQB não promove treinamentos nem exige que seus candidatos à certificação o façam.')
  end