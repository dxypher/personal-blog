PersonalBlog::Application.routes.draw do
  root :to => "posts#index"
  resources :posts
  get "about" => "posts#about", :as => :about

  get "/mockup" => "mockup#blog"
  get "/contact" => "mockup#contact"

end
