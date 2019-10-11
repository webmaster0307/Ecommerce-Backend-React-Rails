class ColorSerializer < ActiveModel::Serializer
  attributes :id, :color_name, :available_qty

  belongs_to :product
end
