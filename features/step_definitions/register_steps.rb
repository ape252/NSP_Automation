Given (/^the user enters all valid credentials$/) do
   visit Signin_page
   on Signup_page do |ele|
   	ele.link
   	sleep 10
   	
   	ele.email=Common.get_details("reg_email")
   	ele.zipcode=Common.get_details("zip")
   	ele.password=Common.get_details("pwd")
end
end

When (/^user submits the request$/) do
	on Signup_page do |ele|
   	ele.sub_b
 end
end

Then /^user see the success message$/ do
  
end


##############################invalid email###############################
Given /^the user has entered an invalid\(wrong format\) email id$/ do
   visit Signin_page
   on Signup_page do |ele|
      ele.link
   ele.email=Common.get_details("reg_invalid_email")
   ele.zipcode=Common.get_details("zip")
end
  
end

When /^user submits request$/ do
   on Signup_page do |ele|
      ele.sub_b
 end
 end

 Then /^user see the error message in email field$/ do
   # on Signup_page do |ele|
   #    ele.invalid_email
   # end
end




##########################invalid zip##################################
Given /^the investor enters an invalid zip code$/ do
   visit Signin_page
   on Signup_page do |ele|
      ele.link
   ele.email=Common.get_details("reg_invalid_zip")
   ele.password=Common.get_details("pwd")
   ele.sub_b
end
  
end

Then /^user see error message in zip field$/ do
#    on Signup_page do |ele|
#       ele.invalid_zip
# end
end

###############blank################################
Given /^the user misses out any of the fields$/ do
   visit Signin_page
   on Signup_page do |ele|
      ele.link
   # ele.email=Common.get_details("reg_email")
   # @browser.input(:id,"email_register").clear
  end
end

Given /^clicks on register button$/ do
   on Signup_page do |ele|
      ele.sub_b
   end
  
end

Then /^user should see error message$/ do
   # on Signup_page do |ele|
   #    ele.blank
   # end

end

###########################password requirement################################
Given /^the user enters all credentials$/ do
   visit Signin_page
   on Signup_page do |ele|
      ele.link
      sleep 10
      
      ele.email=Common.get_details("reg_email")
      ele.zipcode=Common.get_details("zip")
      ele.password=Common.get_details("invalid_pwd")
  end
end

When /^the user submits the request$/ do
   on Signup_page do |ele|
      ele.sub_b
   end
end

When /^the password given does not meet the requirement$/ do
  
end

Then /^it should show the message$/ do
   # on Signup_page do |ele|
   #    ele.password_req
   # end
end

####################################registered email######################
Given /^the user enters an email id which was already registered$/ do
   visit Signin_page
   on Signup_page do |ele|
      ele.link
    ele.email=Common.get_details("old_email")
      ele.zipcode=Common.get_details("zip")
      ele.password=Common.get_details("pwd")
  end
 
end

Then /^it show the flash message$/ do
  
  end


