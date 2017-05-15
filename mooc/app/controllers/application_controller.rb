class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    added_attrs = [:email, :password, :password_confirmation, :remember_me,:name,:gender, :date_of_birth, :image, :role_id ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  before_action :set_current_user

  def set_current_user

    User.current_user = current_user

  end

end
