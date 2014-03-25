class UsersController < ApplicationController



def index
	@users = User.all
end


def show


	@user = User.find(params[:id])
	@advisorrecords = Advisor.where(:user_id => current_user.id)
	@startuprecords = Startup.where(:user_id => current_user.id)

end









end