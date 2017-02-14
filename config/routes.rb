Rails.application.routes.draw do
  root :to => 'users#index'
  get 'signup' => 'users#new'
  get 'login' =>'sessions#new'
  post 'login' =>'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :users do
    resources :posts
  end
  resources :post do
    resources :comments
  end
end
