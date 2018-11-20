Rails.application.routes.draw do
  root to: 'landing#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  get '/users/:id' => 'users#show', as: :user

end