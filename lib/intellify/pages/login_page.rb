class IntellifyLoginPage < PageFactory #< BasePage

  page_url "https://master-staging.intellify.io/wb/index.html#/login"
  expected_element :login_button,30

  element(:login_button) { |b| b.button(value: "Login") }
  element(:intellify_login){ |b|b.text_field(name:"username")}
  element(:intellify_password){ |b|b.text_field(name:"user.password")}
end
