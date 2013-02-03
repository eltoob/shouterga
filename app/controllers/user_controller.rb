class UserController < ApplicationController
  def index
    @users =  User.all
  end

  def edit
  	@user = User.find(params[:id])
  	redirect_to root_path unless @user == current_user
  end

  def update
  	current_user.update_attributes(params[:user])
  	redirect_to edit_user_path(current_user)
  end
end