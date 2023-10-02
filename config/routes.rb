Rails.application.routes.draw do
  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy", as: "logout"
  resources :users  #, except: [:new, :show]
  resources :students
  root "users#principal" 
  get "about", to: "users#about"
  get "contact", to: "users#contact"
  get "dashboard", to: "users#dashboard"
  get "index", to: "users#index"
  match ':controller(/:action(/:id))',:via=> :get
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
