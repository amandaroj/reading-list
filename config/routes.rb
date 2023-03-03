Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'pages#home'
  get 'genres/index'
  resources :books, only: %i[index show]
  resources :authors, only: %i[index show]
  resources :bookshelves
  resources :reviews
end
