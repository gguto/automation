class PesquisaPage < SitePrism::Page
    set_url "?q=search/node{/pesquisavel}"

    element :primeiro_resultado, '#block-system-main > div > ol > li:nth-child(1) > h3 > a'
    element :campo_pesquisa, '#edit-keys'
end
