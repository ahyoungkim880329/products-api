class ApplicationController < ActionController::Base
  include Response
  include ExceptionHandler

  # 多言語対応のため追加
  before_action :set_locale

  def set_locale
    I18n.locale = locale
  end

  def locale
    @locale ||= params[:locale] || I18n.default_locale
  end
end
