class AdminsController < ApplicationController
	before_filter :require_login
	def index
		@posts = Post.order("created_at DESC").page(params[:page]).per(10)
	end

	def new
		@admin = Admin.new
	end

	def create
		@admin = Admin.create(params[:admin])
		render :index
	end
end
