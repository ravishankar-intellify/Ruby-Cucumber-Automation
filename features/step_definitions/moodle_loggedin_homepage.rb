
When(/^I am Successfully logged in as an Instructure$/) do
 log_in_moodle_home
end

Then(/^An Instructure event should be successfully sent through moodle sensor to Intellify Raw Index$/) do
 moodle_logout
end

#
# When(/^I am Successfully logged in as an Student/) do
#   #sdfsf
# end
#
# Then(/^An Student event should be successfully sent through moodle sensor to Intellify Raw Index$/) do
#   #sdfsf
# end
#
#
# When(/^I am Successfully logged in as an Administrator/) do
#   #sdfsf
# end
#
# Then(/^An Administrator event should be successfully sent through moodle sensor to Intellify Raw Index$/) do
#   #sdfsf
# end