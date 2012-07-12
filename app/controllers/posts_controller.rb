class PostsController < ApplicationController
	def index
		@posts = Post.order("created_at DESC").page(params[:page]).per(5)
		# @posts = @posts.page(params[:page]).per(4)
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(params[:post])
		redirect_to :index
	end

	def edit
		@post = Post.find_by_id(:id)
	end

	def update
		
	end

	def show
		@post = Post.find_by_id(params[:id])
	end
	
	def about
	end

end
