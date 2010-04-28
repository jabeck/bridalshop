class AddMoreMessages < ActiveRecord::Migration
  def self.up
    Message.create(:name => "Purchase Message", 
                          :message => "To purchase this item, please call us at<br />906-228-8184",
                          :description => "This message will appear on each item's page")
    Message.create(:name => "Designer Message", 
                          :message => "Browse our specials from these designers:",
                          :description => "This message will appear in the title of the /shop/designer_list page.")
  end

  def self.down
  end
end
