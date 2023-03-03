Rails.application.routes.draw do
  devise_for :users
  # get 'reviews/index'
  # get 'reviews/show'
  # get 'reviews/new'
  # get 'reviews/edit'
  # get 'reviews/create'
  # get 'reviews/update'
  # get 'reviews/destroy'
  # get 'genres/index'
  # get 'bookshelves/index'
  # get 'bookshelves/show'
  # get 'bookshelves/new'
  # get 'bookshelves/edit'
  # get 'bookshelves/create'
  # get 'bookshelves/update'
  # get 'bookshelves/destroy'
  root 'pages#home'
  get 'genres/index'
  resources :books, only: [:index, :show]
  resources :authors, only: [:index, :show]
  resources :bookshelves
  resources :reviews
end
