require 'rubygems'
require 'selenium-webdriver'
require 'rspec'
require 'open-uri'

Dir[File.join(__dir__, 'actions', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, 'pages', '*.rb')].each { |file| require file }

signup = SignupPage.new

Given("I have navigated to {string}") do |url|
  @driver.navigate.to url
end

And("I select the Login button") do
  input_click(signup.login_button)
end

Then("the Sign In Modal appears") do
  assertion_text('Email or Username')
end

And("I select the Not Registered Yet button") do
  input_click(signup.register_button)
end

Then("the Register With modal appears") do
  assertion_text('Register with')
end

And("I select my Birth Month from the dropdown") do
  input_select(signup.birth_month_dropdown,signup.birth_month_option)
end

And("I select my Birth Day from the dropdown") do
  input_select(signup.birth_day_dropdown,signup.birth_day_option)
end

And("I select my Birth Year from the dropdown") do
  input_select(signup.birth_year_dropdown,signup.birth_year_option)
end

And("I enter my username {string}") do |username|
  input_text(signup.username_field, username)
end

And("I enter my email {string}") do |email|
  input_text(signup.email_field, email)
end

And("I enter my password {string}") do |password|
  input_text(signup.password_field, password)
end

And("I confirm my password {string}") do |password|
  input_text(signup.confirm_password_field, password)
end

And("I select the terms and privacy checkbox") do
  input_click(signup.terms_privacy_checkbox)
end

And("I select Submit") do
  input_click(signup.submit_button)
end
