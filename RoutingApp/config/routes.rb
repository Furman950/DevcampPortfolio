Rails.application.routes.draw do

  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end
  
  
  
  
  get 'about', to: 'pages#about'
  
  get 'leadgen/advertising/afda/landingpage/lead', to: 'pages#contact', as: 'lead'
  
  resources :blogs
  resources :posts
  
  get 'posts/*missing', to: 'posts#missing'
  
  get 'query/:else/:another_one', to: 'pages#something'
  get 'query/:else', to: 'pages#something'
    
  # home page
  root to: 'pages#home'
end
