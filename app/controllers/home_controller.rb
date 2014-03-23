class HomeController < ApplicationController

  	def index
		@featuredadvisors = Advisor.where(:featured => true)
	end

	def advisorsignup
	end

	def startupsignup
	end

end
