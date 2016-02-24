class Coffeeshop < ActiveRecord::Base
	belongs_to :university
	has_many :posts
end
