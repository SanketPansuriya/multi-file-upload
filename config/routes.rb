Rails.application.routes.draw do
  resources :users do 
    member do
      resources :avatar, only: [] do
        delete :destroy_avatar, controller: :users
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "user#index"
end
