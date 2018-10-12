Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles, only: [:index, :new, :create, :show, :destroy, :edit, :update] do
    resources :comments, only: [:new, :create]
  end
  resources :comments, only: [:show, :edit, :update, :destroy]

  get "/login" => "logins#index", as: :login
  post "/login" => "logins#create"
  delete "/logout" => "logins#destroy", as: :logout

  root "articles#index"
end
