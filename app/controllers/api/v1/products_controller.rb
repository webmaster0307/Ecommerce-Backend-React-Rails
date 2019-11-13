class API::V1::ProductsController < ApplicationController

    before_action :set_product, only: [:show, :edit, :update, :destroy]
    before_action :set_product_business, only: [:update]

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

            else
                error_resp = {
                error: @product.errors.full_messages.to_sentence
                }
                render json: error_resp, status: :unprocessable_entity
            end
         end


    end

    def show
    end

    def edit
    end

    def update
        # binding.pry
        if business_user_equals_current_user && @product.update(product_params)
            render json:  ProductSerializer.new(@product).serialized_json, status: :created
          else
            error_resp = {
              error: @product.errors.full_messages.to_sentence
            }
           render json: error_resp, status: :unprocessable_entity
          end
    end

    def destroy
        # binding.pry
        if current_user.businesses.find(@product.business_id)
            @product.destroy
            render json:  { data: "Product successfully destroyed" }, status: :ok
        else
            error_resp = {
                error: "Product not found and not destroyed"
            }
            render json: error_resp, status: :unprocessable_entity
        end

    end

    
    private

    def product_params
        params.require(:product).permit(:name, :description, :price, :image, :item_number, :category_id, :subcategory_id, :business_id)
      end

    def set_product
        @product = Product.find_by(id: params[:id])
    end

    def set_product_business
        @business = Business.find_by(id: params[:business_id])
    end

end
