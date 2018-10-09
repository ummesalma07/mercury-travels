Feature: Launching mercury travels webpage

  Background: Using chrome browser to launch the site
    Given I launch mercury tours site
    When I click register
    Then I would be on the register page

    Scenario: I fill the registration page
      Given I sleep "5"
      And I complete the registration form with the following details
        | First Name       | Zara        |
        | Last Name        | Khan        |
        | Phone            | 25453674328 |
        | Email            | zara@gmail  |
        | Address          | 5788 Murray |
        | City             | Dublin      |
        | State            | Ohio        |
        | Postal Code      | 43016       |
        | User name        | Zara Khan   |
        | Password         | zara123     |
        | Confirm Password | zara123     |
      And I select 200th for country
      And I click submit on "Register Page"
      Then I would see the success message

#Scenario I am redirected to sign-in page
#  Given I click the sign-in link on register page
#  Then I would be able to see the sign-in page
