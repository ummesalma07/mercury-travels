@Before("@Login")do
  launch_browser
  launch_applications
end

def launch_application
  @browser.goto("http://newtours.demoaut.com/mercurywelcome.php")
end

@After()do
  browser.close
end