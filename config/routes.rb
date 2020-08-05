Rails.application.routes.draw do
  root "static_pages#Home"

  get "/login",to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to:"sessions#destroy"
  get "/signup", to: "users#new"
  post "/signup",  to: "users#create"
  patch "/users/:id/edit" ,to:"users#update"
  get "/users/:id/edit" ,to:"users#create"
  post "/follows",  to: "follows#create"
  delete "/follows" ,to:"follows#destroy"
  post  "/likes",  to: "likes#create"
  get "/likes" ,to:"likes#index"

  scope "(:locale)", locale: /en|vi/ do
    resources :users
    resources :books
    resources :authors
  end
end
