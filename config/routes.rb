Rails.application.routes.draw do
  root 'game_sessions#new'
  resources :answers
  resources :game_sessions
  resources :sessions
    
  resources :questions
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
