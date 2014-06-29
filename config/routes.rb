Coffeenapkins::Application.routes.draw do

  resources :napkins do
  	resources :comments
  end

  root 'welcome#index'
end