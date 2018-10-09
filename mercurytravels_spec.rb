require 'rspec'
require 'selenium-webdriver'

describe 'newtours_demoaut_com_scenarios' do
  before(:all) do
    # Selenium::WebDriver::Chrome.driver_path = "/usr/local/bin/chromedriver"

    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.timeouts.implicit_wait = 130
    @driver.manage.window.maximize
    @driver.navigate.to "http://newtours.demoaut.com/"
  end
  context 'registration' do
    it 'navigating to registration page' do
      registration = @driver.find_element :link_text,"REGISTER"
      registration.click
      expect(@driver.title).to eq ('Register: Mercury Tours')
      # Explicit waits are always preferable than implicit waits. Using sleep only for demo purpose and it should not be used while coding
      #sleep 2
    end
    it 'validation with correct data' do
      (@driver.find_element :name,'firstName').send_keys 'Joey'
      (@driver.find_element :name,'lastName').send_keys 'Tribbiani'
      (@driver.find_element :name,'phone').send_keys '2345781234'
      (@driver.find_element :id,'userName').send_keys 'Joey.Tribbiani@friends.com'
      (@driver.find_element :name,'address1').send_keys 'Central park apartments'
      (@driver.find_element :name,'city').send_keys 'NewYork'
      (@driver.find_element :name,'state').send_keys 'NewYork'
      (@driver.find_element :name,'postalCode').send_keys '10101'
      (@driver.find_element :id,'email').location_once_scrolled_into_view
      (@driver.find_element :id,'email').send_keys 'JoeyT1'
      (@driver.find_element :name,'password').send_keys 'FunnyMan@123'
      (@driver.find_element :name,'confirmPassword').send_keys 'FunnyMan@123'
      # Explicit waits are always preferable than implicit waits. Using sleep only for demo purpose and it should not be used while coding
      sleep 2
      (@driver.find_element :name,'register').click
      message = @driver.find_element :xpath,"//div//table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[3]/a/font/b"
      expect(message.text.irequire 'rspec'
      require 'selenium-webdriver'

      describe 'newtours_demoaut_com_scenarios' do
        before(:all) do
          # Selenium::WebDriver::Chrome.driver_path = "/usr/local/bin/chromedriver"

          @driver = Selenium::WebDriver.for :chrome
          @driver.manage.timeouts.implicit_wait = 130
          @driver.manage.window.maximize
          @driver.navigate.to "http://newtours.demoaut.com/"
        end
        context 'registration' do
          it 'navigating to registration page' do
            registration = @driver.find_element :link_text,"REGISTER"
            registration.click
            expect(@driver.title).to eq ('Register: Mercury Tours')
            # Explicit waits are always preferable than implicit waits. Using sleep only for demo purpose and it should not be used while coding
            #sleep 2
          end
          it 'validation with correct data' do
            (@driver.find_element :name,'firstName').send_keys 'Joey'
            (@driver.find_element :name,'lastName').send_keys 'Tribbiani'
            (@driver.find_element :name,'phone').send_keys '2345781234'
            (@driver.find_element :id,'userName').send_keys 'Joey.Tribbiani@friends.com'
            (@driver.find_element :name,'address1').send_keys 'Central park apartments'
            (@driver.find_element :name,'city').send_keys 'NewYork'
            (@driver.find_element :name,'state').send_keys 'NewYork'
            (@driver.find_element :name,'postalCode').send_keys '10101'
            (@driver.find_element :id,'email').location_once_scrolled_into_view
            (@driver.find_element :id,'email').send_keys 'JoeyT1'
            (@driver.find_element :name,'password').send_keys 'FunnyMan@123'
            (@driver.find_element :name,'confirmPassword').send_keys 'FunnyMan@123'
            # Explicit waits are always preferable than implicit waits. Using sleep only for demo purpose and it should not be used while coding
            sleep 2
            (@driver.find_element :name,'register').click
            message = @driver.find_element :xpath,"//div//table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[3]/a/font/b"
            expect(message.text.include? "Note: Your user name is JoeyT1").to eq(true)
            # Explicit waits are always preferable than implicit waits. Using sleep only for demo purpose and it should not be used while coding
            sleep 2
          end
        end
        context 'viewing pages' do
          it 'navigating to flights page' do
            (@driver.find_element :link_text,'Flights').click
            # Explicit waits are always preferable than implicit waits. Using sleep only for demo purpose and it should not be used while coding
            sleep 2
            expect(@driver.title).to eq('Find a Flight: Mercury Tours:')
          end
          it 'navigating to hotels page' do
            (@driver.find_element :link_text,'Hotels').click
            # Explicit waits are always preferable than implicit waits. Using sleep only for demo purpose and it should not be used while coding
            sleep 2
            expect(@driver.title).to eq('Under Construction: Mercury Tours')
          end
          it 'navigating to car rentals page' do
            (@driver.find_element :partial_link_text,'Rentals').click
            # Explicit waits are always preferable than implicit waits. Using sleep only for demo purpose and it should not be used while coding
            sleep 2
            expect(@driver.title).to eq('Under Construction: Mercury Tours')
          end
        end
        endnclude? "Note: Your user name is JoeyT1").to eq(true)
      # Explicit waits are always preferable than implicit waits. Using sleep only for demo purpose and it should not be used while coding
      sleep 2
    end
  end
  context 'viewing pages' do
    it 'navigating to flights page' do
      (@driver.find_element :link_text,'Flights').click
      # Explicit waits are always preferable than implicit waits. Using sleep only for demo purpose and it should not be used while coding
      sleep 2
      expect(@driver.title).to eq('Find a Flight: Mercury Tours:')
    end
    it 'navigating to hotels page' do
      (@driver.find_element :link_text,'Hotels').click
      # Explicit waits are always preferable than implicit waits. Using sleep only for demo purpose and it should not be used while coding
      sleep 2
      expect(@driver.title).to eq('Under Construction: Mercury Tours')
    end
    it 'navigating to car rentals page' do
      (@driver.find_element :partial_link_text,'Rentals').click
      # Explicit waits are always preferable than implicit waits. Using sleep only for demo purpose and it should not be used while coding
      sleep 2
      expect(@driver.title).to eq('Under Construction: Mercury Tours')
    end
  end
end