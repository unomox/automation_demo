require 'rubygems'
require 'selenium-webdriver'
require 'rspec'
require 'open-uri'

Dir[File.join(__dir__, 'actions', '*.rb')].each { |file| require file }
Dir[File.join(__dir__, 'pages', '*.rb')].each { |file| require file }

loginpage = LoginPage.new

Given("I have navigated to the homepage") do
  navigate(homepage_url)
end

Given("I enter my username") do
  input_text(loginpage.email_address_field,wiw_username)
end

Given("I enter my password") do
  input_text(loginpage.password_field,wiw_password)
end

Given("I click the Log In button") do
  input_click(loginpage.log_in_button)
end

Then("I should see I am logged in") do
  assertion_text("My Workplaces")
end


Given("I have downloaded the file") do
  #open file from URL
  file = open("https://i.pinimg.com/236x/d4/7e/43/d47e4394374f3434e84e167bcd2d409d.jpg")
  #copy file to disk 'test.jpg' can be replaced with a file path '/path/to/file' 
  IO.copy_stream(file, 'test.jpg')
end

Then("I can see the file size is correct") do
  #get filesize of downloaded file
  compressed_file_size = File.size('test.jpg')
  
  #display filesize in bytes
  puts "file size is #{compressed_file_size} bytes"
  
  #load downloaded and archived file
  hash1 = File.read('test.jpg')
  hash2 = File.read('archive.jpg')
  
  #compare the two files
  if hash1 != hash2
	assert fail "downloaded file not equal to archive"
  end
  
end