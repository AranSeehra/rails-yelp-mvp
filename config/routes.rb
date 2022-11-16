Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'restaurants#index'

  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
