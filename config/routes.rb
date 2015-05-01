Rails.application.routes.draw do
   
  root 'menus#index'

  resources :menus do
    resources :lunches
    resources :dinners
  end

end
