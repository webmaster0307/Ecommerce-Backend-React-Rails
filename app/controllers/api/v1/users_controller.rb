class API::V1::UsersController < ApplicationController

    def index
        @users = User.all 
        # render json: @users

        # json_string = MovieSerializer.new(movie).serialized_json
        users_json = UserSerializer.new(@users).serialized_json

        render json: users_json
    end

    def create

        @user = User.new(user_params)
        if @user.save
            set_session

            render json: @user, status: :created
        else

            resp = {
                error: @user.errors.full_messages.to_sentence
            }
            render json: resp, status: :unprocessable_entity
        end
    end

    private

    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end
