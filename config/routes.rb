Rails.application.routes.draw do
  devise_for :influencers
  root 'mypages#index'

  resources :mypages, only: :index
end
