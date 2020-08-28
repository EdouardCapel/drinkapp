Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :ingredients
  resources :doses
  resources :cocktails
  resources :glasses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
