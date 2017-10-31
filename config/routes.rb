Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'users#index'
    
     get  '/new',  to: 'users#new'
    
    get    '/login',   to: 'sessions#login'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
    
  resources :users
end
