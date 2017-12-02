class HomePage < SitePrism::Page
    set_url "/?q=node"

    element :texto_pesquisa, '#edit-search-block-form--2'
    element :botao_pesquisa, '#edit-submit'
end