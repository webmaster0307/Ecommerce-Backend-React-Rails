class ApplicationController < ActionController::API
    include ::ActionController::Cookies

    def current_user
        User.find_by(id: session[:user_id])
      end
    
      def logged_in?
        !!current_user
      end

      private

      def set_session
          session[:user_id] = @user.id
      end

      def business_user_equals_current_user
        @business.user == current_user
      end

      def current_user_business_product
        current_user.businesses.find(@product.business_id)
      end

      def set_product
        @product = Product.find_by(id: params[:id])
     end

      def set_product_business
        @business = Business.find_by(id: params[:business_id])
     end
end
