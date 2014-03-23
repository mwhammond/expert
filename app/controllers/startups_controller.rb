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
	@startup.save
	redirect_to @startup
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
		redirect_to @startup
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
	params.require(:startup).permit(:avatar, :name, :link, :bio, :sector, :founded, :capital, :stage, :requests, :public, :casestudy, :quality, :email, :featured)
end

end
