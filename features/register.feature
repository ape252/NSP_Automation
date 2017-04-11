@register 
  Feature:  register on NSP
    As an investor, 
    I want to register on NSP, 
    so that I can make some investments

@rvalid
Scenario: When all valid data is given
Given the user enters all valid credentials
 When user submits the request
 Then user see the success message

@invalid_remail
Scenario: When user gives an invalid email ID
Given the user has entered an invalid(wrong format) email id
 When user submits request
 Then user see the error message in email field

@invalid_zip
Scenario: When user gives an invalid Zipcode
Given the investor enters an invalid zip code
When user submits request
Then user see error message in zip field

@blank
Scenario: When user gives blank data
Given the user misses out any of the fields 
And clicks on register button
Then user should see error message

@pwd
Scenario: To check for password requirement
Given the user enters all credentials
When the user submits the request
And the password given does not meet the requirement
Then it should show the message
