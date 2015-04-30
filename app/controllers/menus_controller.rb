class MenusController < ApplicationController
	def index
		@menus = Menu.all
	end

	def new
		@menu = Menu.new
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

	def show
      @menu = Menu.find(params[:id])
	end

	def edit
      @menu = Menu.find(params[:id])
	end

	def update
      @menu = Menu.find(params[:id])
      
      if @menu.update(menu_params)

        flash[:notice] = "Menu has been updated."
        redirect_to @menu
      else
        flash[:alert] = "Project has not been updated."
        render 'edit'
      end
	end

	private

	 def menu_params
       params.require(:menu).permit(:date)
	 end
end
