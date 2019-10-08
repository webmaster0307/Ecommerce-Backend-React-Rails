class RemoveAvailableQtyFromProducts < ActiveRecord::Migration[6.0]
  def change

    remove_column :products, :available_qty, :integer
  end
end
