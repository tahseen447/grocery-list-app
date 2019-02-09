Rails.application.routes.draw do
#  resources :store_items

  resources :stores do
    resources :items, only: [:show, :index, :new]
  end

  resources :lists do
    resources :stores, only: [:index, :show ]
  end
  resources :items
  resources :users


  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/auth/:provider/callback', to: 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
