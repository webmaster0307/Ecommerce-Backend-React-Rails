class Product < ApplicationRecord

    belongs_to :business
    has_many :images
    has_many :colors

    validates :name, :description, :category, :subcategory, :price, presence: true
    validates :price, numericality: { only_integer: true }
    validates :price, length: { maximum: 5 }
    validates :description, length: { maximum: 300 }
end
