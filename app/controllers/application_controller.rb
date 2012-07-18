class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_login
    if session[:uid].nil?
      redirect_to login_url, notice: "Login Required"
    else
      @admin = Admin.find(session[:uid])
    end
  end
end
