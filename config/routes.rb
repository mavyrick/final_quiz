Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "auctions#index"

  get '/auctions/my_bids', to: 'auctions#my_bids', as: :my_bids
  get '/auctions/my_auctions', to: 'auctions#my_auctions', as: :my_auctions

  resources :auctions do
    resources :bids
    put :publish
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection

  end
end
