Rails.application.routes.draw do
  resources :scores
  resources :users
  post '/users/findby', to: 'users#findUser'
  get '/scores/maxscore/:id', to: 'scores#maxScore'
  get '/scores/totalgames/:id', to: 'scores#totalGames'
end
