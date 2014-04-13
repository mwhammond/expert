class UsersController < ApplicationController

before_filter :authenticate_user!

	def new
		redirect_to "/users/sign_up"
	end

	def index
			@users = User.where(:advisor => true).order(quality: :desc).first(12)
	end


	def show
		@user = User.find(params[:id])
		@mystartups = Startup.where(:user_id => params[:id])
		@followers = @user.followers
		@following = @user.all_following

	end

	def follow
		@user1 = User.find(params[:id])
		@user2 = current_user	
		@user1.follow(@user2)
	end

	def unfollow
		@user1 = User.find(params[:id])
		@user2 = current_user	
		@user1.stop_following(@user2)
	end






	end