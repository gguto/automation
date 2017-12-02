class LoginPage < SitePrism::Page
    set_url "/"

    element :login, '#edit-name'
    element :senha, '#edit-pass'
    element :botao_entrar, '#edit-submit'
    element :pesquisa, 'edit-search-block-form--2'
    element :botao_pesquisa, ''
end