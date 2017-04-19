class Conta < SitePrism::Page
    element :filtrar, '.glyphicon.glyphicon-filter.parent-dropdown-handler', match: :first
    element :nomefiltro, 'input#name_basic'
    element :buscar, 'input#search_form_submit'
    element :linknome, 'td.inlineEdit[type="name"]'
    element :acao_btn, 'li#tab-actions.dropdown'
    element :acao_edit, 'input#edit_button'


    def busca_conta(nome)
      filtrar.click
      nomefiltro.set nome
      buscar.click
    end

    def editar
        acao_btn.click
        acao_edit.click
    end
    
end
