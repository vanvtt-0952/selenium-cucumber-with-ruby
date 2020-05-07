require "selenium-webdriver"
require "dotenv"
require "byebug"
require "rspec"

include Selenium

Dotenv.load("settings.env")

Selenium::WebDriver::Firefox.driver_path = ENV["gecko_driver"]

driver = Selenium::WebDriver.for :firefox


Before do
  @browser = driver
end

at_exit do
  driver.quit
end
