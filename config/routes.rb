Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  devise_scope :user do
    get 'users/password', to: 'users/passwords#update'
    root to: 'users/sessions#new'
  end

  resource :users
end
