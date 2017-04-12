@personal_info
Feature: Personal information
As an investor I should be able to fill in all my details

@per_valid
Scenario: Giving all valid details
Given I am on personal info page
When I enter all valid details
And I click on button
Then I should be able to see the next page

