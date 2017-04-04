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


When /^I enter the application$/ do

end

When /^I be inactive for more than (\d+)mins$/ do |arg1|
  
end

Then /^I should be logged out of the system$/ do

end
