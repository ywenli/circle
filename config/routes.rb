Rails.application.routes.draw do
  devise_for :users
  root 'pages#top'

   resources :users, only: %i(index show)
end
