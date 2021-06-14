Rails.application.routes.draw do
 
  get '/dashboard', to: 'users#dashboard'
  post 'users/edit', to: 'users#update'
  root 'pages#home'

  

  devise_for :users,
                controllers:{registrations: "registrations", omniauth_callbacks: "users/omniauth_callbacks"}
  get 'users/:id', to: 'users#show'
  
  resources :jobs
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
