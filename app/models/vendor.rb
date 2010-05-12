class Vendor < ActiveRecord::Base
  has_many :items
  validates_presence_of :name
  validates_uniqueness_of :id
  
  def get_sample_items
    items = self.items.collect
    items[0..2]
  end
end
