Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :games
  resources :users do
    resources :games, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
