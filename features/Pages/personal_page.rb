class Personal_Page
	include PageObject
	# page_url Common.get_url("Homepage")

	text_field :p_firstname, :id => "firstname"
	text_field :p_middlename, :id => "middlename"
	text_field :p_lastname, :id => "lastname"
	text_field :ssn_num, :id => "personalInfo_ssn"
	text_field :date, :id => "dateofbirth"
	text_field :phone_num, :id => "phoneNum"
	text_field :alt_phone_num, :id => "altPhoneNum"
	text_field :address_1, :id => "residential_address1"
	text_field :address_2, :id => "residential_address2"

	def checkbox
		# @browser.checkbox(:xpath => "//div/div/div/div[2]/form/div[6]/div/div[3]/div[1]/input").set(true)
		# sleep 2
        @browser.checkbox(:xpath => "//div[2]/form/div[7]/div/div/div/label/input").set(true)
    end

end


