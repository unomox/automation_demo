require 'rubygems'
require 'selenium-webdriver'
require 'rspec'

class ForgotPasswordPage
  def forgot_password_button
    forgot_password_button=[:css, '#AdultSwimLoginForm > div:nth-child(1) > div > div:nth-child(8) > div > a']
  end
  def forgot_password_email_field
    forgot_password_email_field=[:css, '#AdultSwimForgotPasswordForm__loginID']
  end
  def forgot_password_send_button
    forgot_password_send_button=[:css, '#AdultSwimForgotPasswordForm > div > div > div:nth-child(4) > div > button']
  end
end