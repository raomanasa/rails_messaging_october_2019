Feature: User can create account
    As a user
    In order to use the service
    I need to be able to create an account

    Background:
        Given I am on the landing page
        And I click on "Sign up"

    Scenario: Successfully creates an account
        When I fill in "Name" with "Bob"
        And I fill in "Email" with "bob@bob.bob"
        And I fill in "Password" with "bobbobbob"
        And I fill in "Password confirmation" with "bobbobbob"
        And I click on "Create"
        Then I should be on the landing page
        And I should see "Welcome! You have signed up successfully."
        And I should see "Hello, Bob"
