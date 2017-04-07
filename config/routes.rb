Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
 resources :articles 
 resources :blogs
 root'blogs#index'

 get '/contactus' => 'home#contactus'
 get '/privacy' => 'home#privacy'
 get '/aboutus' => 'home#aboutus'
 resources :articles do
   resources :comments
 end
end
 