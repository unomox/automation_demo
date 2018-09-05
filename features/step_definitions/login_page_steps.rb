require 'rubygems'
require 'selenium-webdriver'
require 'rspec'
require 'open-uri'

Dir[File.join(__dir__, 'actions', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, 'pages', '*.rb')].each { |file| require file }

login = LoginPage.new

And("I enter my registered username {string}") do |username|
  input_text(login.email_username_field, username)
end

And("I enter my registered email {string}") do |email|
  input_text(login.email_username_field, email)
end

And("I enter my registered password {string}") do |password|
  input_text(login.password_field, password)
end

And("I click the Sign In button") do
  input_click(login.signin_button)
end

Then("I check for the invalid login error message") do
  assertion_text('Invalid login or password')
end

Then("I verify that the username appears") do
  sleep(3)
  assertion_text('typo01')
end