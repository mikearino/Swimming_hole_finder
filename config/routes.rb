Rails.application.routes.draw do
  get "/locations/rando" => 'locations#rando'
  get "/locations/most_popular" => 'locations#most_popular'


  resources :locations do
    resources :reviews
  end
end
