class StartupsController < ApplicationController

	def new
		@startup = Startup.new
	end

	def index
		@startups = Startup.all #where(:featured => true)
	end




	def create
		@startup = Startup.new(startup_params)

		if @startup.save
			redirect_to current_user, notice: 'Profile was successfully created.'
		else
			render action: 'new'
		end
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
		redirect_to current_user, notice: 'Your profile has been updated'
	else
		render 'edit'
	end
end


def destroy
  @startup = Startup.find(params[:id])
  @startup.destroy
 
  redirect_to startups_path, notice: 'Profile removed'
end



private
def startup_params
	params.require(:startup).permit(:user_id, :idea, :market, :product, :launch, :revenue, :profitable, :scaling, :sale, :avatar, :updates, :name, :link, :bio, :sector, :founded, :capital, :stage, :requests, :public, :casestudy, :quality, :email, :featured)
end

end
