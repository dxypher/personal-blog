class Post < ActiveRecord::Base
  attr_accessible :image, :post, :title, :admin_id

  belongs_to :admin
end
