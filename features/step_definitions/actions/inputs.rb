require 'rubygems'
require 'selenium-webdriver'
require 'rspec'

def input_click(select_element)
    button = wait.until {
      element = @driver.find_element(select_element[0],select_element[1])
      element if element.displayed?
    }
    button.click
end

def input_text(select_element,text)
    input = wait.until {
      element = @driver.find_element(select_element[0],select_element[1])
      element if element.displayed?
    }
    input.send_keys(text)
end

def navigate(url)
  @driver.navigate.to(url)
end