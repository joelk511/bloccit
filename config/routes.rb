Rails.application.routes.draw do
  
  devise_for :users
  	resources :users, only: [:update]

  resources :topics do 
  	resources :posts, except: [:index]
  	resources :comments, only: [:create]
  end
  
  get 'about' => 'welcome#about'
  get 'contact' => 'welcome#contact'

  root to: 'welcome#index'
end
