class API::V1::SessionsController < ApplicationController


    def create
      # binding.pry
        @user = User.find_by(username: params[:username])

        if @user && @user.authenticate(params[:password])
            set_session

            render json: UserSerializer.new(@user)
        else
            render json: {
                error: "Invalid Credentials"
            }
        end
    end

    def get_current_user
        if logged_in?
          render json: UserSerializer.new(current_user)
          else
            # render json: {
            #   error: "No one logged in"
            # }
          end
    end
    
    def destroy
        session.clear
        render json: {
          notice: "successfully logged out"
        }, status: :ok
    end


end
