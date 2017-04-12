class Forgot_Pass
include PageObject
  page_url Common.get_url("Homepage")
  
  def for_link
    @browser.link(:xpath, "//div/form/div[3]/div/a").click
  end 

  def enter_mail
   @browser.input(:xpath,"//div/form/div[1]/input").send_keys "apeksha@yopmial.com"
  end

 def reset
 	@browser.b(:xpath, "//div/div/form/button").click
	ele = @browser.p(:xpath, "//div[1]/div/flash-message[1]/div/div").text
	sleep 5
	if ele.include? "If the email you provided is registered with us, then you would have received an email from us to reset your password. Please follow the instructions on the mail to reset your password."
		p ele
	else
		raise "not successful"
	end
 end

end

