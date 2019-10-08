class API::V1::ProductsController < ApplicationController

    def index
        @products = Product.all 
        render json: @products
    end

end
