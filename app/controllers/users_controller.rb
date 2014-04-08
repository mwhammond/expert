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




end