Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "controller#action"

  # get "restaurants", to: "restaurants#index"

  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"

  # # NB: The `show` route needs to be *after* `new` route.
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant


  # get "restaurants/:restaurant_id/reviews/new", to: "reviews#new"
  # post "restaurants/:restaurant_id/reviews", to: "reviews#create"

  resources :restaurants, only: [:index, :new, :create, :show]

  resources :restaurants do
    resources :reviews, only: [:new, :create ]
  end

end
