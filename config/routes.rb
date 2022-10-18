Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'home#index'

  # resources :quizzes
  # get '/quizzes/:id/leaderboard' => "quizzes#leaderboard"
  # post '/quizzes/:id' => "quizzes#check_answer"

  # get '/home/leaderboard' => "home#user_board"

  root "quizzes#index"
  resources :quizzes do 
    resources :questions do
      resources :options 
    end
  end
end


