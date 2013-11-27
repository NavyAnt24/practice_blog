class PostsController < ApplicationController

	def index
		@posts = Post.all	
	end

	def create

	end

	def new
		render 'new'
	end

	def show
		@post = Post.find(params[:id])
		@comment = Comment.new
		@tag = Tag.new
		render 'show'
	end

end
