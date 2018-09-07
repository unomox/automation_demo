require 'rubygems'
require 'selenium-webdriver'
require 'rspec'
require 'open-uri'


Dir[File.join(__dir__, 'actions', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, 'pages', '*.rb')].each { |file| require file }

signuppage = SignupPage.new

def signup_with(signuppage, b_month, b_day, b_year, username, email, password, password_retype)
  input_text(signuppage.birth_month_field,b_month)
  input_text(signuppage.birth_day_field,b_day)
  input_text(signuppage.birth_year_field,b_year)
  input_text(signuppage.username_field,username)
  input_text(signuppage.email_field,email)
  input_text(signuppage.password_field,password)
  input_text(signuppage.password_retype_field,password_retype)
end
Given(/^I navigate to adultswim.com$/) do
  navigate(homepage_url)
end

And(/^I click the login button$/) do
  input_click(signuppage.login_button)
end

And(/^I click the Not Registered Start Here button$/) do
  input_click(signuppage.not_registered_button)
end

And(/^I enter my information$/) do
  signup_with(signuppage, birth_month, birth_day, birth_year, as_username, as_email, as_password, as_password)
end

And(/^I enter my information with an invalid user name$/) do
  signup_with(signuppage, birth_month, birth_day, birth_year, invalid_as_username, as_email, as_password, as_password)
end

And(/^I enter my information with an invalid email address$/) do
    signup_with(signuppage, birth_month, birth_day, birth_year, as_username, invalid_as_email, as_password, as_password)
end

And(/^I enter my information with unmatching password re-enter$/) do
    signup_with(signuppage, birth_month, birth_day, birth_year, as_username, as_email, as_password, as_password2)
end

And(/^I check the terms of service box$/) do
  input_click(signuppage.tos_checkbox)
end

And(/^I click submit$/) do
  input_click(signuppage.submit_button)
end

Then(/^I should see "Invalid username"$/) do
  assertion_text("Verify Your Email Address")
end

Then(/^I should see "E-mail address is invalid"$/) do
  assertion_text("E-mail address is invalid")
end

Then(/^I should see "Passwords do not match"$/) do
  assertion_text("Passwords do not match")
end

Then(/^I should see "Verify Your Email Address"$/) do
  assertion_text("Verify Your Email Address")
end
