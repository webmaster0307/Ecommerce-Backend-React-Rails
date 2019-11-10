class API::V1::ProductsController < ApplicationController

    def index
        @products = Product.all 
        # render json: @products

        products_json = ProductSerializer.new(@products).serialized_json
        render json: products_json
    end

    def create
        # binding.pry
        @business = Business.find(params[:business_id].to_i)
        if business_user_equals_current_user && @product = @business.products.build(product_params)
            
            if @product.save
                render json:  BusinessSerializer.new(@business).serialized_json, status: :created
                # render json:  ProductSerializer.new(@product).serialized_json, status: :created


            else
                error_resp = {
                error: @product.errors.full_messages.to_sentence
                }
                render json: error_resp, status: :unprocessable_entity
            end
         end


    end


    # {"name"=>"Shirt", "description"=>"Dress shirt", "price"=>"60", "image"=>"https://images.pexels.com/photos/2050511/pexels-photo-2050511.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", 
    # "category_id"=>"1", "subcategory_id"=>"1", "business_id"=>"15", 
    # "item_number"=>"ck2qeue7z00003g5zgldu3g6d"
    
    private

    def product_params
        params.require(:product).permit(:name, :description, :price, :image, :item_number, :category_id, :subcategory_id, :business_id)
      end

end
