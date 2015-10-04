Rails.application.routes.draw do
  resources :available_schedules
  resources :sites
  resources :curriculums
  resources :print_schedules
  resources :schedules
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get 'program_leaders' => 'users#index_pls'

  post 'sites/search' => 'sites#search'
  post 'program_leaders/search' => 'users#search_pls'
end
