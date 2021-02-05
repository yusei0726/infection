Rails.application.routes.draw do
  devise_for :companies,
  path: :companies,
    :controllers => {
      :registrations => 'companies/registrations',
      :sessions => 'companies/sessions',
      :passwords => 'companies/passwords'
    }

  devise_for :influencers,
    path: :influencers,
    :controllers => {
      :registrations => 'influencers/registrations',
      :sessions => 'influencers/sessions',
      :passwords => 'influencers/passwords'
    }

  root 'mypages#index'

  resources :mypages, only: [:index, :new, :create, :show]
end
