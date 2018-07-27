require 'rubygems'
require 'selenium-webdriver'
require 'rspec'
Dir[File.join(__dir__, 'actions', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, 'pages', '*.rb')].each { |file| require file }

loginpage = LoginPage.new

Given("I have navigated to the homepage") do
  navigate(homepage_url)
end

Given("I enter my username") do
  input_text(loginpage.email_address_field,wiw_username)
end

Given("I enter my password") do
  input_text(loginpage.password_field,wiw_password)
end

Given("I click the Log In button") do
  input_click(loginpage.log_in_button)
end

Then("I should see I am logged in") do
  assertion_text("My Workplaces")
end