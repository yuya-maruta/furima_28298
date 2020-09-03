class ApplicationController < ActionController::Base
 # before_action :basic_auth
  #before_action :authenticate_user!
  # protect_from_forgery with: :exception
 

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected


 

 def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:lastname,:firstname,:lastname_kana,:firstname_kana,:nickname,:birthday])
 end

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]  
    end
  end


end
