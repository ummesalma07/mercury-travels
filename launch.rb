#launch browser using watir

require "watir"
browser = Watir::Browser.new :firefox
browser.goto("https://www.google.com")

#Launch browser using selenium

#
# require 'selenium-webdriver'
#
# driver = Selenium::WebDriver.for :firefox
# driver.get 'https://www.google.com'
