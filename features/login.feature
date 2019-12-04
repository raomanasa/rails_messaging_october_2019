Feature: Login to mailbox
    As a user
    In order to access my mailbox
    I want to login

    Background:
        Given I am on the Login page
        And the following user exists
            | name | email         | password |
            | user | user@user.com | password |

    Scenario: Successfully log in to mailbox
        Then I fill "Email" with "user@user.com"
        And I fill in "Password" with "password"
        And I click "Log in"
        And I should see "Signed in successfully."