Rails.application.routes.draw do
  devise_for :users, contollers: {
    # registrations_controllerを有効にする
    registrations: 'users/registrations',
  }

  root 'pages#top'
  get 'pages/help'

   resources :users, only: %i(index show)
end
