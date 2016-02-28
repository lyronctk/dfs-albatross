class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :require_login

  helper_method :current_user
  helper_method :user_signed_in?
  helper_method :correct_user?

  private 
    def require_login
      unless current_user
        redirect_to "/"
      end
    end

    def current_user
      begin
        @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
      rescue Exception => e
        nil
      end
    end

    def user_signed_in?
      return true if current_user
    end

    def correct_user?
      @user = User.find_by_auth_token!(cookies[:auth_token])
      unless current_user == @user
        redirect_to root_url, :alert => "Access denied."
      end
    end

    def authenticate_user!
      if !current_user
        redirect_to root_url, :alert => 'You need to sign in for access to this page.'
      end
    end

end
