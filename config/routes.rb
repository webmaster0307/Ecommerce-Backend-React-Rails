Rails.application.routes.draw do

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/api/v1/login' => 'api/v1/sessions#create'
  post '/api/v1/signup' => 'api/v1/users#create'
  delete '/api/v1/logout' => 'api/v1/sessions#destroy'
  get '/api/v1/get_current_user' => 'api/v1/sessions#get_current_user'
  
  namespace :api do
    namespace :v1 do      
      resources :users, :products, :businesses, :colors, :images
    end
  end

end
