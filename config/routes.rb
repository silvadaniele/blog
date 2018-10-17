Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles, only: [:index, :new, :create, :show, :destroy, :edit, :update] do
  resources :comments, only: [:new, :create]
  end
  resources :comments, only: [:show, :edit, :update, :destroy]

  root "articles#index"

end
