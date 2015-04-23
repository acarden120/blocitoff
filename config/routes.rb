Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:show] do
    resources :items
  end

  root to: 'welcome#index'

end