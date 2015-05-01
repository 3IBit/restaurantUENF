class MenusController < ApplicationController
	before_action :set_menu, only: [:show, :edit, :update, :destroy]
	
	def index
		@menus = Menu.all
	end

	def show 
	end

	def new
		@menu = Menu.new
	end

	def edit
	end

	def create
		@menu = Menu.new(menu_params)

		if @menu.save
			flash[:notice] = "Menu has been created."
			redirect_to @menu
		else
			#nothing, yet
		end
	end

	def update

      if @menu.update(menu_params)

        flash[:notice] = "Menu has been updated."
        redirect_to @menu
      else
        flash[:alert] = "Project has not been updated."
        render 'edit'
      end
	end

	def destroy
      @menu.destroy

      flash[:notice] = 'Menu has been destroyed.'

      redirect_to menus_path
	end

	private
    
      def set_menu
      	@menu = Menu.find(params[:id])
      end

      
	  def menu_params
        params.require(:menu).permit(:date)
	  end
end
