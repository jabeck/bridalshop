class DeleteVendorNameFromItems < ActiveRecord::Migration
  def self.up
    remove_column :items, :vendor_name
  end

  def self.down
    add_column :items, :vendor_name, :string
  end
end
