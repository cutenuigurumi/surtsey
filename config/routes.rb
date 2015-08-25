Rails.application.routes.draw do
  resources :case_categories
  resources :items
  root "top#index"
end
