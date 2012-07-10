if Rails.env.development?
  
  Post.destroy_all

  27.times do
    f = Post.create :title => "Test Post",
                  :post => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eu suscipit nunc. In consectetur velit ac diam laoreet rutrum. Proin at lorem nec turpis gravida iaculis eget eget felis. Cras malesuada, enim a dapibus tincidunt, dui tellus condimentum odio, sed ultrices risus ante non erat. Integer consectetur enim dui..."

  end
  
  puts "#{Post.count} posts created."
  
  
end