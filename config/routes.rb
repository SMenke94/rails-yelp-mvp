Rails.application.routes.draw do
  # root to: "controller#action"
  get "restaurants", to: "restaurants#index"

  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"

  get "restaurants/:id", to: "restaurants#show", as: "restaurant"

  post "restaurants/:restaurant_id/reviews", to: "reviews#create", as: "restaurant_reviews"

  get "restaurants/:restaurant_id/reviews/new", to: "reviews#new"

  # resources :restaurants do
  #   resources :reviews, only: [ :new, :create ]
  # end
end
