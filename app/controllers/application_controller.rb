class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def authenticate_user!
    unless current_user
      redirect_to '/login' 
    end 
  end
  

  def authenticate_admin_staff!
    unless current_user && current_user.role.name == "staff" || current_user.role.name == "admin"
      flash[:danger] = "Access Denied"
      redirect_to "/"
    end
  end

  # def authenticate_staff!
  #   unless current_user && current_user.role.name == "staff"
  #     flash[:danger] = "Access Denied"
  #     redirect_to "/"
  #   end
  # end

end
