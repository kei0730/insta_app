class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  
  # 追加したカラムをストロングパラメーター
  def configure_permitted_parameters
    # ユーザー登録
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:name,:username]
                                      )
    # ユーザー編集
    devise_parameter_sanitizer.permit(:account_update,
                                      keys: [:name,:username]
                                      )
  end
end
