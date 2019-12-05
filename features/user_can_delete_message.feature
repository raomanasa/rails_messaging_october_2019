Feature: User can empty inbox
  As a user
  In order to clean up my inbox
  I want to be able to delete messages

  Background:
    Given the following user exist:

      | name   | email          | password  | id |
      | dmybob | dmybob@bob.bob | bobbobbob | 1  |
      | dmypip | dmypip@bob.bob | pippippip | 2  |

    Given the inbox has content
    And I am on the Login page

  Scenario: Moves received message to trash
    Then I fill in "Email" with "dmypip@bob.bob"
    And I fill in "Password" with "pippippip"
    And I click on "Log in"
    And I click on "Inbox"
    And I click on "View"
    Then I click on "Move to trash"
    And I click on "Trash"
    Then I should see "For ever yours"

  Scenario: Moves sent message to trash
    Then I fill in "Email" with "dmybob@bob.bob"
    And I fill in "Password" with "bobbobbob"
    And I click on "Log in"
    And I go to the sent page
    And I click on "View"
    Then I click on "Move to trash"
    And I click on "Trash"
    Then I should see "For ever yours"

