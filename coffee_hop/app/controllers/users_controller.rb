class UsersController < ApplicationController
  def index
  	@users = User.all
  	render :index
  end

  def new
  	@user = User.new
  	render :new
  end

  def create
  	user_params = params.require(:user).permit(:email, :username, :password)
  	@user = User.create(user_params)

  	redirect_to "/users"
  end

  def show
  	@user = User.find(params[:id])
  	render :show
  end

  private

  # def user_params
  #   params.require(:user).permit(:email, :username, :password, :password_confirmation)
  # end
  #EDITED USER PARAMS
end
