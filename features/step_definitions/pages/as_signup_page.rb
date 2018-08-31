require 'rubygems'
require 'selenium-webdriver'
require 'rspec'

class SignupPage

  def login_button
    login_button = [:xpath, '//*[@id="global-nav"]/nav/div[2]']
  end

  def not_registered_button
    not_registered_button = [:xpath, '//*[@id="AdultSwimLoginForm"]/div[2]/div/a']
  end

  def birth_month_field
    birth_month_field = [:xpath, '//*[@id="AdultSwimRegisterForm__birthMonth"]']
  end

  def birth_day_field
    birth_day_field = [:xpath, '//*[@id="AdultSwimRegisterForm"]/div/div/div[2]/div/div/div[2]/div/select']
  end

  def birth_year_field
    birth_year_field = [:xpath, '//*[@id="AdultSwimRegisterForm"]/div/div/div[2]/div/div/div[3]/div/select']
  end

  def username_field
    username_field = [:xpath, '//*[@id="AdultSwimRegisterForm__username"]']
  end

  def email_field
    email_field = [:xpath, '//*[@id="AdultSwimRegisterForm__email"]']
  end

  def password_field
    password_field = [:xpath, '//*[@id="AdultSwimRegisterForm__password"]']
  end

  def password_retype_field
    password_retype_field = [:xpath, '//*[@id="AdultSwimRegisterForm__passwordRetype"]']
  end

  def tos_checkbox
    tos_checkbox = [:xpath, '//*[@id="AdultSwimRegisterForm"]/div/div/div[8]/div/div/label/input']
  end

  def submit_button
    submit_button = [:xpath, '//*[@id="AdultSwimRegisterForm"]/div/div/div[9]/div/button']
  end
end