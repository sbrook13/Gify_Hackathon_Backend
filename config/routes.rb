Rails.application.routes.draw do
  resources :users, only: [:index, :show, :create, :update]
  resources :favorites, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
