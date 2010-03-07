class ChangeVendorIdAndVendorInItems < ActiveRecord::Migration
  def self.up
    remove_column :items, :vendor_id
    add_column :items, :vendor_id, :integer

    remove_column :items, :vendor
    add_column :items, :vendor_item_id, :string
  end

  def self.down
    remove_column :items, :vendor_id
    add_column :items, :vendor_id, :string

    remove_column :items, :vendor_item_id
    add_column :items, :vendor, :string
  end
end
