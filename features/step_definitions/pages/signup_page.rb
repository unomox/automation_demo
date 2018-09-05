require 'rubygems'
require 'selenium-webdriver'
require 'rspec'

class SignupPage
  def login_button
    login_button=[:css, '#global-nav > nav > div.asnav-content__login > div > a']
  end
  def register_button
    register_button=[:css, '#AdultSwimLoginForm > div:nth-child(2) > div > a']
  end
  def birth_month_dropdown
    birth_month_dropdown=[:css, '#AdultSwimRegisterForm__birthMonth']
  end
  def birth_month_option
    birth_month_option=[:css, '#AdultSwimRegisterForm__birthMonth > option:nth-child(8)']
  end
  def birth_day_dropdown
    birth_day_dropdown=[:css, '#AdultSwimRegisterForm > div > div > div:nth-child(5) > div > div > div:nth-child(2) > div > select']
  end
  def birth_day_option
    birth_day_option=[:css, '#AdultSwimRegisterForm > div > div > div:nth-child(5) > div > div > div:nth-child(2) > div > select > option:nth-child(16)']
  end
  def birth_year_dropdown
    birth_day_dropdown=[:css, '#AdultSwimRegisterForm > div > div > div:nth-child(5) > div > div > div:nth-child(3) > div > select']
  end
  def birth_year_option
    birth_day_option=[:css, '#AdultSwimRegisterForm > div > div > div:nth-child(5) > div > div > div:nth-child(3) > div > select > option:nth-child(24)']
  end
  def username_field
    username_field=[:css, '#AdultSwimRegisterForm__username']
  end
  def email_field
    email_field=[:css, '#AdultSwimRegisterForm__email']
  end
  def password_field
    password_field=[:css, '#AdultSwimRegisterForm__password']
  end
  def confirm_password_field
    confirm_password_field=[:css, '#AdultSwimRegisterForm__passwordRetype']
  end
  def terms_privacy_checkbox
    terms_privacy_checkbox=[:css, '#AdultSwimRegisterForm > div > div > div:nth-child(11) > div > div > label > input']
  end
  def submit_button
  submit_button=[:css, '#AdultSwimRegisterForm > div > div > div:nth-child(13) > div > button']
  end
end