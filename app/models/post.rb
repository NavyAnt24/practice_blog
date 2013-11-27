class Post < ActiveRecord::Base
	attr_accessible :body
	
	has_many :comments
	has_many :tags, through: :taggings
	has_many :taggings
end