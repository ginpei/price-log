class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :login_path

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def login_path(provider)
    "/auth/#{provider}"
  end
end
