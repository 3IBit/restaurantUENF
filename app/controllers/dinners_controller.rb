class DinnersController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_dinner, only: [:show, :edit, :update, :destroy]

	def new
		@dinner = Dinner.new
	end

	def create
      @user = current_user
      @dinner = @user.dinner.build(dinner_params)
 
      if @dinner.save
        flash[:notice] = 'Dinner has been created.'
        redirect_to @dinner
      else
        #nothing, yet
      end

  	end
 
    def edit
    end

    def update
      if @dinner.update(dinner_params)
        flash[:notice] = 'Dinner has been updated.'
        redirect_to @dinner
      else
       render action: 'edit'
      end
    end

    def destroy
      @dinner.destroy
      flash[:notice] = 'Dinner has been deleted.'

      redirect_to @dinner
    end

  private

  def set_dinner
    @dinner = Dinner.find(params[:id])
  end

  def dinner_params
    params.require(:dinner).permit( :salad, :accompaniment, :protein1, :protein2, :protein3, :dessert, :juice)
  end

end
