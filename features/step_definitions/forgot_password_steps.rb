When /^I click on forgot password link$/ do
 on Forgot_Pass do |pass|
   	pass.for_link
   end
end

When /^I enter the email ID$/ do
  on Forgot_Pass do |pass|
   	pass.enter_mail
   end
end

Then /^I should be able to the success message$/ do
  on Forgot_Pass do |pass|
   	pass.reset
  end 	
end
