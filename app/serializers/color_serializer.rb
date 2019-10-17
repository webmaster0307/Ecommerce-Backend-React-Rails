class ColorSerializer 
  include FastJsonapi::ObjectSerializer
  
  attributes :id, :color_name, :available_qty

  belongs_to :product
end
