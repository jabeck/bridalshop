class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :vendor
  #validates_presence_of :name, :vendor_id, :bbl_id, :vendor_item_id, :category_id, :on => :create

  def is_available_for_purchase
    if self.quantity > 0
      true
    else
      false
    end
  end
  
  def has_image?
    if self.image_url != nil and self.image_url != ""
      true
    else
      false
    end
  end
  
end
