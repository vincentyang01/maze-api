Rails.application.routes.draw do
  resources :scores
  resources :users
  post '/users/findby', to: 'users#findUser'
 
end
