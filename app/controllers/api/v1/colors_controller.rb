class API::V1::ColorsController < ApplicationController

    before_action :set_color, only: [:show, :edit, :update, :destroy]

    def index
        @colors = Color.all 
        render json: @colors
    end

    def create
        # binding.pry
        @product = Product.find_by(id: params[:product_id])
        if current_user_business_product && @color = @product.colors.build(color_params)
            
            if @color.save
                render json:  ProductSerializer.new(@product).serialized_json, status: :created

            else
                error_resp = {
                error: @product.errors.full_messages.to_sentence
                }
                render json: error_resp, status: :unprocessable_entity
            end
         end
    end

    def update
        # binding.pry
        @product = Product.find_by(id: params[:product_id])
        if current_user_business_product && @color.update(color_params)
            render json:  ProductSerializer.new(@product).serialized_json, status: :created
        else
            error_resp = {
            error: @color.errors.full_messages.to_sentence
            }
            render json: error_resp, status: :unprocessable_entity
        end
    end

    private

    def color_params
        params.require(:color).permit(:color_name, :available_qty, :product_id)
    end

    def set_color 
        @color = Color.find_by(id: params[:id])
    end

end
