Rails.application.routes.draw do
  devise_for :users
  resources :projects
  root to: 'pages#home'
  get "about", to: "pages#about", as: "about"
  get "contact", to: "pages#contact", as: "contact"
  get "bronze", to: "projects#bronze", as: "bronze"
  get "scrap", to: "projects#scrap", as: "scrap"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
