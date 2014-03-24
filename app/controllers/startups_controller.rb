class StartupsController < ApplicationController

	def new
		@startup = Startup.new
	end

	def index
		@startups = Startup.where(:featured => true)
	end


	def create
		#render text: params[:startup].inspect

	@startup = Startup.new(startup_params)
	@startup.user_id = current_user.id
	@startup.save
	redirect_to current_user
end


def show
	@startup = Startup.find(params[:id])
	
end

def edit
	@startup = Startup.find(params[:id])

end

def update
	@startup = Startup.find(params[:id])

	if @startup.update(startup_params)
		redirect_to current_user
	else
		render 'edit'

	end
end

def destroy
  @startup = Startup.find(params[:id])
  @startup.destroy
 
  redirect_to startups_path
end



private
def startup_params
	params.require(:startup).permit(:idea, :market, :product, :launch, :revenue, :profitable, :scaling, :sale, :avatar, :updates, :name, :link, :bio, :sector, :founded, :capital, :stage, :requests, :public, :casestudy, :quality, :email, :featured)
end

end
