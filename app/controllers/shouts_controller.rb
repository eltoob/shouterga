class ShoutsController < ApplicationController
  def index
  	if params[:user_id]
		user = User.find(params[:user_id])
	  	@shouts = user.shouts
	else
		@shouts = Shout.all
	end
  end

  def create
  	shout = Shout.new(params[:shout])
  	shout.user = current_user
  	shout.save!
  	redirect_to user_shouts_path(current_user)
  end
end
