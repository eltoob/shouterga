class ShoutsController < ApplicationController
  def index
  	@shouts = Shout.all
  end

  def create
  	Shout.create(params[:shout])
  	redirect_to shouts_path
  end
end
