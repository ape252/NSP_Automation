require 'pry'

class Signin_page
  include PageObject
	page_url Common.get_url("Homepage")
   
   text_field :username, :id => "exampleInputEmail1"
	text_field :password, :id => "exampleInputPassword1"
	button :signin_btn, :text => "Login"

#####################Invalid Scenario################################

  def invalid_login
  	ele = @browser.p(:xpath, "//div[1]/div/div/div/p[3]").text
		sleep 2
	    if ele.include? "Invalid Email or password."
	         p ele
	    else
		    raise "not successful"
	    end
	end

 def unconfirmed_user
 	ele = @browser.p(:xpath, "//div/div/div/div/p[3]").text
 	sleep 2
 	if ele.include? "You have to confirm your email address before logging in."
      p ele
      else
      	raise "not successful"
      end
  end
  
end
