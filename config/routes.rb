Rails.application.routes.draw do 
  get 'error/404'
  get 'error/notMade'
  get '/games', to: 'games#index'
  get '/posts', to: 'posts#index'
  devise_for :users
  get '/support', to: 'support#support'
  get '/store', to: 'store#store'
  get '/leaderboard', to: 'leaderboard#leaderboard'
  resources :guidelines do
	resources :category
  end
  post '/guidelines/:guideline_id/new', to: 'category#create'
  post '/guidelines/:guideline_id/edit/:id', to: 'category#edit'
  post '/guidelines/:guideline_id/update/:id', to: 'category#update'
  post '/guidelines/:guideline_id/delete/:id', to: 'category#destroy'
  post '/guidelines/new', to: 'guidelines#new'
  get '/guidelines/show/:id', to: 'guidelines#show'
  post '/guidelines/edit/:id', to: 'guidelines#edit'
  post '/guidelines/delete/:id', to: 'guidelines#destroy'
  get '/board/announcements/index', to: 'announcements#index'
  get '/board/announcements/show/:id', to: 'announcements#show'
  post '/board/announcements/new', to: 'announcements#new'
  post '/board/announcements/edit/:id', to: 'announcements#edit'
  post '/board/announcements/delete/:id', to: 'announcements#destroy'
  resources :announcements
  get '/', to: 'godfuljur#home'
  get '/introduction', to: 'godfuljur#introduction'
  post '/users/secession', to: 'devise/registrations#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
