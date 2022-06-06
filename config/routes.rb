Rails.application.routes.draw do
  get 'home/trash_em'
  get 'home/trash_em_all'
  devise_for :users
  resources :to_do_lists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "to_do_lists#index"
end

