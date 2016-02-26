class PostsController < ApplicationController
	before_action :require_login

	def index
	  	@posts = Post.all
	  	render :index
	  end

	  def new
	  	@post = Post.new
	  	render :new
	  end

	  def create
	  	@post = Post.create(post_params)
	  	@fullness = @post.fullness
	  	redirect_to "/coffeeshops/#{@post.coffeeshop_id}"
	  end

	  def show
	  	@post = Post.find(params[:id])
	  	render :show
	  end

	  # def edit
	  #   @post = Post.find(params[:id])
	  # end

	  # def update
	  #   post = Post.find(params[:id])
	  #   post.update_attributes(post_params)
	  #   redirect_to post
	  # end

	  # def destroy
	  #   post = Post.find(params[:id])
	  #   post.destroy
	  #   redirect_to "/"
	  # end

private
	def post_params
		params.require(:post).permit(:description, :fullness, :user_id, :coffeeshop_id)
	end

end
