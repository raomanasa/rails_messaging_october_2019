Feature: User can create account
    As a user
    In order to use the service
    I need to be able to create an account

    Background:
        Given the following user exist:
            | name   | email          | password  |
            | dmybob | dmybob@bob.bob | bobbobbob |

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


    Scenario: Unable to set up account (missing email)
        When I fill in "Name" with "Bob"
        And I fill in "Password" with "bobbobbob"
        And I fill in "Password confirmation" with "bobbobbob"
        And I click on "Create"
        Then I should see "Email can't be blank"

    Scenario: Unable to set up account (Email has already been taken)
        When I fill in "Name" with "bob"
        And I fill in "Email" with "dmybob@bob.bob"
        And I fill in "Password" with "bobbobbob"
        And I fill in "Password confirmation" with "bobbobbob"
        And I click on "Create"
        Then I should see "Email has already been taken"

    Scenario: Unable to set up account (Password can't be blank)
        When I fill in "Name" with "bob"
        And I fill in "Email" with "dmybob@bob.bob"
        And I click on "Create"
        Then I should see "Password can't be blank"

    Scenario: Unable to set up account (Password is too short)
        When I fill in "Name" with "bob"
        And I fill in "Email" with "bob@bob.bob"
        And I fill in "Password" with "bobbob"
        And I fill in "Password confirmation" with "bobbob"
        And I click on "Create"
        Then I should see "Password is too short"

    Scenario: Unable to set up account (Password confirmation doesn’t match)
        When I fill in "Name" with "bob"
        And I fill in "Email" with "bob@bob.bob"
        And I fill in "Password" with "bobbobbob"
        And I fill in "Password confirmation" with "bobbob"
        And I click on "Create"
        Then I should see "Password confirmation doesn't match Password"

    Scenario: Unable to set up account (Name can’t be blank)
        When I fill in "Email" with "bob@bob.bob"
        And I fill in "Password" with "bobbobbob"
        And I fill in "Password confirmation" with "bobbobbob"
        And I click on "Create"
        Then I should see "Name can't be blank"

    Scenario: Unable to set up account (Name is too long)
        When I fill in "Name" with "bob bob bob"
        And I fill in "Email" with "bob@bob.bob"
        And I fill in "Password" with "bobbobbob"
        And I fill in "Password confirmation" with "bobbobbob"
        And I click on "Create"
        Then I should see "Name is too long"

    Scenario: Unable to set up account (Name has already been taken)
        When I fill in "Name" with "dmybob"
        And I fill in "Email" with "bob@bob.bob"
        And I fill in "Password" with "bobbobbob"
        And I fill in "Password confirmation" with "bobbobbob"
        And I click on "Create"
        Then I should see "Name has already been taken"
