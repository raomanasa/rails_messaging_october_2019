Feature: User can create compose message

As a user
In order to communicate with my contacts
I need to be able to send a message

    Background:
        Given I am on the Login page
        Given the following user exist:
            | name   | email          | password  |
            | dmybob | dmybob@bob.bob | bobbobbob |
            | user   |macd@ggy.ggyg   | password  |  
        
        When I fill in "Email" with "dmybob@bob.bob "
        And I fill in "Password" with "bobbobbob"
        And I click on "Log in"
        Then I should see "Signed in successfully."
        Given I am on the inbox
        And I click on "Compose"
 
Scenario:Composing a message and sending it to recipient
        
        When I Choose "Recipient" with "user"
        And I fill in "Subject" with "bird"
        And I fill in "Message" with "parrot is a bird"
        And I click on "Send message"
        Then I should see "your message was successfully sent"