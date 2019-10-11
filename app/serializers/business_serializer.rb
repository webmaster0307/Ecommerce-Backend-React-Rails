class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :name, :tax_id

  belongs_to :user
  has_many :products, dependent: :destroy
end
