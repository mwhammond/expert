class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_filter :configure_devise_params, if: :devise_controller?

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :usertype, :email, :password, :password_confirmation)
    end
  end

  def after_sign_in_path_for(resource)
    # note this is set by the adapated devise user signup form based, two different
    # landing pages depending on which button clicked on the front

    if current_user.advisor?
      new_advisor_path

    elsif current_user.startup?
      new_startup_path

    else

    current_user

    end
  	
  end

end
