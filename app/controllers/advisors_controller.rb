class AdvisorsController < ApplicationController

	def new
		@advisor = Advisor.new
	end

	def index
		@advisors = Advisor.where(:featured => true)
	end


	def create
		@advisor = Advisor.new(advisor_params)

		if @advisor.save
			redirect_to current_user, notice: 'Profile was successfully created.'
		else
			render action: 'new'
		end
	end


	def show
		@advisor = Advisor.find(params[:id])
	end

	def edit
		@advisor = Advisor.find(params[:id])
	end

	def update
		@advisor = Advisor.find(params[:id])

		if @advisor.update(advisor_params)
			redirect_to current_user, notice: 'Your profile has been updated'
		else
			render 'edit'
		end
	end

	def destroy
		@advisor = Advisor.find(params[:id])
		@advisor.destroy

		redirect_to advisors_path, notice: 'Record deleted'
	end



	private
	def advisor_params
		params.require(:advisor).permit(:idea, :market, :product, :launch, :revenue, :profitable, :scaling, :sale, :avatar, :name, :linkedin, :summary, :sector, :startupExperience, :bandwidth, :stage, :expertise, :public, :referred, :quality, :email, :featured)
	end

end
