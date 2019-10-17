class API::V1::SessionsController < ApplicationController


    def create
        @user = User.find_by(username: params[:session][:user][:username])

        if @user && @user.authenticate(params[:session][:user][:password])
            set_session

            resp = { user: @user}
            render json: resp, status: :ok
        else
            resp = {
                error: "Invalid credentials",
                details: @user.errors.full_messages
            }
            render json: resp, status: :unauthorized
        end
    end

    def get_current_user
    end
    
    def destroy
    end

    private

    def set_session
        session[:user_id] = @user.id
    end
    
end
