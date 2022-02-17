Rails.application.routes.draw do
  resources :items do
    member do
      delete :purge_avatar
    end
  end

  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "items#index"
end
