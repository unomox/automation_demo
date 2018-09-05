require 'rubygems'
require 'selenium-webdriver'
require 'rspec'

class LoginPage
  def login_button
    login_button=[:css, '#global-nav > nav > div.asnav-content__login > div > a']
  end
  def email_username_field
    email_username_field=[:css, '#AdultSwimLoginForm-loginID']
  end
  def password_field
    password_field=[:css, '#AdultSwimLoginForm-password']
  end
  def signin_button
    signin_button=[:css, '#AdultSwimLoginForm > div:nth-child(1) > div > div:nth-child(7) > div > button']
  end
end