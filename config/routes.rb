Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/restaurants_id/reviews/new", to: "reviews#new"
  # post "/restaurants_id/reviews", to: "reviews#create", as: :restaurant_reviews
  # get "restaurants", to: "restaurants#index"
  # get "/restaurants/new", to: "restaurants#new", as: :new_restaurant_review
  # get "/restaurants/:id", to: "restaurants#show", as: :restaurant
  # post "/restaurants", to: "restaurants#create"
  # # review
  # delete "restaurants/:id", to: "restaurants#destroy"
  resources :restaurants, only: [ :index, :create, :show, :new ] do
    resources :reviews, only: [ :new, :create ]
  end
end
