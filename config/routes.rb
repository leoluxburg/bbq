Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/home'
  devise_for :users,  :controllers => { registrations: "registrations"}
  resources :users

  resources :perfils
  resources :barbacoas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
