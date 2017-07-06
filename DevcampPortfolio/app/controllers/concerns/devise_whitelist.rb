module DeviseWhitelist
  extend ActiveSupport::Concern
  
  included do 
   #before_filter :configure_permitted_parameters, if: :devise_controller?
    skip_before_filter :verify_authenticity_token
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
  
end