Feature: User can create compose message
As a user
In order to communicate with my contacts
I need to be able to send a message

    Background:
        Given the following user exist:
            | name   | email          | password  |
            | dmybob | dmybob@bob.bob | bobbobbob |
            | user   |macd@ggy.ggyg   | password  |  
        Given I am logged in as "dmybob"
        Given I am on the inbox
        And I click on "Compose"
 
    Scenario: Composing a message and sending it to recipient [Happy path] 
        When I Choose "Recipient" with "user"
        And I fill in "Subject" with "bird"
        And I fill in "Type your message here" with "parrot is a bird"
        And I click on "Send Message"
        Then I should see "Your message was successfully sent"

    Scenario: Composing a message without a subject [Sad path] 
        When I Choose "Recipient" with "user"
        And I fill in "Type your message here" with "parrot is a bird"
        And I click on "Send Message"
        Then I should see "Messages must have a recipient, subject and message!"
    
    Scenario: Composing a message without a message [Sad path] 
        When I Choose "Recipient" with "user"
        And I fill in "Subject" with "bird"
        And I click on "Send Message"
        Then I should see "Messages must have a recipient, subject and message!"
    
    Scenario: Composing a message without selecting a recipient [Sad path] 
        When I fill in "Subject" with "bird"
        And I fill in "Type your message here" with "parrot is a bird"
        And I click on "Send Message"
        Then I should see "Messages must have a recipient, subject and message!"