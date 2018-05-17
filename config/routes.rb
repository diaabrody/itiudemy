Rails.application.routes.draw do
  resources :lectures
  resources :courses
  devise_for :users
  root to: 'courses#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
