Given (/^I am on NSP website$/) do
 visit Signin_page
end

When (/^I enter all my credentials and click on sign in button$/) do
   on Signin_page do |page|
	 page.username=Common.get_details("uname")
	 page.password=Common.get_details("pwd")
	 page.signin_btn
	 sleep 2
  end
end

Then /^I should see homepage$/ do
 
end

###################################invalid##########################
# 3.times do
When /^I enter invalid email ID$/ do
	on Signin_page do |page|
	 page.username=Common.get_details("invalid_email")
	 page.password=Common.get_details("invalid_pwd")
	 
  end
  
end

When /^I click on sign in button$/ do
on Signin_page do |page|
	page.signin_btn
	 sleep 2
end
end

Then /^I should see the error message displayed$/ do
	on Signin_page do |page|
	page.invalid_login
end 
end
# end
################################confirm###############################
When /^I enter the email ID which is not confirmed$/ do
	on Signin_page do |page|
	 page.username=Common.get_details("confirm_email")
	 page.password=Common.get_details("pwd")
	 
  end
end

Then /^I should see the message$/ do
   on Signin_page do |page|
	page.unconfirmed_user
end
end

################################session########################
When /^I enter the application$/ do
  on Signin_page do |page|
  page.enter_application
 end
end

When /^I be inactive for more than fifteen mins$/ do |arg1|
  on Signin_page do |page|
  page.session_time_out
end
end

Then /^I should be logged out of the system$/ do
  on Signin_page do |page|
  page.session_log_out
 end
end

###############################lock##############################
Given /^the user is on NSP website$/ do
  visit Signin_page
end

When /^the user enters invalid email ID\/Password for (\d+)rd time$/ do |arg1|
  on Signin_page do |page|
    sleep 2
  page.username=Common.get_details("lock_email")
   page.password=Common.get_details("invalid_pwd")
  end
end


When /^he clicks on login button$/ do
  on Signin_page do |page|
  page.signin_btn
end
 
end

Then /^it should show a flash message$/ do
  on Signin_page do |page|
    page.lock_user_third
  end

 end

When /^the user enters invalid email ID\/Password for (\d+)th time$/ do |arg1|
  on Signin_page do |page|
    sleep 2
  page.username=Common.get_details("lock_email")
   page.password=Common.get_details("invalid_pwd")
  end
end

Then /^it should show a message$/ do
  on Signin_page do |page|
    page.lock_user_fourth
  end
end

##########################logout########################################
When /^I click on logout button$/ do
  
end

Then /^I should be logged out from the application$/ do
  
end

