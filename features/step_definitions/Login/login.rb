login_page = LoginPage.new

Dado("que estou na tela de login") do
    login_page.load
end

Quando("preencher os dados de login") do
    login_page.login.set 'eduardo.finotti@softplan.com.br'
    login_page.senha.set 'amarelo32'
end

Quando("clico no botão entrar") do
    login_page.botao_entrar.click
end

Então("logo no sistema com sucesso") do
    expect(page).to have_link("Minha conta")
end

Quando("preencho com dados de login incorretos") do
    login_page.login.set 'usuario@incorreto.com'
    login_page.senha.set '1234'
end

Então("o sistema me apresenta uma mensagem de erro na autenticação") do
  puts 'oi'
end