Given /^I am on personal info page$/ do

  
end

When /^I enter all valid details$/ do
	on Personal_Page do |dat|
	 dat.p_firstname=Common.get_details("p_fname")
	 dat.p_middlename=Common.get_details("p_mname")
	 dat.p_lastname=Common.get_details("p_lname")
	 dat.ssn_num=Common.get_details("ssn")
	 dat.date=Common.get_details("dob")
	 dat.phone_num=Common.get_details("phone")
	 dat.alt_phone_num=Common.get_details("alternate")
	 dat.address_1=Common.get_details("add_1")
	 dat.address_2=Common.get_details("add_2")
      dat.checkbox
    end
end

When /^I click on button$/ do
 
end

Then /^I should be able to see the next page$/ do
 
 end
