Rails.application.routes.draw do
  
  devise_for :users, controllers: {
  :registrations => 'users/registrations',
  sessions: 'users/sessions'
  }
  
  resources :songs do
    member do
      get :download
    end
    resources :comments, only: [:create, :destroy]
  end
  root 'songs#index'
end
