class AddDefaultCategories < ActiveRecord::Migration
  def self.up
    Category.create(:name => "Wedding Gown")
    Category.create(:name => "Bridesmaid Gown")
    Category.create(:name => "Shoes")
  end

  def self.down
  end
end
