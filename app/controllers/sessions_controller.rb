class SessionsController < ApplicationController
  def new

  end

  def create
  	admin = Admin.find_by_email(params[:email])
  	if admin && admin.authenticate(params[:password])
  		session[:uid] = admin.id
      # redirect_to root_url
  		redirect_to admin_url
  	# else
  	# 	flash[:notice] = "Unknown Password or Login"
  	# 	render :new
  	end
  end

  def destroy
  	reset_session
  	render :new
  end
end
