Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new'
  get '/articles/:id' => 'articles#show'
  post '/articles' => 'articles#create'
end
