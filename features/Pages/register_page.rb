class Signup_page
  include PageObject
  page_url Common.get_url("Homepage")

  def link
  		@browser.link(:xpath,"//div[1]/div/div/div/a").click
  end 

 
 text_field :email, :id =>"email_register"
 text_field :zipcode, :id =>"zipCode_register"
 text_field :password, :id => "password_register"
 sleep 2
 button :sub_b, :xpath => "//div[1]/div/div/div/form/button"
 

 #############################Invalid email###############

 def invalid_email
	ele = @browser.p(:xpath, "//div[1]/div/div/div/form/div[1]/span[1]").text
	sleep 2
	if ele.include? "Not a valid email address"
		p ele
	else
		raise "not successful"
	end
end
###########################password######################
def password_req
	ele = @browser.p(:xpath, "//div[1]/div/div/div/form/div[3]/span[2]").text
    sleep 2
    if ele.include? "Password must be at least 8 characters long, and must include one uppercase letter, one lower case letter, and one number"
       p ele
    else
    	raise "not successful"
    end
end
#######################blank#################################
 def blank
 	ele =@browser.p(:xpath, "//div[1]/div/div/div/form/div[2]/span[1]").text
 	
 	slep 2
 	if ele.include? "This field is required"
 	   p ele
 	else
 		raise "not successful"
 	end
 end

 #####################invalid zip##################################
 def invalid_zip
 	ele =@browser.p(:xpath, "//div[1]/div/div/div/form/div[2]/span[2]").text
 	slep 2
 	if ele.include? "Input should match '0-9' and 5 or 9 in length"
 	   p ele
 	else
 		raise "not successful"
 	end
 end



end