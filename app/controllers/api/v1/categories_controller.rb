class API::V1::CategoriesController < ApplicationController

    def index
        @categories = Category.all
        render json: @categories

        # categories_json = CategorySerializer.new(@categories).serialized_json
        # render json: categories_json
    end

    def show
        
    end
end
