Rails.application.routes.draw do
  resources :exercise_galleries
  resources :workout_infos
  devise_for :users
  root 'home#page'
  resources :exercise_infos
  resources :user_infos
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# <% @difficulty = ["beginner", "intermediate", "advanced"]%>
# <% @types_of_workouts = ["strength or resistance training", "cardio", "HIIT", "other..."]%>
