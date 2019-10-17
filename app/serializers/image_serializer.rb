class ImageSerializer 
  include FastJsonapi::ObjectSerializer
  
  attributes :id, :link

  belongs_to :product


end
