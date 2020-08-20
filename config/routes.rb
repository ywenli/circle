Rails.application.routes.draw do
  devise_for :users
  root 'pages#top'
  get 'pages/help'

   resources :users, only: %i(index show)
end
