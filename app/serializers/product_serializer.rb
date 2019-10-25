class ProductSerializer 
  include FastJsonapi::ObjectSerializer

  attributes :id, :name, :description, :category, :subcategory, :price, :business_id, :item_number


  belongs_to :business
  belongs_to :category

  attribute :images do |product|
    product.images.map do |image|
      {
        link: image.link,
      }
    end
  end

  attribute :colors do |product|
    product.colors.map do |color|
      {
        color_name: color.color_name,
        available_qty: color.available_qty
      }
    end
  end


  # has_many :images, dependent: :destroy
  # has_many :colors, dependent: :destroy


end
