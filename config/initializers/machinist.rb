if Rails.env.test? || Rails.env.cucumber?
  
  require 'machinist'
  require 'machinist/active_record'
  
  def Machinist.clear!
    Sham.clear
    # ActiveRecord::Base.clear_blueprints!
  end
  
  def Machinist.load_blueprints
    Dir[Rails.root.join("test/blueprints", "**", "*.rb")].each do |file|
      load file
    end
  end
  
  # Put Machinist.load_blueprints in the test_helper.rb
  
end