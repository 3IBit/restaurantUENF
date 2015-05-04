Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users
  root 'pages#home'

    resources :lunches
    resources :dinners

end
