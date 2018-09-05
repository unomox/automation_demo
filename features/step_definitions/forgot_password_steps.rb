require 'rubygems'
require 'selenium-webdriver'
require 'rspec'
require 'open-uri'

Dir[File.join(__dir__, 'actions', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, 'pages', '*.rb')].each { |file| require file }

forgot = ForgotPasswordPage.new

And("I select the forgot password button") do
  input_click(forgot.forgot_password_button)
end

Then("the Forgot Password modal appears") do
  assertion_text('Enter the e-mail address you used to register.')
end

And("I enter the email {string} used to register") do |email|
  input_text(forgot.forgot_password_email_field, email)
end

And("I select the Send It button") do
  input_click(forgot.forgot_password_send_button)
end

Then("I verify that the What's My Password modal appears") do
  assertion_text('An email regarding your password change has been sent to your email address.')
end