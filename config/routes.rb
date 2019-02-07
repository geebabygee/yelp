Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/new'
  get 'restaurants/create'
  root to: 'restaurants#index'
  resources :restaurants, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:new, :create]
  end
end

# Controller:Action
# root GET /    restaurants:index - restaurants_path
# restaurants GET  /restaurants restaurants:index - restaurants_path
# restaurant GET  /restaurants/:id restaurants:show - restaurant_path(restaurant) - send the restaurant with it
# new_restaurant GET  /restaurants/new restaurants:new - new_restaurant_path
# POST /restaurants - restaurants:create
# new_restaurant_review GET  /restaurants/:restaurant_id/reviews/new - reviews:new - new_restaurant_review_path(restaurant)
# restaurant_reviews 'POST/restaurants/:restaurant_id/reviews' - reviews:create
