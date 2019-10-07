class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :category
      t.integer :price
      t.string :color
      t.integer :available_qty
      t.integer :user_id

      t.timestamps
    end
  end
end
