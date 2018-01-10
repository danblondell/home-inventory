class User < ActiveRecord::Base
	has_many :rooms
	has_many :items, through: :rooms
	
	has_secure_password

	validates_presence_of :username, :first_name, :email, :password
end