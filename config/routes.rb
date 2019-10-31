Rails.application.routes.draw do
  resources :homeworks
  resources :categories
  get 'welcome/index'
  get 'welcome/next'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
