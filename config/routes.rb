PersonalBlog::Application.routes.draw do
  
  resources :apps

  get "sessions/new", :as => :login

  post "sessions/create"

  get "sessions/destroy", :as => :logout

  root :to => "posts#index"
  resources :posts
  get "about" => "posts#about", :as => :about

  get "/mockup" => "mockup#blog"
  get "/contact" => "mockup#contact"
  resources :admins
  get "admins" => 'admins#index', :as => :admin

end
