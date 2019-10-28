class Category < ApplicationRecord

    has_many :products
    has_many :subcategories, :through => :products 

    validates :name, presence: true

end
