Rails.application.routes.draw do
  devise_for :users
  root to: 'surveys#index'
  resources :surveys, only: [:index, :new, :create, :show, :update, :edit, :destroy] do
    resources :questions, only: [:index, :new, :create, :show, :update, :edit]
      resources :options, only: [:index, :new, :create, :show, :update, :edit]
  end
  resources :responses, only: [:index, :new, :create, :show] do
  end
  resources :users, only: [:index, :new, :create, :show] do
  end
end
