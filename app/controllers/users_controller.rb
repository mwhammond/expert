class UsersController < ApplicationController



	def new
		redirect_to "/users/sign_up"
	end

	def index
		@users = User.where(:featured => true).order(quality: :desc).first(12)
	end


	def show
		@user = User.find(params[:id])
		@startups = Startup.where(:user_id == params[:id])
	end

	def friend

	user1 = User.find(params[:id])
	user2 = User.find(params[:id])
	user1.add_buddy(user2) # Creates a messaage of containing the id of buddied records.


	end




end