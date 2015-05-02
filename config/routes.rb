Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users
  root 'pages#home'

  resources :menus do
    resources :lunches
    resources :dinners
  end

end
