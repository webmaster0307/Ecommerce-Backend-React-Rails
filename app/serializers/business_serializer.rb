class BusinessSerializer 
  include FastJsonapi::ObjectSerializer
  
  attributes :id, :name, :tax_id

  has_many :products, dependent: :destroy
end
