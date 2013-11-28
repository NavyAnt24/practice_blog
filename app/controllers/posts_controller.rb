class PostsController < ApplicationController

	def index
		# @posts = Post.all
		@posts = Post.paginate(page: params[:page], :per_page => 10)
	end

	def create

	end

	def new
		render 'new'
	end

	def show
		@post = Post.find(params[:id])
		@comments = @post.comments.paginate(page: params[:page], :per_page => 5)
		
		@comment = Comment.new
		@tag = Tag.new
		
		render 'show'
	end

end
