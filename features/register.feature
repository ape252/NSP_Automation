@register 
  Feature:  register on NSP
    As an investor, 
    I want to register on NSP, 
    so that I can make some investments

@valid
Scenario: When all valid data is given
Given the user enters all valid credentials
 When user submits the request
 Then user sees "Please check your email (email id), to complete your registration"

@invalid_email
Scenario: When user gives an invalid email ID
Given the user has entered an invalid(wrong format) email id
 When user submits request
 Then user sees "Please enter a valid email id"

@invalid_zip
Scenario: When user gives an invalid Zipcode
Given the investor enters an invalid zip code
 When user submits request
 Then user sees "Invalid zip code"

@blank
Scenario: When user gives blank data
Given the user misses out any of the fields 
And clicks on register button
Then it should show message “this field is mandatory” for all the blank fields  



@pwd
Scenario: When Password and confirm password does not match
Given the User enters a Password in “password field”
And he then he enters a different password in “Confirm password” field
Then User should see the message “Password  and confirm password does not match” 



# Scenario 7:  When the user clicks on confirmation link for first time
# Given the confirmation link has not expired
#  When the investor clicks on the registration link 
# Then investor is asked to log into the system



# Scenario 8: When the token is expired
# Given the confirmation link has expired
#  When the investor clicks on the registration link after 24 hours
#  And it should show the message “This link has been expired. Please restart the registration process”
#  Then the user data should be flushed out of the Database


# Scenario 9 : When the user clicks on token for 2nd time
# Given the user clicks on the confirmation link for the second time
# Then it show the message “Link has been expired”




