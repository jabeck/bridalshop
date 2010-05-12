class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :bbl_id
      t.integer :vendor_id
      t.string :vendor_item_id
      t.date :date_discontinued
      t.decimal :price, :precision => 8, :scale => 2, :default => 0
      t.integer :category_id
      t.integer :quantity, :default => 0
      t.string :size
      t.integer :main_image_id

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
