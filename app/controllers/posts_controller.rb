class PostsController < ApplicationController

	def index
	end

	def new #Renders the new form and creates a new instance of post 
		@post = Post.new
	end

	def create
		@post = Post.new(params.require(:post).permit(:date,:rationale))  
		if @post.save
			redirect_to @post #Redirects to the show action
		else
			render error
		end
	end

	def show #This shows the specific post. It was created in create, but create doesn't send a specific post
		@post = Post.find(params[:id]) #How do you know what the id is? This is sent in the redirect?
	end
end
