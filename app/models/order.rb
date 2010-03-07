class Order < ActiveRecord::Base
  attr_reader :items
  
  def initialize
    @items = []
  end
  
  def add_item(item)
    if item.is_available_for_purchase
      @items << item
    else
      false
    end
  end

  def remove_item(item)
    @items.delete(item)
  end
end
