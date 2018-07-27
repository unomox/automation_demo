require 'rubygems'
require 'selenium-webdriver'
require 'rspec'

def assertion_text (text)
    wait.until {
      @driver.page_source.include? text
    }
end
