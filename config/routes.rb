Rails.application.routes.draw do
  root 'mypages#index'

  resources :mypages, only: :index
end
