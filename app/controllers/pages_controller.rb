class PagesController < ApplicationController

  def home
  	@menus = Menu.last(5)
  end

 
end
