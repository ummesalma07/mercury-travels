require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get 'https://www.ultimateqa.com/simple-html-elements-for-automation/'

#wait.until { driver.find_element(:class => "et_pb_toggle_title")}
#driver.find_element("xpath, '//h5[@class="et_pb_toggle_title"]').click

#click by xpath
#driver.find_element(:xpath, '//*[@id="button1"]').click
# driver.navigate.back
# # driver.find_element(:id,'button1').click
# #   driver.navigate.back
# #
# #   driver.find_element(:id,'button2').click
#driver.navigate.back
# #
# #   driver.find_element(:id,'idExample').click
# #   driver.navigate.back
# #
# #  driver.find_element(:link, 'Click me using this link text!').click
# #  driver.navigate.back
# #
# #   driver.find_element(:class_name, 'buttonClass').click
# #   driver.navigate.back
# #
# #   driver.find_element(:name, 'button1').click
# #   driver.navigate.back
# # # driver.scroll(0,250).set
# #
# # #driver.find_element(:xpath,'//*[@id="et_pb_contact_form_0"]/div[2]/form/div/button').click
# #  # relative xpath
# #   driver.find_element(:xpath, "//a [@class = 'et_pb_promo_button']").click
# #   driver.navigate.back
# #
# # driver.find_element(:id, "SimpleElementsLink").click
# #  driver.navigate.back
# #
# #  driver.find_element(:link, '/link-success/').click
# #  driver.navigate.back
# #
# # #checking with valid username and user email
# # driver.find_element(:xpath, '//*[@id="et_pb_contact_name_1"]').send_keys'ummesalma'
# # driver.find_element(:xpath, '//*[@id="et_pb_contact_email_1"][1]').send_keys'ummesalma0717@gmail.com'
# # driver.find_element(:class, 'et_pb_contact_submit').click
# #
# # #select female radio button
# # driver.find_element(:xpath, '//input[@value="female"]').click
# #
# # #select both checkboxes
# # driver.find_element(:xpath,'//input[@value="Bike"]').click
# # driver.find_element(:xpath,'//input[@value="Car"]').click
#

driver.find_element(:xpath,'//option[@value="volvo"]').selected?
driver.find_element(:xpath,'//option[@value="volvo"]').click
#browser.refresh
driver.find_element(:xpath,'//option[@value="saab"]').selected?
driver.find_element(:xpath,'//option[@value="saab"]').click

driver.find_element(:xpath,'//option[@value="opel"]').selected?
driver.find_element(:xpath,'//option[@value="opel"]').click

driver.find_element(:xpath,'//option[@value="audi"]').selected?
driver.find_element(:xpath,'//option[@value="audi"]').click

# select = driver.find_element(:xpath, '//select[@option="value[]"')
# all_options = select.find_elements(:select, "option")
# all_options.each do |value|
#   puts "Value is: " + option.attribute("value")
#   option.click
# end

