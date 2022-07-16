class User < ApplicationRecord
	after_create :welcome_send

	def welcome_send
	  UserMailer.welcome_email(self).deliver_now
	end

	# Il faut ajouter les deux modules commençant par jwt
	devise :database_authenticatable, :registerable,
	:jwt_authenticatable,
	jwt_revocation_strategy: JwtDenylist
  
	has_many :comments
	has_many :posts
	has_many :likes
	has_many :disciplines

end