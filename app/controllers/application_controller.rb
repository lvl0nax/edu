class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale#, if: :is_get_request?

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def is_get_request?
    request.request_method == 'GET'
  end
end
