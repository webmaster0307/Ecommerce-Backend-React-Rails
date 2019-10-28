class API::V1::SubcategoriesController < ApplicationController

    def index
        @subcategories = Subcategory.all 

        subcategories_json = SubcategorySerializer.new(@subcategories).serialized_json
        render json: subcategories_json
    end
end
