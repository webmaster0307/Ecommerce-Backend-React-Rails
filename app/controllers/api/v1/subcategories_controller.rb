class API::V1::SubcategoriesController < ApplicationController

    def index
        @subcategories = Subcategory.all 
        render json: @subcategories
    end
end
