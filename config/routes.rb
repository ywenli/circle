Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

   resources :users, only: %i(show)
end
