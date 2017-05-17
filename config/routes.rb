Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end
  get root to: 'restaurants#index'

  get 'reviews/search', to: 'reviews#search', as: 'reviews_search'
end
