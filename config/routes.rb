Rails.application.routes.draw do
  resources :songs do
    member do
      get :download
    end
  end
  
  root "songs#index"
  
  devise_for :users, controllers: {
  sessions: 'users/sessions'
  }
end
