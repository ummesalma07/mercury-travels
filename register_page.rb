require 'watir'
require 'page-object'

class RegisterPage
  include PageObject
  element(:submit_button, :xpath => '//input[@name="register"]')

  text_field(:first_name, :name => 'firstName')
  text_field(:last_name, :name => 'lastName')
  text_field(:phone_name, :name => 'phone')
  text_field(:email_id, :id => 'userName')
  text_field(:address_name, :name => 'address1')
  text_field(:city_name, :name => 'city')
  text_field(:state_name, :name => 'state')
  text_field(:postal_code, :name => 'postalCode')
  elements(:country_name, :xpath => '//select[@name="country"]/option')
  text_field(:user_name, :id => 'email')
  text_field(:password, :type => 'password')
  text_field(:confirm_password, :name => 'confirmPassword')
  button(:submit, :name => 'register')
  b(:sucess_message, :tag_name=>'b')


  def registration_form(table)
    table.raw
    first_name_element.send_keys(table.raw[0][1])
    last_name_element.send_keys(table.raw[1][1])
    phone_name_element.send_keys(table.raw[2][1])
    email_id_element.send_keys(table.raw[3][1])
    address_name_element.send_keys(table.raw[4][1])
    city_name_element.send_keys(table.raw[5][1])
    state_name_element.send_keys(table.raw[6][1])
    postal_code_element.send_keys(table.raw[7][1])
#  select_list(:country_name,:xpath=>'//option[@value="200"]').click
    user_name_element.send_keys(table.raw[8][1])
    password_element.send_keys(table.raw[10][1])
    confirm_password_element.send_keys(table.raw[10][1])
  end

  def select_country(index)
    country_name_elements[index].click
  end

# element(:sign_in,:xpath=>'//a[@href="mercurysignon.php"]')

  end