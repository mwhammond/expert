class HomeController < ApplicationController

  	def index
		@featuredadvisors = Advisor.where(:featured => true)
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
