Rails.application.routes.draw do
  get 'newsletters/new'

  get 'newsletters/create'

  root 'home#index'
  resources :portfolios
  resources :teams, except: :show
  get 'contact' => 'contacts#new'
  post 'contact' => 'contacts#create'
  get 'about' => 'home#about'
  resources :newsletters , only: :create
end