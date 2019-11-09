class RemoveItemNumberFromProduct < ActiveRecord::Migration[6.0]
  def change

    remove_column :products, :item_number, :integer
  end
end
