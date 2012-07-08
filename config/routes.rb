PersonalBlog::Application.routes.draw do
  root :to => "mockup#index"
  get "/blog" => "mockup#blog"
  get "/index" => "mockup#index"
  get "/about" => "mockup#about"
  get "/contact" => "mockup#contact"

end
