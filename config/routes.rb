Rails.application.routes.draw do
  resources :rounds
  #resources :user_questions
  root 'game_sessions#index'
  #resources :answers
  resources :game_sessions do
    resources :users, :user_questions, :rounds
  end
  resources :sessions
  resources :users
  resources :questions
  resources :user_questions
  #resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
