class UsersController < ApplicationController



#	def index
#		@advisors = Advisor.all
#	end


def show
	@user = User.find(params[:id])
end





end