Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "auctions#index"

  get '/auctions/all_bids', to: 'auctions#all_bids', as: :all_bids

  resources :auctions do
    resources :bids
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection

  end
end
