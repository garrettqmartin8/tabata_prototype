TabataApp::Application.routes.draw do
  root 'workouts#index'
  get 'new' => 'workouts#new', as: 'new_workout'
  get 'workout' => 'workouts#show', as: 'workout'
  get 'create' => 'workouts#create', as: 'create_workout'
end
