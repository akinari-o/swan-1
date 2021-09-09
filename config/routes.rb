Rails.application.routes.draw do
  devise_for :users
  resources :messages, only: :index
  root to: "messages#index"
end