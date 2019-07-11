Rails.application.routes.draw do
  devise_for :users, controllers: {
  sessions: 'users/sessions'
  }
  
  resources :songs do
    member do
      get :download
    end
    resources :comments, only: [:create, :delete]
  end
  
  root "songs#index"
end
