class Vendor < ActiveRecord::Base
  has_many :items
  validates_presence_of :name
  
  def get_sample_items
    items = self.items.collect
    items[0..2]
  end
end
