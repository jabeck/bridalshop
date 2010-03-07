class AddTestItems < ActiveRecord::Migration
  def self.up
    Item.create(:name => "Style 134", :bbl_id => 13345, :price => 875, :vendor_id => 1, :vendor_item_id => 134, :category_id => 1)
    Item.create(:name => "Style 135", :bbl_id => 13346, :price => 275, :vendor_id => 1, :vendor_item_id => 135, :category_id => 1)
    Item.create(:name => "Style 172", :bbl_id => 13728, :price => 300, :vendor_id => 2, :vendor_item_id => 172, :category_id => 1)
    Item.create(:name => "Style 179", :bbl_id => 13892, :price => 425, :vendor_id => 2, :vendor_item_id => 179, :category_id => 2)
    Item.create(:name => "Style 2834", :bbl_id => 121, :price => 770, :vendor_id => 1, :vendor_item_id => 2834, :category_id => 1)
    Item.create(:name => "Style 234", :bbl_id => 11553, :price => 35, :vendor_id => 3, :vendor_item_id => 234, :category_id => 3)
    Item.create(:name => "Style 093", :bbl_id => 2493, :price => 55, :vendor_id => 3, :vendor_item_id => "093", :category_id => 3)
    Item.create(:name => "Style 889", :bbl_id => 99341, :price => 655, :vendor_id => 2, :vendor_item_id => 889, :category_id => 2)
    Item.create(:name => "Style 264", :bbl_id => 234, :price => 200, :vendor_id => 1, :vendor_item_id => 264, :category_id => 2)
  end

  def self.down
  end
end
