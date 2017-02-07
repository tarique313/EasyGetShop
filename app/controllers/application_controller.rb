class ApplicationController < ActionController::Base
  #include DeviseTokenAuth::Concerns::SetUserByToken
	#protect_from_forgery with: :null_session
  #protect_from_forgery with: :exception
  protect_from_forgery 
  skip_before_action :verify_authenticity_token, if: :json_request?
  before_filter :set_locale
  #include Recaptcha::Verify
  #config.i18n.default_locale = :en
 
private

	def set_locale	
		I18n.locale = params[:locale] || I18n.default_locale
    	#Rails.application.routes.default_url_options[:locale]= I18n.locale 
	end

	def default_url_options 
		{ locale: I18n.locale }
	end

  protected

  def json_request?
    request.format.json?
  end

end
