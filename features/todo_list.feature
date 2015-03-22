Feature: to-do list

  Scenario: See what I've got to do
    Given I have some items in my to-do list
    When I go to the home page
    Then I can see all the items

  Scenario: Add an item to my to-do list
    When I add a to-do item
    Then it appears in the list

  Scenario: Mark an item as done
    Given I have some items in my to-do list
    When I click on an item
    Then it is marked as done
