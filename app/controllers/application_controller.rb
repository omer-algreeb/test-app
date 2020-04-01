class ApplicationController < ActionController::Base
  before_action :set_locale

  private
    # Set request locale
    def set_locale
      I18n.locale = params[:locale] || request.headers['locale'] || I18n.default_locale
    end
end
