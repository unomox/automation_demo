require 'rubygems'
require 'selenium-webdriver'
require 'rspec'
require 'open-uri'


Dir[File.join(__dir__, 'actions', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, 'pages', '*.rb')].each { |file| require file }

signuppage = SignupPage.new

Given(/^I navigate to adultswim.com$/) do
  navigate (homepage_url)
end

And(/^I click the login button$/) do
  input_click(signuppage.login_button)
end

And(/^I click the Not Registered Start Here button$/) do
  input_click(signuppage.not_registered_button)
end

And(/^I enter my information$/) do
  input_text(signuppage.birth_month_field,birth_month)
  input_text(signuppage.birth_day_field,birth_day)
  input_text(signuppage.birth_year_field,birth_year)
  input_text(signuppage.username_field,as_username)
  input_text(signuppage.email_field,as_email)
  input_text(signuppage.password_field,as_password)
  input_text(signuppage.password_retype_field,as_password)
end

And(/^I enter my information with an invalid user name$/) do
  input_text(signuppage.birth_month_field,birth_month)
  input_text(signuppage.birth_day_field,birth_day)
  input_text(signuppage.birth_year_field,birth_year)
  input_text(signuppage.username_field,invalid_as_username)
  input_text(signuppage.email_field,as_email)
  input_text(signuppage.password_field,as_password)
  input_text(signuppage.password_retype_field,as_password)
end

And(/^I enter my information with an invalid email address$/) do
  input_text(signuppage.birth_month_field,birth_month)
  input_text(signuppage.birth_day_field,birth_day)
  input_text(signuppage.birth_year_field,birth_year)
  input_text(signuppage.username_field,as_username)
  input_text(signuppage.email_field,invalid_as_email)
  input_text(signuppage.password_field,as_password)
  input_text(signuppage.password_retype_field,as_password)
end

And(/^I enter my information with unmatching password re-enter$/) do
  input_text(signuppage.birth_month_field,birth_month)
  input_text(signuppage.birth_day_field,birth_day)
  input_text(signuppage.birth_year_field,birth_year)
  input_text(signuppage.username_field,as_username)
  input_text(signuppage.email_field,as_email)
  input_text(signuppage.password_field,as_password)
  input_text(signuppage.password_retype_field,as_password2)
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
