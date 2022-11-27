Rails.application.routes.draw do
  root to: 'lists#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html



  resources :lists do
    resources :favorites, only: [:new, :create, :index, :show] do
      resources :cards
    end
  end



  resources :favorites, only: [:destroy]
  # Defines the root path route ("/")
  resources :cards
end
