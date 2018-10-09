Given(/^I launch mercury tours site$/) do
  @browser = Watir::Browser.new :firefox
  @browser.goto ("http://newtours.demoaut.com/")
end

When(/^I click register$/) do
  on(HomePage).register_link_element.click
end

Then(/^I would be on the register page$/) do
  expect on(RegisterPage).submit_button.eql?'register'
end

Given(/^I sleep "([^"]*)"$/) do |secs|
  secs=secs.to_i
  sleep(secs)
end

And(/^I complete the registration form with the following details$/) do |table|
  # table is a table.hashes.keys # => [:First Name, :Zara]
  on(RegisterPage).registration_form(table)
end

#selecting Saudi Arabia option from the dropdown menu
And(/^I select (\d+)th for country$/) do |index|
  on(RegisterPage).select_country(index)
end


And(/^I click submit on "([^"]*)"$/) do |page_name|
    page_name.gsub!(" ","")
  on(page_name).submit_element.click
end

Then(/^I would see the success message$/) do
  message = on(RegisterPage).success_message_element.text
  expect(message).to include('Dear ')
end

# Given(/^I click the sign\-in link on register page$/) do
#   on(RegisterPage).sign_in.click
# end
#
# Then(/^I would be able to see the sign\-in page$/) do
#   expect on(SignOn).user.eql?'User Name:'
# end