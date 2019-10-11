Rails.application.routes.draw do

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do

      get '/signup' => 'users#new'
      get '/login' => 'sessions#new'
      post '/login' => 'sessions#create'
      get '/logout' => 'sessions#destroy'
      
      resources :users, :products, :businesses, :colors, :images
    end
  end

end
