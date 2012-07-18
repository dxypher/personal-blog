class PostsController < ApplicationController

	before_filter :require_login, :only => [:edit, :destroy]

	def index
		@posts = Post.order("created_at DESC").page(params[:page]).per(5)
		# @posts = @posts.page(params[:page]).per(4)
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(params[:post])
		redirect_to @post
	end

	def edit
		@post = Post.find_by_id(params[:id])
	end

	def update
		@post = Post.find_by_id(params[:id])
		@post.update_attributes(params[:post])
		redirect_to post_url(params[:id])
	end

	def show
		@post = Post.find_by_id(params[:id])
	end
	def destroy
		@post = Post.find_by_id(params[:id])
		@post.destroy
		redirect_to admin_url
	end

	def about
	end

end
