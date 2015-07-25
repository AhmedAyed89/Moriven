Rails.application.routes.draw do
  root 'home#index'
  resources :portfolios
  resources :teams,except:[:show]
end