Given (/^the user enters all valid credentials$/) do
   visit Signin_page
   on Signup_page do |ele|
   	ele.link
   	sleep 10
   	ele.firstname=Common.get_details("fname")
   	ele.lastname=Common.get_details("lname")
   	ele.zipcode=Common.get_details("zip")
   	ele.email=Common.get_details("emailid")
   	ele.password=Common.get_details("pwd")
   	ele.confirm_password=Common.get_details("pwd_conf")
end
end

When (/^user submits the request$/) do
	on Signup_page do |ele|
	ele.check 
	sleep 5
   	ele.sub
 end
end

Then (/^user sees "(.*?)"$/) do |arg1|

end


Given /^the user has entered an invalid\(wrong format\) email id$/ do
  
end

When /^user submits request$/ do
 
end

Given /^the investor enters an invalid zip code$/ do
  
end

Given /^the user misses out any of the fields$/ do
  
end

Given /^clicks on register button$/ do
  
end

Then /^it should show message “this field is mandatory” for all the blank fields$/ do
  
end

Given /^the User enters a Password in “password field”$/ do
  end

Given /^he then he enters a different password in “Confirm password” field$/ do
  
end

Then /^User should see the message “Password  and confirm password does not match”$/ do
  
end

