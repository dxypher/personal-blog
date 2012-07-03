PersonalBlog::Application.routes.draw do
  
  root :to => "mockup#index"
  get "/blog" => "mockup#blog"
  get "/index" => "mockup#index"

end
