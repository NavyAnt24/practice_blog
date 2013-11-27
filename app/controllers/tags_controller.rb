class TagsController < ApplicationController
	def create
		post_id = params[:post_id]
		tag_name = params[:tag][:name]

		@tag = Tag.where(:name => tag_name)
		if @tag.length == 0
			@tag = Tag.create!(:name => tag_name)
		else
			@tag = @tag[0]
		end

		@tagging = Tagging.create!(:post_id => post_id, :tag_id => @tag.id)

		redirect_to post_url(post_id)
	end

end
