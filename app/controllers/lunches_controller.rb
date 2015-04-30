class LunchesController < ApplicationController
	def index
	end

	def new
		@lunch = Lunch.new(params[:lunch])
	end

	def create
      @lunch = Lunch.new(lunch_params)

       if @lunch.save
         flash[:notice] = 'Lunch has been created.'
         redirect_to @lunch
       else
         #nothing, yet
       end  
	end

  private

  def lunch_params
   params.require(:lunch).permit(:salad, :accompaniment, :protein1, :protein2, :protein3, :dessert, :juice)
  end

end
