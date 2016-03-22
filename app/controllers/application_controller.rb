class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale, if: :is_get_request?

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    Rails.application.routes.default_url_options[:locale] = I18n.locale # NEED CHECK
  end

  def is_get_request?
    request.request_method == 'GET'
  end
end
