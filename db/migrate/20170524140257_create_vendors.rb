class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.string :company
      t.string :contact_name
      t.string :phone
      t.string :email
      t.string :moq
      t.string :cost_per_item
      t.string :payment_method
      t.string :terms
      t.string :turnover
      t.string :returns
      t.text :notes

      t.timestamps
    end
  end
end
