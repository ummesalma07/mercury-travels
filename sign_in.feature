@Login
Feature:Login functionality

  Background:Using firefox browser to launch the site
    Given I launch mercury tours site

#    Scenario:Login from Sign-on page
#      Given I click the sign-in button
#      When I enter username and password
#      Then I would be signed in


  Scenario:Login with username and password
    Given I navigate to sign-in section
    And I fill the following username and password
      | User name        | Zara Khan   |
      | Password         | zara123     |
    When I click login button
  Then I would be navigated to flight finder page

#    And I sleep for "5"
#
#  Scenario Outline: Login with username and password
#    Given I enter username <username>
#    And I enter password <password>
#    When I click login button
##    Then I should be logged in
#    Examples: :
#  |username    | password    |
#  |zara        |zara567      |
#  |umme        |sal234       |