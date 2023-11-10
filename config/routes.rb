Rails.application.routes.draw do
  resources :hotels
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'hotels#index'
  resources :cart_items, only: [:index, :create, :destroy]

  get 'bulk_items', to: 'cart_items#bulk_items'

  get 'rating', to: 'hotels#rating'

  get 'deliverytime', to: 'hotels#delivery_time'

  get 'highprice', to: 'hotels#high_price'

  get 'lowprice', to: 'hotels#low_price'


  get 'category_item', to: 'items#category_item'

  get '*unmatched_route', to: 'main#not_found'


  resources :select_items, only: [:index]

  resources :cards, only: [:index]

  resources :items, only: [:index, :create]

  resources :view_carts, only: [:index]
end
