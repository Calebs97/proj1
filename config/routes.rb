Rails.application.routes.draw do
  root to: 'home#index'
  patch 'capture' => 'pokemon#capture', as: 'capture'
  patch 'damage' => 'pokemon#damage', as: 'damage'
  get 'newpokemon' => 'pokemon#new', as: 'newpokemon'
  post 'createpokemon' => 'pokemon#create', as: 'createpokemon'
  devise_for :trainers
  resources :trainers
end
