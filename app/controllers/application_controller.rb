class ApplicationController < ActionController::Base
  require 'pry-byebug'
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # rescue_from CanCan::AccessDenied do |exception|
  #   redirect_to root_path, alert: "You can't access this page"
  # end

  # before_action :authenticate_user!



  def after_sign_in_path_for(resource)
    albums_path
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:warning] = exception.message
    redirect_to root_path
  end

end
