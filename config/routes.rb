Rails.application.routes.draw do
  root 'home#index'


  resources :portfolios
  resources :teams, except: :show
  resources :articles
  resources :newsletters , only: :create

  get 'contact' => 'contacts#new'
  post 'contact' => 'contacts#create'
  get 'about' => 'home#about'

end