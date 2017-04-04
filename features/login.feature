@signin
Feature: As a user I should be able to sign in

@valid
Scenario: sign in
Given I am on NSP website
When I enter all my credentials and click on sign in button
Then I should see homepage

@invalid_email
Scenario: invalid sign in
Given I am on NSP website
When I enter invalid email ID 
And I click on sign in button
Then I should see the error message displayed

@confirm
Scenario: user not confirmed
Given I am on NSP website
When I enter the email ID which is not confirmed
And I click on sign in button
Then I should see the message

@session
Scenario: session timeout
Given I am on NSP website
When I enter all my credentials and click on sign in button
And I enter the application
And I be inactive for more than 15mins
Then I should be logged out of the system


