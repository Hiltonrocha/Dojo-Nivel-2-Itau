class Menu < SitePrism::Page

    element :sales_menu, '#grouptab_0'
    element :create_btn, '#quickcreatetop'
    element :createaccount_btn, :xpath, '//*[@id="quickcreatetop"]/ul/li[1]/a'
    element :account_btn 

    

end
