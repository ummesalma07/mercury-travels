require 'watir'
browser = Watir::Browser.new :firefox
browser.goto("https://www.ultimateqa.com/simple-html-elements-for-automation/")
#Watir.default_timeout = 60

browser.button(id:'button1').click
  browser.back
browser.button(id:'button2').click
  browser.back

  browser.a(id:'idExample').click
  browser.back

 browser.button(class:'buttonClass').click
 browser.back

 browser.button(name:'button1').click
 browser.back

browser.a(href:'../link-success/').click
 browser.back

 browser.a(href:'/button-success').click
 browser.back

#toggle
# browser.text.include? 'Advanced Controls'
# #browser.button(class: 'et_pb_toggle_title').wait_until(&:enabled?)
#  #browser.button(xpath:'//*[@id="post-909"]/div/div[3]/div/div[2]/div[2]').enabled?
# #
#  #checking textfields with invalid input
#  browser.text_field(xpath: '//*[@id="et_pb_contact_name_1"]').set("xyz")
#  browser.text_field(xpath: '//*[@id="et_pb_contact_email_1"][1]').set("abc")
#  browser.button(class: 'et_pb_contact_submit').click
#
#  #clearing the textfields and refreshing the browser
#  browser.text_field(xpath: '//*[@id="et_pb_contact_name_1"]').clear
#  browser.text_field(xpath: '//*[@id="et_pb_contact_email_1"][1]').clear
#  browser.refresh
#  #browser.scroll.to :center
#
#  #checking textfields with valid input
#  browser.text_field(xpath: '//*[@id="et_pb_contact_name_1"]').set("ummesalma")
#  browser.text_field(xpath: '//*[@id="et_pb_contact_email_1"][1]').set("ummesalma0717@gmail.com")
#  browser.button(class: 'et_pb_contact_submit').click
#
# #checking the function of radio buttons
# #browser.button(xpath:'//input[@value="male"').click
# browser.radio(xpath: '//input[@value="female"]').click
# #browser.radio(xpath: '//input[@value="female"]').clear
# #to clear the radiobutton
# #browser.refresh
#
# # #checkbox function
# browser.checkbox(xpath:'//input[@value="Bike"]').click
#  browser.checkbox(xpath:'//input[@value="Car"]').click
#
# # #clearing the checkbox
#  browser.checkbox(xpath:'//input[@value="Bike"]').clear
#  browser.checkbox(xpath:'//input[@value="Car"]').clear
#
# #dropdownmenu
# #browser.select_list(xpath: '//option[@value="saab"]').select "saab"
# #
# # #to open a  dropdown menu
# browser.element(xpath: '//div[@class="et_pb_blurb_description"]/select').click
# #
# # #to select the particular option
#  browser.element(xpath: '//div[@class="et_pb_blurb_description"]/select/option[3]').click
#
# #looping around in a dropdown menu
# x=browser.elements(xpath: '//div[@class="et_pb_blurb_description"]/select/option')
#  x.each do |i|
#    puts i.attribute('value')
#  end
#
# # #Table
# # table = browser.table(id: 'htmlTableid')
# # table.row[0]
# # puts "Total contents in row"+table.row[0].text
#
