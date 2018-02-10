Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
  resources :pictures
  root 'pictures#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end