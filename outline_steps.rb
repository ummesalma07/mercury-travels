And(/^I enter username (.*)$/) do |username|
  on(SignOnOutline).sign_example(table)
end

And(/^I enter password (.*)$/) do |password|
  on(SignOnOutline).sign_example(table)
end

# Then(/^I should be logged in$/) do
#   pending
# end