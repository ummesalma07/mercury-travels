require 'watir'
require 'page-object'

class HomePage
  include PageObject
  link(:sign_on_link,:href=>'mercurysignon.php')
  a(:register_link,:text=>'REGISTER')

 b(:sign_label,:text=>'sign-in here')
end