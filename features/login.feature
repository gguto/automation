# language: pt
Funcionalidade: Autenticação da aplicação
Eu como usuário quero me autenticar no site para navegar no sistema e ver somente minhas informações.

Cenário: Login na aplicação com sucesso
    Dado que estou na tela de login
    Quando preencher os dados de login
    E clico no botão entrar
    Então logo no sistema com sucesso

Cenário: Falha ao logar na aplicação
    Dado que estou na tela de login
    Quando preencho com dados de login incorretos
    E clico no botão entrar
    Então o sistema me apresenta uma mensagem de erro na autenticação