class MoodleLoginPage < PageFactory # BasePage

  page_url "http://moodleserver.dev.master.us-west-2.prod.aws.intellify.io"
  # expected_element :login_link,30

  element(:login_link) { |b| b.link(href:"http://moodleserver.dev.master.us-west-2.prod.aws.intellify.io/login/index.php")}
  element(:login_button) { |b| b.button(id: "loginbtn") }
  element(:moodle_login){ |b|b.text_field(name:"username")}
  element(:moodle_password){ |b|b.text_field(name:"password")}

  element(:profile_dropdown) { |b| b.a(id: "dropdown-1") }
  element(:moodle_logout) { |b| b.a(class: "dropdown-item menu-action") }
  action(:profile_dropdown_click) { |b| b.profile_dropdown.click }
  action(:moodle_logout_click) { |b| b.moodle_logout.click }
  action(:moodle_logout_wait)  { |b| b.moodle_logout.exit }

end
