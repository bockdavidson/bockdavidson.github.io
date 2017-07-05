class UpdateColumn < ActiveRecord::Migration[5.1]
  def change
    change_table :inventories do |t|
      t.change :upc_code, :string

    end
  end
end
