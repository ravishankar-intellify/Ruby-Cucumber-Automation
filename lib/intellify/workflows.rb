# Helper methods that don't properly belong elsewhere. This is
# a sort of "catch all" Module.
  module Workflows

    def log_in(username,password)

      visit IntellifyLoginPage do |page|
        page.cookies.clear
        page.intellify_login.set username
        page.intellify_password.set password
        page.login_button.click
      end
    end

    def log_in_moodle(username,password)

      visit MoodleLoginPage do |page|
        page.cookies.clear
        #page.goto('http://moodleserver.dev.master.us-west-2.prod.aws.intellify.io')
        page.login_link.click
        page.moodle_login.set username
        page.moodle_password.set password
        page.login_button.click
      end
    end

    def log_in_moodle_home

      visit MoodleLoginPage do |page|
      page.profile_dropdown_click
      end

    end

    def moodle_logout

      visit MoodleLoginPage do |page|
        page.moodle_logout_wait
        page.moodle_logout_click
      end

    end


    def post_request(posturl,query,bearer)


      esQuery = "{\"username\": \"rtamilselvan@intellify\",\"password\": \"intellifyCHANGEME!\"}"
      response = RestClient.post "http://hmh2.intellifylearning.com/user/apiToken",esQuery, :content_type => :json, :accept => :json
      @data = JSON.parse response.body
      token = @data['apiToken']




        esQuery =  "{\"query\":{\"filtered\":{\"filter\":{\"bool\":{\"must\":[{\"term\":{\"studentId\":\"" + actorId + "\"}}]}}}},\"sort\":[{\"eventTimeISO\":{\"order\":\"asc\"}}],\"size\":50000,\"from\":0}"
        bearerToken =  "bearer " + token

        response = RestClient.post "https://hmh2.intellifylearning.com/intellisearch/xxx-test-r180u-synthetic-a3-time-on-task-sessions-flink-v2/_search",esQuery, :content_type => :json, :accept => :json, :Authorization => bearerToken
        @data = JSON.parse response.body
        if @data['hits']['total'] != 0 then
          assert_equal actorId, @data['hits']['hits'][i]['_source']['studentId']
        else
          assert_equal 'found','Not found'
        end
    end
end