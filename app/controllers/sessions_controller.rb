class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create
  skip_before_filter :require_login

  def new
    redirect_to '/auth/twitter'
  end

  def create
    auth = request.env["omniauth.auth"]
    puts "PROVIDER IS #{auth['provider']}"
    puts "UID IS #{auth['uid']}"
    user = User.where(:provider => auth['provider'],
                      :uid => auth['uid'].to_s).first || User.create_with_omniauth(auth)
    if params[:remember_me]
      cookies.permanent[:auth_token] = user.auth_token
    else
      cookies[:auth_token] = user.auth_token
    end
    redirect_to '/account', :notice => "signed"
  end

  def destroy
    cookies.delete(:auth_token)
    flash[:success] = "Signed Out!"
    redirect_to root_url
  end

  def failure
    redirect_to root_url, :notice => "invalid"
  end

end
