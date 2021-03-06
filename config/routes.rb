Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :lectures do
    member do
      put "like" => "lectures#upvote"
      put "unlike" => "lectures#downvote"
      get 'makespan'
      resources :comments

    end
  end

  resources :courses

  devise_for :users
  root to: 'courses#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
