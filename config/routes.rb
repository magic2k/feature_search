Rails.application.routes.draw do
  root      'projects#index'

  get 'search'  => 'search#index', as: :search

  resources :articles
  resources :projects
  resources :users

end
