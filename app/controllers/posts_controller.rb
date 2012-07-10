class PostsController < ApplicationController
	def index
		@posts = Post.all
		# @posts = @posts.page(params[:page]).per(4)
	end

	def show
		@post = Post.find_by_id(params[:id])
	end
	
	def about
	end

end
