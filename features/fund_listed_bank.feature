@bank_list
Feature: As an investor 
I want to choose a bank from the list 
So that I can add a funding source to purchase a note

@f_valid
Scenario: Complete flow with valid credentials
Given the user is verified 
When he clicks on My account tab
And clicks on Add funding source button
And he select one of the bank from the list
And he enters username 
And he enters password
Then he should see the account details tab 
##############################MANUALLY TESTED##################################
# @username_pwd
# Scenario: Enabling Username and Password field
# Given the user is on funding source tab
# When the user selects any one of the bank from the list
# Then the username and password field should be enabled

# @f_invalid
# Scenario: Invalid username and password
# Given the user selects any one of the bank from the list
# When he enters invalid email/password
# Then he should see the message “Invalid credentials”

# @wrong_bank
# Scenario: On selecting the wrong bank
# Given the user is on funding source tab
# When the user selects a wrong bank from the list
# And he enters the credentials 
# Then user must see the message “Invalid credentials”

# @verified
# Scenario: Unverified users
# Given the user is not yet verified
# When the clicks on my account tab
# Then Add funding source tab should be disabled

# @multiple_source
# Scenario:  Adding more than 6 funding source
# Given the user has added 6 funding sources
# When he tries to add the next funding source 
# Then the button should be disabled

# @existing_account
# Scenario: Already existing account
# Given the user has provided the account details
# When he tries to add the same details again
# Then the user should see the message “This funding source already exists”
