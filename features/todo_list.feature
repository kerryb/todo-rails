Feature: to-do list

  Scenario: See what I've got to do
    Given I have some items in my to-do list
    When I go to the home page
    Then I can see all the items
