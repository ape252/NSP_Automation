class Unlisted_page
  include PageObject
   page_url Common.get_url("Homepage")


text_field :search, :id => "SearchTerm"
text_field :route_num, :id => "RoutingNumber"
text_field :act_num, :id => "AccountNumber"
text_field :bank_name, :id => "BankAccountName"
button :next, :id => "login-button"

end
