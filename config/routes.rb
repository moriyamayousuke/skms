Rails.application.routes.draw do
  get 'home/top'
  root to:'home#top'
  get 'home/room'
  resources :loan_details
  resources :key_masters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
