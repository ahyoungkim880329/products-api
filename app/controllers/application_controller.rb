class ApplicationController < ActionController::Base
  # 多言語対応のため追加
  before_action :set_locale

  def set_locale
    I18n.locale = locale
  end

  def locale
    @locale ||= params[:locale] || I18n.default_locale
  end

  include Response
  include ExceptionHandler
end
