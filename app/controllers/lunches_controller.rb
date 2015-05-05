class LunchesController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_lunch, only: [:show, :edit, :update, :destroy]

	def new
		@lunch = Lunch.new
	end

	def create
      @user  = current_user
      @lunch = @user.lunch.build(lunch_params)

       if @lunch.save
         flash[:notice] = 'Lunch has been created.'
         redirect_to @lunch
       else
         #nothing, yet
       end  
	end

  def show
  end

  def edit
  end

  def update
    if @lunch.update(lunch_params)
      flash[:notice] = 'Lunch has been updated.'
      redirect_to @lunch
    end
  end

  def destroy
    @lunch.destroy
    flash[:notice] = 'Lunch has been deleted.'

    redirect_to @lunch
  end

  private


  def set_lunch
    @lunch = Lunch.find(params[:id])
  end

  def lunch_params
   params.require(:lunch).permit(:salad, :accompaniment, :protein1, :protein2, :protein3, :dessert, :juice)
  end

end
