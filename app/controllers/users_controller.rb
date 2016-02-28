class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user?
  
  def show
    @user = User.find_by_auth_token!(cookies[:auth_token])
  end

end
