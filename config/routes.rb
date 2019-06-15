Rails.application.routes.draw do
  resources :courts
  devise_for :users
  root to: "home#index"
end
