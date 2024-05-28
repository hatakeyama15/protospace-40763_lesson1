Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :users do
    collection do
      get 'show'
    end
  end
  
end
