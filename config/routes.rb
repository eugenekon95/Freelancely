Rails.application.routes.draw do
  get '/dashboard', to: 'users#dashboard'
  post 'users/edit', to: 'users#update'
  get 'users/show'
  root 'pages#home'

  devise_for :users,
                controllers:{registrations: "registrations", omniauth_callbacks: "users/omniauth_callbacks"}
  
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
