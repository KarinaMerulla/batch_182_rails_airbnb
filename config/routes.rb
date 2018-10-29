Rails.application.routes.draw do
  get 'flats/index'
  get 'flats/:id', to: 'flats#show', as: 'show'
  root to: 'flats#index'
end
