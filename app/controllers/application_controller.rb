

class ApplicationController < ActionController::Base


  protect_from_forgery with: :exception


  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :birthday,:gender , :avatar, :avatar_cache ,:role])
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :birthday,:gender , :avatar, :avatar_cache,:remove_avatar , :role])

  end



  def after_sign_out_path_for(user)
    courses_path
  end




end
