Rails.application.routes.draw do
  root :to => 'users#index'
  get 'signup' => 'users#new'
  get 'login' =>'sessions#new'
  post 'login' =>'sessions#create'
  resources :users
end
