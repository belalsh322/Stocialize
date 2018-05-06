class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :configure
  
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |v| v.permit(:username,:email,:password,:password_confirmation,:remember_me) }
    devise_parameter_sanitizer.permit(:sign_in) { |v| v.permit(:username,:email,:password,:password_confirmation,:remember_me) }
    devise_parameter_sanitizer.permit(:account_update) { |v| v.permit(:email,:password,:password_confirmation,:remember_me) }
  end
end
