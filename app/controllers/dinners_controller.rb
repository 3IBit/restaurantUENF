class DinnersController < ApplicationController
	def index
		@dinners = Dinner.all
	end

	def new
		@dinner = Dinner.new
	end

	def create
      @dinner = Dinner.new(dinner_params)
 
      if @dinner.save
        flash[:notice] = 'Dinner has been created.'
        redirect_to @dinner
      else
        #nothing, yet
      end

  	end

    def show
      @dinner = Dinner.find(params[:id])
    end

  private

  def dinner_params
    params.require(:dinner).permit(:salad, :accompaniment, :protein1, :protein2, :protein3, :dessert, :juice)
  end

end
