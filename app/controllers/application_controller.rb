class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  #このメソッドをも使うことで、ログインしている状態の時とログアウト状態の時で表示が変わるような実装ができる。ログイン状態になければログイン画面に案内される
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
