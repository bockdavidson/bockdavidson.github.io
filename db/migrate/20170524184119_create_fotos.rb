class CreateFotos < ActiveRecord::Migration[5.1]
  def change
    create_table :fotos do |t|
      t.string :title
      t.references :vendor, foreign_key: true

      t.timestamps
    end
  end
end
