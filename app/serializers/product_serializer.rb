class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category, :subcategory, :price, :business_id, :item_number

  has_many :images, dependent: :destroy
  has_many :colors, dependent: :destroy
  belongs_to :business

end
