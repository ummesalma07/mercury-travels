require 'watir'
require 'page-object'

class FlightFind
  include PageObject
  element(:flight_find, :xpath =>'//img[@src="/images/masts/mast_flightfinder.gif"]')
end