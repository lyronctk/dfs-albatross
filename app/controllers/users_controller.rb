class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user?
  
  def show
    @user = User.find(session[:user_id])
  end

end
