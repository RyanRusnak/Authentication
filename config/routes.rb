LoginApp::Application.routes.draw do
  resources :gyms
  

  resources :users, :user_sessions
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
  
  resources :gyms do
    resources :users
  end
  
end
