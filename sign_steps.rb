
Given(/^I navigate to sign\-in section$/) do
  on(HomePage).sign_label_element.text
end

Given(/^I fill the following username and password$/) do |table|
  # table is a table.hashes.keys # => [:User name, :Zara Khan]
  on(SignOn).sign_details(table)
end

When(/^I click login button$/) do
  on(SignOn).button_element.click
end


Then(/^I would be navigated to flight finder page$/) do
on(FlightFind).flight_find_element.text
end

# And(/^I sleep for "([^"]*)"$/) do |secs|
#   secs=secs.to_i
#   sleep(secs)
# end

# Then(/^I should be logged in$/) do
#   on(FlightFind).flight_find_element.text
# end