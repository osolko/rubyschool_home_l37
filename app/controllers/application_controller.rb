class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected
	
	def configure_permitted_parameters
#	  devise_parameter_sanitizer.for(:sign_up) << :username #add symbol :username to Array
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
	end 
end