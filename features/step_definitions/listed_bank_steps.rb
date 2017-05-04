Given /^the user is verified$/ do
	visit Signin_page
	on Signin_page do |page|
	 page.username=Common.get_details("uname")
	 page.password=Common.get_details("pwd")
	 page.signin_btn
	 sleep 2
	end
end

When /^he clicks on My account tab$/ do
	on Listed_page do |data|
	 data.bank_act
	end
end

When /^clicks on Add funding source button$/ do
	on Listed_page do |data|
	 data.add
	end
 
end

When /^he select one of the bank from the list$/ do
	on Listed_page do |data|
	 data.bank_name
	end

end

When /^he enters username$/ do
	on Listed_page do |data|
	 data.login_name=Common.get_details("bank_id")
	end
 
end

When /^he enters password$/ do
	on Listed_page do |data|
	 data.password_field=Common.get_details("bank_pwd")
	
     data.re_password=Common.get_details("bank_repwd")
     data.agree
     sleep 2
	end
  
end

Then /^he should see the account details tab$/ do
	on Listed_page do |data|
	data.que_1=Common.get_details("q1")
	data.que_2=Common.get_details("q2")
    data.continue
    sleep 3
    data.agree_continue
    end
end
