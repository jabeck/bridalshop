class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :vendor
  has_many :images, :dependent => :destroy
  validates_presence_of :name, :vendor_id, :bbl_id, :vendor_item_id, :category_id, :size, :on => :create
  validates_uniqueness_of :bbl_id

  def is_available_for_purchase
    if self.quantity > 0
      true
    else
      false
    end
  end
  
  def get_main_image
    images = self.images.collect
    image_ids = images.collect{|image| image.id}
    
    if !image_ids.include?(self.main_image_id) and self.has_image?
      images[0]
    else
      Image.find(:first, :conditions => ['id = ?', self.main_image_id])
    end
  end
  
  def has_image?
    images = self.images.collect
    if !images.empty?
      true
    else
      false
    end
  end

  def formatted_price
    sprintf("$%.2f",self.price)
  end
  
end
