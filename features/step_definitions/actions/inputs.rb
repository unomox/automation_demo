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

def input_select(select_menu,opt)
  select = wait.until {
    element = @driver.find_element(select_menu[0],select_menu[1])
    element if element.displayed?
  }
  select.click

  option = wait.until {
    element = @driver.find_element(opt[0],opt[1])
    element if element.displayed?
  }
  option.click
end

def navigate(url)
  @driver.navigate.to(url)
end

def input_dropdown(select_element, option)
  input = wait.until {
    element = @driver.find_element(select_element[0],)
    element if element.displayed?
  }
  input.click(option)
end

def input_switch_window(window)
    first_window = @driver.window_handles[0]
    target_window = @driver.window_handles[window]
    @driver.switch_to.window(target_window)
    @driver.close
    @driver.switch_to.window(first_window)
end