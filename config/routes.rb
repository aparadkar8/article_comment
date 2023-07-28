Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  concern :api_base do
    resources :articles
    resources :comments
  end

  namespace :v1 do
    concerns :api_base
  end
  
  # resources :articles do
  #   resources :comments
  # end
end
