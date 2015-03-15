Rails.application.routes.draw do
  
  devise_for :users
  	resources :users, only: [:update]

  resources :posts do
  	resources :comments, only: [:create]
  end

  resources :topics do 
  	resources :posts, except: [:index]
  end
  
  get 'about' => 'welcome#about'
  get 'contact' => 'welcome#contact'

  root to: 'welcome#index'
end
