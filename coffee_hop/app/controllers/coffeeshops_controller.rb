class CoffeeshopsController < ApplicationController

	def index	
		@coffeeshops = Coffeeshop.all
		render :index
	end

	def show
  		@coffeshop = Coffeeshop.find(params[:id])
  		render :show
  	end

end
