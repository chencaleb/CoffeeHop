class CoffeeshopsController < ApplicationController

	def index	
		@coffeeshops = Coffeeshop.all
		render :index
	end

	def show
		@coffeeshop = Coffeeshop.find(params[:id])
		@post = Post.new
		@avg_fullness = fullness(@coffeeshop.posts) || 0
	end

	private
	def fullness(posts)
		avg_fullnesses = posts.map { |post| post.fullness }
		avg_fullnesses.reduce(:+).to_f / avg_fullnesses.size
	end
end
