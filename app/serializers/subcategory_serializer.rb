class SubcategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name

  attribute :products do |subcategory|
    subcategory.products.map do |product|
      {
        name: product.name,
        description: product.description,
        category_name: product.category.name,
        category_id: product.category.id,
        price: product.price,
        item_number: product.item_number,
        business_id: product.business_id,
        image: product.image,
        id: product.id
      }
    end
  end

  # has_many :categories, :through => :products 
end
