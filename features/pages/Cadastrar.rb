class Cadastrar < SitePrism::Page
    element :name_field, 'input#name'
    element :email_field, 'input#Accounts0emailAddress0'
    element :website_field, 'input#website'
    element :save_btn, :button, 'SAVE', match: :first
    element :nomeconta_field, 'h2.module-title-text'
    #element :visualizarconta_field, :xpath, '//*[@id="actionMenuSidebar"]/ul/li[2]/a/div[2]'
    element :visualizarconta_field, '#actionMenuSidebar li.actionmenulinks a[href$="index.php?module=Accounts&action=index&return_module=Accounts&return_action=DetailView'
    
    def criar_conta(nome, website, email)
     name_field.set nome
     website_field.set website
     email_field.set email
     save_btn.click
    end

     def alterar_conta(nome, email)
     name_field.set nome
     email_field.set email
     save_btn.click
    end
end
