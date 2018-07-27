require 'rubygems'
require 'selenium-webdriver'
require 'rspec'

class LoginPage
  def log_in_with_google_button
    log_in_with_google_button=[:xpath,'//button[@class="btn-google-login btn btn-primary btn-block"]']
  end
  def email_address_field
    email_address_field=[:id,'email']
  end
  def password_field
    password_field=[:id,'password']
  end
  def log_in_button
    log_in_button =[:xpath,'//button[@type="submit"]']
  end
  def forgot_password_button
    forgot_password_button =[:xpath,'//a[@href="/forgot"]']
  end
end