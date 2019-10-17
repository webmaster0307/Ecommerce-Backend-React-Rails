class BusinessSerializer 
  include FastJsonapi::ObjectSerializer
  
  attributes :id, :name, :tax_id

  belongs_to :user
  has_many :products, dependent: :destroy
end
