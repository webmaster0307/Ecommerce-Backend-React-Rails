class SubcategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name

  has_many :categories, :through => :products 
end
