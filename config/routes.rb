Rails.application.routes.draw do

get 'sign_up', to: 'users#new', as: :sign_up
  # resources :posts
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'home#index', as: 'home'
# get 'sign_in', to:
#
# get '/', to: 'home#index', as: :home
resources :sessions, only: [:create]
 delete 'sign_out', to: 'sessions#destroy'
 get 'sign_in', to: 'sessions#new'
resources :users do
  resources :posts
end
end
# resources :users, only: [:new, :create] do
#   resources :posts
