class LunchesController < ApplicationController
  
  before_action :set_menu
  before_action :set_lunch, only: [:show, :edit, :update, :destroy]

	def new
		@lunch = @menu.build_lunch
	end

	def create
      @lunch = @menu.create_lunch(lunch_params)

       if @lunch.save
         flash[:notice] = 'Lunch has been created.'
         redirect_to [@menu, @lunch]
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
      redirect_to [@menu, @lunch]
    end
  end

  def destroy
    @lunch.destroy
    flash[:notice] = 'Lunch has been deleted.'

    redirect_to @menu
  end

  private
  
  def set_menu
    @menu = Menu.find(params[:menu_id])
  end

  def set_lunch
    @lunch = Lunch.find(params[:id])
  end

  def lunch_params
   params.require(:lunch).permit(:menu_id, :salad, :accompaniment, :protein1, :protein2, :protein3, :dessert, :juice)
  end

end
