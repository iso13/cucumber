@javascript
Feature: Search
  As a techcrunch user
  I want to search for information
  So I can be better informed about IT news

  @search
  Scenario: Search for something
    Given I visit "http://www.techcrunch.com"
    #Given I am on the homepage
    When I fill in "s" with "cucumber"
    And I press "Search"
    Then I should see "cucumber"
    And I take a screenshot