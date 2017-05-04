Given /^I am on add funding source page$/ do
	visit Signin_page
	on Signin_page do |page|
	 page.username=Common.get_details("uname")
	 page.password=Common.get_details("pwd")
	 page.signin_btn
	 sleep 2
    
	end
 
end

When /^I dont find the required bank in the list$/ do
	on Signin_page do |unl|
	 unl.search=Common.get_details("search_box")
	 end
	 
end

When /^I enter all my bank details$/ do
	on Signin_page do |unl|
	unl.route_num=Common.get_details("rnum")
	 unl.act_num=Common.get_details("anum")
	end
 
end

Then /^Micro deposit should be initiated$/ do
	on Signin_page do |unl|
		unl.next
 end 
end
