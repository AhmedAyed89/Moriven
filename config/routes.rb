Rails.application.routes.draw do
  root 'home#index'
  resources :portfolios
  resources :teams,except:[:show]
  get 'contact' => 'contacts#new'
  post 'contact' => 'contacts#create'
end