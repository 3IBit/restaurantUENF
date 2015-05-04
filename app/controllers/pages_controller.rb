class PagesController < ApplicationController

  def home
  	@lunches = Lunch.last(5)
  	@dinners = Dinner.last(5)
  end

 
end
