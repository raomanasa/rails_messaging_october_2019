Feature: User can empty inbox
  As a user
  In order to clean up my inbox
  I want to be able to delete messages

  Background:
    Given the following user exist:

      | name   | email          | password | id |
      | dummy1 | user1@mail.com | password | 1  |
      | dummy2 | user2@mail.com | password | 2  |

    And the inbox has content
    And I am logged in as "dummy2"

  Scenario: Moves received message to trash
    Then I am in the inbox
    And I click on "View"
    And I click on "Move to trash"
    And I click on "Trash"
    Then I should see "text_text"

  Scenario: Moves sent message to trash
    And I go to the sent page
    And I click on "View"
    And I click on "Move to trash"
    And I click on "Trash"
    Then I should see "text_text"

