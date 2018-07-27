require 'rubygems'
require 'selenium-webdriver'
require 'rspec'

def wait
  wait = Selenium::WebDriver::Wait.new(:timeout => 15)
end