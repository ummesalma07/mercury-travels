require 'watir'
require 'page-object'
require 'rspec'

World(PageObject::PageFactory)

def launch_browser
  browsername=ENV('browser')
  case browsername
  when 'chrome'
    @browser=browser.new::watir :chrome , options:{detach:true}
  when 'firefox'
    @browser=browser.new::watir :firefox
  when 'ie'
    @browser=browser.new::watire :ie
  else
    "#{browsername} not defined please enter Chrome,firefox or ie"
  end
end
