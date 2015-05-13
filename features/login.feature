@login
Feature: Login
  As a OneLogin User
  I want to be able to log into my account
  So I can see my apps

  Scenario: Login with valid userid/pswd
    Given I visit "https://cucumber.onelogin.com"
    When I fill in "email" with "david.tran+test@onelogin.com"
    And I fill in "password" with "Password0126"
    And I press "Log in"
    Then I should see "Netflix"
