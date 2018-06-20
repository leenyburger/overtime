class PostsController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :destroy]

	def index
		@posts = Post.posts_by current_user
	end

	def new #Renders the new form and creates a new instance of post
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id
		if @post.save
			redirect_to @post, notice: "Your post was created successfully" #Redirects to the show action
		else
			render 'new'
		end
	end

	def edit
		authorize @post
	end

	def update
		authorize @post
		if @post.update(post_params)
			redirect_to @post, notice: "Your post was edited successfully"
		else
			render :edit
		end
	end

	def show #This shows the specific post. It was created in create, but create doesn't send a specific post
		 #How do you know what the id is? This is sent in the redirect?
	end

	def destroy
		@post.delete
		redirect_to posts_path, notice: "Your post was deleted successfully"
	end

	private
	def post_params
		params.require(:post).permit(:date,:rationale, :status, :overtime_request)
	end

	def set_post
		@post = Post.find(params[:id])
	end
end
