Rails.application.routes.draw do
  resources :to_do_lists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "to_do_lists#index"
end

