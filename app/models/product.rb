class Product < ApplicationRecord

    belongs_to :business
    belongs_to :category
    belongs_to :subcategory
    
    has_many :images, dependent: :destroy
    has_many :colors, dependent: :destroy

    validates :name, :description, :price, :item_number, presence: true
    validates :item_number, uniqueness: true
    validates :price, :item_number, numericality: { only_integer: true }
    validates :price, length: { maximum: 5 }
    validates :description, length: { maximum: 200 }
end


