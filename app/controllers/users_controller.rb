class UsersController < ApplicationController



	def new
		redirect_to "/users/sign_up"
	end

	def index
		@users = User.all
	end


	def show
		@user = User.find(params[:id])
	end




end