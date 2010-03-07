class AddTestVendors < ActiveRecord::Migration
  def self.up
    Vendor.create(:name => "Alfred Angelo")
    Vendor.create(:name => "Maggie Sottero")
  end

  def self.down
  end
end
