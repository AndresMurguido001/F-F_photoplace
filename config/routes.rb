Rails.application.routes.draw do
  devise_for :users
  devise_for :installs

  root 'pictures#index'
  resources :pictures do
    resources :comments
    member do
      put "like" => "pictures#upvote"
      put "unlike" => "pictures#downvote"
    end
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
