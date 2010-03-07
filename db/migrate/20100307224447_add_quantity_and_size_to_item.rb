class AddQuantityAndSizeToItem < ActiveRecord::Migration
  def self.up
    add_column :items, :quantity, :integer, :default => 0
    add_column :items, :size, :string
  end

  def self.down
    remove_column :items, :quantity
    remove_column :items, :size
  end
end
