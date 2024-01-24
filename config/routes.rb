Rails.application.routes.draw do
  resources :usbs
  get 'home/top'
  root to:'home#top'
  get 'home/room'
  get 'home/student_top'
  get 'loan_details/loan_possible'
  resources :loan_details
  resources :key_masters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
