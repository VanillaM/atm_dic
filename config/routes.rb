Rails.application.routes.draw do
  resources :entries
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  get '/newentry', to: 'entries#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :words
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
