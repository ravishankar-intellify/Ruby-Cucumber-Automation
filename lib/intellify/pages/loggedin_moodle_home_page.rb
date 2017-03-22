class MoodleLoginHomePage < BasePage


  expected_element :profile_dropdown,30

  element(:profile_dropdown) { |b| b.div(id: "dropdown-1") }
  element(:moodle_logout) { |b| b.div(id: "actionmenuaction-6") }
  action(:profile_dropdown_click) { |b| b.profile_dropdown.click; b.loading_wait }
  action(:moodle_logout_click) { |b| b.moodle_logout.click; b.loading_wait }

  end
