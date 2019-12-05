Feature: User can view sent message
As a user
In order to know what messages I have composed
I want to view a sent page

Background:
        Given the following user exist:
            | name   | email          | password  |
            | dmybob | dmybob@bob.bob | bobbobbob |
            | user   |macd@ggy.ggyg   | password  |  
        And I am logged in as "dmybob"
        And I am on the inbox
        And I click on "Compose"
        When I Choose "Recipient" with "user"
        And I fill in "Subject" with "bird"
        And I fill in "Type your message here" with "parrot is a bird"
        And I click on "Send Message"
        Then I should see "Your message was successfully sent"
        And I click on "Sent"

    Scenario: To view sent message 
        Then I should see "parrot is a bird"
        And I should see "Subject: bird"
        And I should see "dmybob" 