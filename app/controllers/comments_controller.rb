class CommentsController < ApplicationController

	def create
		post_id = params[:post_id]
		comment_body = params[:comment][:body]

		@comment = Comment.create!(:post_id => post_id, :body => comment_body)
		redirect_to post_url(post_id)
	end
end
