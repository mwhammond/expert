class HomeController < ApplicationController

  	def index
		@users = User.where(:featured => true).order(quality: :desc).first(12)
		@startups = Startup.where(:featured => true).order(quality: :desc).first(3)
	end

	def advisorsignup
		if user_signed_in? 
			redirect_to current_user
		end
	end

	def startupsignup
		if user_signed_in? 
			redirect_to current_user
		end
	end

end
