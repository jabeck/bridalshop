class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :vendor
  #validates_presence_of :name, :vendor_id, :bbl_id, :vendor_item_id, :category_id, :on => :create
end
