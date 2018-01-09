class User < ActiveRecord::Base
	has_many :rooms
	has_many :items, through: :rooms
	
	has_secure_password #check this is correct
end