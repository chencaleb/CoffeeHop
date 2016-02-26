class UniversitiesController < ApplicationController
	def index
		@universities = University.all
		render :index
	end

	def show
		@universities = University.find(params[:id])
  		render :show
	end
end
