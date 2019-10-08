class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.integer :tax_id
      t.integer :user_id

      t.timestamps
    end
  end
end
