class DinnersController < ApplicationController
	before_action :set_menu
  before_action :set_dinner, only: [:show, :edit, :update, :destroy]

	def new
		@dinner = @menu.build_dinner
	end

	def create
      @dinner = @menu.create_dinner(dinner_params)
 
      if @dinner.save
        flash[:notice] = 'Dinner has been created.'
        redirect_to [@menu,@dinner]
      else
        #nothing, yet
      end

  	end
 
    def edit
    end

    def update
      if @dinner.update(dinner_params)
        flash[:notice] = 'Dinner has been updated.'
        redirect_to [@menu, @dinner]
      else
       render action: 'edit'
      end
    end

    def destroy
      @dinner.destroy
      flash[:notice] = 'Dinner has been deleted.'

      redirect_to @menu
    end

  private

  def set_menu
    @menu = Menu.find(params[:menu_id])
  end

  def set_dinner
    @dinner = Dinner.find(params[:id])
  end

  def dinner_params
    params.require(:dinner).permit(:menu_id, :salad, :accompaniment, :protein1, :protein2, :protein3, :dessert, :juice)
  end

end
