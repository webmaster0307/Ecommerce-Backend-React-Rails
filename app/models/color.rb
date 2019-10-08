class Color < ApplicationRecord

    belongs_to :product

    validates :color_name, :available_qty, presence: true
    validates :available_qty, numericality: { only_integer: true }

end
