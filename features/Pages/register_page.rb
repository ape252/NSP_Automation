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
 # button :sub_b, :text => "Create Account"
 
 def sub_b
 	@browser.button(:text, "Create Account").click
 end



 ########################Valid#################################
def valid 
	ele =@browser.p(:xpath, "/div[1]/div/flash-message[3]/div/div/span/span").text
    if ele.include? "An email with a confirmation link has been sent to your email address. To complete your registration, please open the link."
    	p ele
    else
    	raise "not successful"
    end
end

 ###########################Invalid email###############

 def invalid_email
	ele = @browser.p(:xpath, "//div/div/div/form/div[1]/span[1]").text
	if ele.include? "Not a valid email address"
		p ele
	else
		raise "not successful"
	end
end
#########################password######################
def password_req
	ele = @browser.span(:xpath, "//div[1]/div/div/div/form/div[3]/span[2]").text
    sleep 2
    if ele.include? "Password must be at least 8 characters long, and must include one uppercase letter, one lower case letter, and one number"
       p ele
    else
    	raise "not successful"
    end
end
#####################blank#################################
 def blank
 	ele =@browser.p(:xpath, "//div[1]/div/div/div/form/div[2]/span[1]").text

 	slep 2
 	if ele.include? "This field is required"
 	   p ele
 	else
 		raise "not successful"
 	end
 end

 ####################invalid zip##################################
 def invalid_zip
 	ele =@browser.p(:xpath, "//div[1]/div/div/div/form/div[2]/span[2]").text
 	sleep 2
 	if ele.include? "Input should match '0-9' and 5 or 9 in length"
 	   p ele
 	else
 		raise "not successful"
 	end
 end

########################registered email###############################
def reg_email
	ele =@browser.p(:xpath, "//div[1]/div/flash-message/div/div/span/span")
	if ele.include? "This email address is already registered with us, please login to access your account or use a different email id to register with us."
      p ele
    else
    	raise "not successful"
    end
end



end