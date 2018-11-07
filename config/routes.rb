Rails.application.routes.draw do
  root to: 'landing#index'

  devise_for :users

end