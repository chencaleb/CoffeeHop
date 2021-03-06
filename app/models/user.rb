class User < ActiveRecord::Base
	has_many :posts

	has_secure_password
	validates :email, uniqueness: true
	validates :username, uniqueness: true

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end
end
