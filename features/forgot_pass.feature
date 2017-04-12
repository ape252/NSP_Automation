@forgot_password
Feature: As a user when I click on forgot password link I should get an email
Scenario: forgot pass
Given I am on NSP website
When I click on forgot password link
And I enter the email ID 
Then I should be able to the success message
