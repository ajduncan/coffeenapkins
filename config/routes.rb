Coffeenapkins::Application.routes.draw do

  devise_for :users
  resources :napkins do
  	resources :comments
  end

  root 'welcome#index'
end