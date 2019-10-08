class Business < ApplicationRecord

    belongs_to :user
    has_many :products

    validates :name, :tax_id, presence: true
    validates :tax_id, numericality: { only_integer: true }
    validates :tax_id, length: { maximum: 10 }


end
