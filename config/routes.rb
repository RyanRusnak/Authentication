LoginApp::Application.routes.draw do
  
  resources :gymposts

  resources :userposts

  resources :gyms, :order => 'totalBench DESC'

  resources :users do
    resources :userposts
  end
  
  resources :user_sessions
  
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
  
  resources :gyms do
    resources :gymposts, :users do
      resources :userposts do
      end
  end
end
  get '/leaderboard', :to => 'users#leaderboard'
end
