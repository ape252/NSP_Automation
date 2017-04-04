class Signup_page
  include PageObject
  page_url Common.get_url("Homepage")

  def link
  		@browser.link(:xpath,"//div[1]/div/div/div/a").click
  end 

 text_field :firstname, :xpath =>"//div[1]/div/div/div[2]/form/div[1]/input"
 text_field :lastname, :xpath =>"//div[1]/div/div/div[2]/form/div[2]/input"
 text_field :zipcode, :xpath =>"//div[1]/div/div/div[2]/form/div[3]/input"
 text_field :email, :xpath =>"//div[1]/div/div/div[2]/form/div[4]/input"
 text_field :password, :xpath => "//div[1]/div/div/div[2]/form/div[5]/input"
 text_field :confirm_password, :xpath => "//div[1]/div/div/div[2]/form/div[6]/input"
 button     :sub, :type => "submit"
 
  def check
   browser.checkbox(:type => "checkbox").set
   browser.checkbox(:type => "checknox").set(true)
  end 
end