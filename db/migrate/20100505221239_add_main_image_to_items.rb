class AddMainImageToItems < ActiveRecord::Migration
  def self.up
    add_column :items, :main_image_id, :integer
  end

  def self.down

  end
end
