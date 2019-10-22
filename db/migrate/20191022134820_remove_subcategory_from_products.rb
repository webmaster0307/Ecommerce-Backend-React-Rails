class RemoveSubcategoryFromProducts < ActiveRecord::Migration[6.0]
  def change

    remove_column :products, :subcategory, :string
  end
end
