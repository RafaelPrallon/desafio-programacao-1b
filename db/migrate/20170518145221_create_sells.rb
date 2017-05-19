class CreateSells < ActiveRecord::Migration
  def change
    create_table :sells do |t|
      t.string :buyer
      t.string :description
      t.integer :price
      t.integer :qtd
      t.string :adress
      t.string :provider

      t.timestamps null: false
    end
  end
end
