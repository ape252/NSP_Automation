module Common
  def Common.get_url route
    YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")["urls"][route]
  end
  
 def Common.get_details route
 	YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")["details"][route]
 end


  
  # def Common.get_buzzboard_page route
  #   YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")["buzz_page"][route]
  # end

end