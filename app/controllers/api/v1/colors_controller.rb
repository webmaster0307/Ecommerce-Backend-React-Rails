class API::V1::ColorsController < ApplicationController

    def index
        @colors = Color.all 
        render json: @colors
    end

end
