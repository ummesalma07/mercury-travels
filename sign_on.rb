require 'watir'
require 'page-object'

class SignOn
  include PageObject
  element(:submit_button, :xpath => '//input[@name="register"]')
  #element(:user,:xpath=>'//b[@text="User Name:"]')

  text_field(:user_name, :name => 'userName')
  text_field(:password, :name => 'password')

  button(:login, :xpath =>'//input[@name="login"]')

  def sign_details(table)
    table.raw
    user_name_element.send_keys(table.raw[0][1])
    password_element.send_keys(table.raw[1][1])
    button_element.click
  end

end

# class SignOnOutline
#   include PageObject
#   element(:submit_button, :xpath => '//input[@name="register"]')
#   #element(:user,:xpath=>'//b[@text="User Name:"]')
#
#   text_field(:user_name, :name => 'userName')
#   text_field(:password, :name => 'password')
#
#   button(:login, :xpath =>'//input[@name="login"]')
# end
  # def sign_example(table)
  #   table.raw
  #   user_name_element.send_keys(table.raw[0][1])
  #   password_element.send_keys(table.raw[1][1])
  #   button_element.click
  # end