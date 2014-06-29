Coffeenapkins::Application.routes.draw do

  resources :napkins

  root 'welcome#index'
end