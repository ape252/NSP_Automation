class Listed_page
  include PageObject
   page_url Common.get_url("Homepage")

   def bank_act
    @browser.a(:xpath, "//div[1]/aside[1]/div/nav/ul/li[10]/a").click
   end 

   def add  
    @browser.b(:xpath, "//div[1]/section/div/div/div/div/div[2]/button").click
    sleep 5
   end

  link :bank_name, :xpath => "//*[@id='js-bank-search']/div[3]/ul/li[8]/a"
  text_field :login_name, :id => "LOGIN"
  text_field :password_field, :id => "PASSWORD"
  text_field :re_password, :id => "ReEnterPASSWORD"
  button :agree, :xpath => "//div/form/div[2]/ul/li/ul/li/button"
  sleep 10
  text_field :que_1, :id => "QUESTION_1"
  text_field :que_2, :id => "QUESTION_2"
  button :continue, :xpath => "//div[2]/ul/li/ul/li/button"
  sleep 10
  button :agree_continue, :xpath => "//div/form/div[2]/ul/li/ul/li/button"
  
end
