class PostsController < ApplicationController
	before_action :set_post, only: [:show]

	def index
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

	def show #This shows the specific post. It was created in create, but create doesn't send a specific post
		 #How do you know what the id is? This is sent in the redirect?
	end

	private
	def post_params
		params.require(:post).permit(:date,:rationale)
	end

	def set_post
		@post = Post.find(params[:id])
	end
end
