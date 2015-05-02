Rails.application.routes.draw do

  root 'pages#home'

  resources :menus do
    resources :lunches
    resources :dinners
  end

end
