# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

Category.create(:name => "Wedding Gown")
Category.create(:name => "Bridesmaid Gown")
Category.create(:name => "Shoes")

Vendor.create(:name => "Alfred Angelo")
Vendor.create(:name => "Maggie Sottero")
Vendor.create(:name => "Casablanca")

Message.create(:name => "Welcome Message", 
                      :message => "Welcome to Dan's Bridal and Tuxedo Online Store!",
                      :description => "This message will appear in the title of the /shop page.")
Message.create(:name => "Purchase Message", 
                      :message => "To purchase this item, please call us at<br />906-228-8184",
                      :description => "This message will appear on each item's page")
Message.create(:name => "Designer Message", 
                      :message => "Browse our specials from these designers:",
                      :description => "This message will appear in the title of the /shop/designer_list page.")
Admin.new(:login => "kay", :password => "shell4trouble", :password_confirmation => "shell4trouble")