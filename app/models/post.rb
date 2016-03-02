class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :coffeeshop

	validates :fullness, :description, numericality: { greater_than_or_equal_to: 0, 
                                    less_than_or_equal_to: 100,
                                    message: 'not a valid fullness' }
end
