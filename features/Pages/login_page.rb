require 'pry'

class Signin_page
	include PageObject
	page_url Common.get_url("Homepage")

	text_field :username, :id => "login_email"
	text_field :password, :id => "login_password"
	button :signin_btn, :text => "Login"

#####################Invalid Scenario################################

def invalid_login
	sleep 5
	ele = @browser.p(:xpath, "//div[1]/div/flash-message[3]/div/div").text
	sleep 10
	if ele.include? "Invalid Email or password."
		p ele
	else
		raise "not successful"
	end
end

def unconfirmed_user
	ele = @browser.p(:xpath, "//div/div/div/div/p[3]").text
	if ele.include? "You have to confirm your email address before logging in."
		p ele
	else
		raise "not successful"
	end
end
######################################session timeout################################
def enter_application
	ele= @browser.p(:xpath, "//div/section/div/div/div/div[1]").text
	 if ele.include? "Please provide your personal information"
	 	p ele
	 else
	 	raise "failed"
	 end
end


def session_time_out
	 
	 sleep 60

end

def session_logout

	ele =@browser.p(:xpath, "//div/flash-message[1]/div/div").text
	if ele.include? "Your has Session Expired! Please login to continue."
    p ele
      else
      	raise "not successful"
     end
 end

################################Lock user##########################################
def lock_user_third
  ele = @browser.p(:xpath, "//div/div/div/p[3]").text
  if ele.include? "Invalid email or password, you have 1 more attempt left before you are locked out of the system."
      p ele
      else
		raise "not successful"
	end
end

def lock_user_fourth
	ele = @browser.p(:xpath, "//div/div/p[3]").text
  if ele.include? "Invalid email or password, you have exhausted your attempts to authenticate yourself, you have been locked out of the system, please contact our Investor Relation Admin to resolve this."
      p ele
      else
		raise "not successful"
	end
end
###################################logout###############################
 
 def log_out
  @browser.link(:xpath,"//div[1]/aside[1]/div/nav/ul/li[12]/a").click
 end

end

