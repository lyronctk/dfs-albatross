class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create
  skip_before_filter :require_login

  def new
    redirect_to '/auth/twitter'
  end

  def create
    auth = request.env["omniauth.auth"]
    user = User.where(:provider => auth['provider'],
                      :uid => auth['uid'].to_s).first || User.create_with_omniauth(auth)
    reset_session
    session[:user_id] = user.id
    redirect_to '/account', :notice => "signed"
  end

  def destroy
    reset_session
    flash[:success] = "Signed Out!"
    redirect_to root_url
  end

  def failure
    redirect_to root_url, :notice => "invalid"
  end

end
