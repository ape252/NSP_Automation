@unlisted_bank
Feature: As an investor 
I want to add a funding source by providing the bank details
So that I can use it to purchase a note

@l_valid
Scenario: valid credentials
Given I am on add funding source page
When I dont find the required bank in the list
And I enter all my bank details 
Then Micro deposit should be initiated

@blank_field
Scenario: blank fields
Given I am on add funding source page
When I dont enter any of the data
And I click on submit button
Then I should see the apropriate error message

@account_mismatch
Scenario: account number mismatch
Given I am on add funding source page
When I enter the account number in the account number field
And I enter the wrong account number in confirm account field
Then I should see the error message

@verified_user
Scenario: User not verified
Given the user is not yet verified
When the clicks on my account tab
Then Add funding source tab should be disabled

@multiple_source
Scenario:  Adding more than 6 funding source
Given I have has added 6 funding sources
When I try to add the next funding source 
Then the button should be disabled

@routing_number
Scenario: Routing number mismatch
Given I am on Add funding source page
When I enter the routing number
And if it is not a valid one
Then I should see the error message

@duplicate_account
Scenario: Already existing account
Given the user has provided the account details
When he tries to add the same details again
Then the user should see the message “This funding source already exists”



