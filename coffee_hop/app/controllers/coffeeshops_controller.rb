class CoffeeshopsController < ApplicationController

	def index	
		@coffeeshops = Coffeeshop.all
		render :index
	end

	def show
  		@coffeeshop = Coffeeshop.find(params[:id])
  		@post = Post.new
  		render :show
  	end

end
