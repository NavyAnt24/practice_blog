namespace :db do
	# Filling the database with fake data
	task populate: :environment do
		add_posts
		add_comments
		add_tags
	end
end

def add_posts
	100.times do
		body = Faker::Lorem.sentence(word_count = 7)
		Post.create!(:body => body)
	end
end

def add_comments
	posts = Post.all
	15.times do
		comment_body = Faker::Lorem.paragraph(sentence_count = 1)
		posts.each do |post|
			post.comments.create!(:body => comment_body)
		end
	end
end

def add_tags
	posts = Post.all
	posts.each do |post|
		5.times do
			tag_name = Faker::Lorem.word
			post.tags.create!(:name => tag_name)
		end
	end
end