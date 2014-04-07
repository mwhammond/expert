class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_filter :configure_devise_params, if: :devise_controller?

private

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :usertype, :email, :password, :password_confirmation)
    end
  end

    def configure_devise_params
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:advisor, :name, :usertype, :email, :password, :password_confirmation, :current_password, :admin, :name, :referer, :linkedin, :shortsummary, :longsummary, :sector, :startupexperience, :bandwidth, :stage, :public, :referredby, :quality, :featured, :advisor, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at, :avatar, :updates, :idea, :market, :product, :launch, :revenue, :profitable, :scaling, :sale)
    end
  end


  def after_sign_in_path_for(resource)
    # note this is set by the adapated devise user signup form based, two different
    # landing pages depending on which button clicked on the front
    home_index
  end



end
