class RemoveColorFromProducts < ActiveRecord::Migration[6.0]
  def change

    remove_column :products, :color, :string
  end
end
