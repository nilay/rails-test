Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :persons, only: %i[index show]
  resources :cities, only: [:index]
  resources :companies, only: [:index]
end
