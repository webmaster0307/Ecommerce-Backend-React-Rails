class API::V1::BusinessesController < ApplicationController

    def index 
        @businesses = current_user.businesses
        businesses_json = BusinessSerializer.new(@businesses).serialized_json
        render json: businesses_json
    end

    def create

        # binding.pry
        @business = current_user.businesses.build(business_params)
        if @business.save
            render json:  BusinessSerializer.new(@business).serialized_json, status: :created
        else
            error_resp = {
              error: @business.errors.full_messages.to_sentence
            }
            render json: error_resp, status: :unprocessable_entity
        end
    end

    def business_params
        params.require(:business).permit(:name, :tax_id)
      end
end
