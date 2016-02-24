class UniversitiesController < ApplicationController
	def index
		@universities = University.all
		render :index
	end

	def show
		@university = University.find(params[:id])
  		render :show
	end
end
