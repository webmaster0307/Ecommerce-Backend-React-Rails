class API::V1::BusinessesController < ApplicationController

    def index
        @businesses = current_user.businesses
        businesses_json = BusinessSerializer.new(@businesses).serialized_json
        render json: businesses_json
    end


end
