
$test_site = "https://master-staging.intellify.io/wb/index.html#/login"
$test_site = ENV['TEST_SITE'] unless ENV['TEST_SITE'] == nil

$: << File.dirname(__FILE__)+'/../../lib'

require 'intellify'

World Foundry
World StringFactory
World DateFactory
World Workflows


browser = nil


if ENV['TEST_ENV_NUMBER'].nil? || ENV['TEST_ENV_NUMBER'] == ''
  $env_no = 1
else
  $env_no = ENV['TEST_ENV_NUMBER']
end

Selenium::WebDriver::Firefox::Binary.path = ENV['FIREFOX_PATH'] unless ENV['FIREFOX_PATH'].nil?

#boost timeout value
Watir.default_timeout = 120

#re-use browser for each scenario
Before do

  client = Selenium::WebDriver::Remote::Http::Default.new
  client.timeout = 120 # seconds default is 60

  if browser.nil?
    #puts "debug  env.rb [#{$env_no}] - creating new browser"
    browser = Watir::Browser.new :firefox , :http_client => client
    #puts "debug  env.rb [#{$env_no}] - browser.nil? #{browser.nil?}"
  else
    browser.window.resize_to(1440, 864)
  end
  @browser = browser
end

