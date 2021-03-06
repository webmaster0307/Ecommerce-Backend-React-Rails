class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :image


  attribute :products do |category|
    category.products.map do |product|
      {
        name: product.name,
        description: product.description,
        subcategory_name: product.subcategory.name,
        subcategory_id: product.subcategory.id,
        price: product.price,
        item_number: product.item_number,
        business_id: product.business_id,
        image: product.image,
        id: product.id
      }
    end
  end

  attribute :subcategories do |category|
    category.subcategories.map do |subcategory|
      {
      subcategory_name: subcategory.name,
      subcategory_id: subcategory.id,  
      }
    end
  end
  # has_many :subcategories, :through => :products 

  # has_many :products, serializer: ProductSerializer

end
