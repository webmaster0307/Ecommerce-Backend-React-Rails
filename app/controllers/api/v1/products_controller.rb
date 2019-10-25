class API::V1::ProductsController < ApplicationController

    def index
        @products = Product.all 
        # render json: @products

        products_json = ProductSerializer.new(@products).serialized_json
        render json: products_json
    end

end
