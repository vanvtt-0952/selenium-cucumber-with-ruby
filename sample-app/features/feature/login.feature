Feature: Login Action

  Scenario: Login Scenario input data
    Given I launch http://the-internet.herokuapp.com/login
    And I enter username
    And I enter password
    When I click Login button
    Then I see message success

  Scenario: Login success by data driven
    And I enter "tomsmith" and "SuperSecretPassword!"
    When I click Login
    Then I see message

  Scenario: Login success by data table
    Given I enter username and password to login
      |username|password|
      |tomsmith|SuperSecretPassword!|
    When I click Login button to login
    Then I see success notification
