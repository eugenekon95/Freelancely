Rails.application.routes.draw do
  get 'users/dashboard', to: 'users#dashboard'
  post 'users/edit', to: 'users#update'
  root 'pages#home'
  devise_for :users,
                controllers:{registrations: "registrations"}
  
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
