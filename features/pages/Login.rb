class Login < SitePrism::Page

set_url "https://demo.suiteondemand.com/index.php?module=Users&action=Login"
element :email_field, "input#user_name"
element :password_field, "input#user_password"
element :login_btn, "input#bigbutton"

def logarAdmin
    email_field.set "will"
    password_field.set "will"
    login_btn.click
end

end
