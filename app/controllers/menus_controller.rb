class MenusController < ApplicationController
	def index
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

	private

	 def menu_params
       params.require(:menu).permit(:date)
	 end
end
