@javascript
Feature: Search
  As a user
  I want to do something
  So I can get some benefit

  @search
  Scenario: Search for something
    Given I am on the homepage
    When I fill in "s" with "cucumber"
    And I press "Search"
    Then I should see "Search"
    And I take a screenshot
    And I wait 3 secs
