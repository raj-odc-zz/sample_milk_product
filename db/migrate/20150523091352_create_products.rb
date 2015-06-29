class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :product_type, index: true
      t.belongs_to :brand, index: true
      t.belongs_to :quantity_type, index: true
      t.integer :item_count
      t.timestamps
    end
  end
end
