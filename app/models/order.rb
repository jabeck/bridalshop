class Order < ActiveRecord::Base
  def initialize
    @items = []
  end
  def add_item(item)
    @items << item
  end
end
