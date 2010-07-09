class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :category_id
      t.boolean :used
      t.string :used_categories
      t.string :title
      t.text :description
      t.string :mark
      t.string :model
      t.string :serie_num
      t.string :warranty
      t.string :weight
      t.string :dimensions
      t.string :pediment_num
      t.text :observations
      t.string :list_price
      t.string :sale_price
      t.string :special_price
      t.string :delivery_time

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
