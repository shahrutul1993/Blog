class User < ActiveRecord::Base
	before_save { email.downcase! }
	validates_presence_of :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates_presence_of :email, presence: true, length: { maximum: 255 },  format: { with: VALID_EMAIL_REGEX },uniqueness: { case_sensitive: false }
	validates_presence_of :password, presence: true, length: { minimum: 6 }
	has_secure_password
end
