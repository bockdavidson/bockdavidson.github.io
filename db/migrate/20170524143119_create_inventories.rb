class CreateInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :inventories do |t|
      t.string :product_name
      t.string :brand_name
      t.integer :item_id
      t.string :upc_code
      t.string :color
      t.string :department
      t.string :size
      t.string :condition
      t.string :fabric_type
      t.string :shipping_weight
      t.string :sku
      t.string :asin
      t.integer :quantity
      t.string :cost_price
      t.string :sell_price
      t.string :key_product_features
      t.text :product_description
      t.string :search_terms
      t.string :status
      t.string :listing_in_usa
      t.string :listing_in_canada
      t.string :listing_in_mexico

      t.timestamps
    end
  end
end
