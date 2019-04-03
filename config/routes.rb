Rails.application.routes.draw do
  devise_for :users
     get 'tutorial/tutorials'
  get 'stat/stat'
  get 'homepage/index'
  get 'homepage/about'
  get 'homepage/stat'
  get 'homepage/tutorial'
  get 'homepage/progression'
  
  resources :workouts
  
  root 'homepage#index'
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
