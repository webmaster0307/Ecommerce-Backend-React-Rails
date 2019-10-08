class Image < ApplicationRecord
    belongs_to :product

    validates :link, presence: true
end
