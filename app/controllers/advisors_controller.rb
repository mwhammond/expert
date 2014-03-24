class AdvisorsController < ApplicationController

	def new
		@advisor = Advisor.new
	end

	def index
		@advisors = Advisor.where(:featured => true)
	end


	def create
	#	render text: params[:advisor].inspect
	#@order = @customer.orders.create(order_date: Time.now)
	#@advisor = @user.advisors.create(advisor_params)

	@advisor = Advisor.new(advisor_params)
	@advisor.user_id = current_user.id
	@advisor.save
	redirect_to current_user
end


def show
	@advisor = Advisor.find(params[:id])
end

def edit
	@advisor = Advisor.find(params[:id])
	@advisor.save
	redirect_to current_user
end

def update
	@advisor = Advisor.find(params[:id])

	if @advisor.update(advisor_params)
		redirect_to current_user
	else
		render 'edit'
	end
end

def destroy
  @advisor = Advisor.find(params[:id])
  @advisor.destroy
 
  redirect_to advisors_path
end



private
def advisor_params
	params.require(:advisor).permit(:idea, :market, :product, :launch, :revenue, :profitable, :scaling, :sale, :avatar, :name, :linkedin, :summary, :sector, :startupExperience, :bandwidth, :stage, :expertise, :public, :referred, :quality, :email, :featured)
end

end
