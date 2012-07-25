class App < ActiveRecord::Base
  attr_accessible :description, :github_url, :image, :name, :url
end
