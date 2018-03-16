class PostsController < ApplicationController

	def create
		@post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
		redirect_to post_path(@post)
	end

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end
end

# Let's do a few things to replicate the behavior we had in the console:
#
# Create a new Post instance
#
# Pass in the parameters from the form
#
# Save the record
