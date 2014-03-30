class HomeController < ApplicationController

  	def index
		@featuredadvisors = Advisor.all #where(:featured => true)
		@featuredstartups = Startup.all #where(:featured => true)
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
