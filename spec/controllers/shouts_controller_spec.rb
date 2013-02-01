require 'spec_helper'

describe ShoutsController do
	describe "#create" do
		it "creates a new shout instance" do
			Shout.should_receive(:create)
			post :create
		end
	end

	describe "index" do
		it "returns all the shouts" do
			Shout.should_receive(:all)
			get :index
		end
	end
end
