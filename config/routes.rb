Rails.application.routes.draw do
  devise_for :users
  resources :tiny_urls
  root 'tiny_urls#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
