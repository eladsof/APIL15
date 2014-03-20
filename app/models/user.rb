class User < ActiveRecord::Base
	has_secure_password
	
	validates :name, presence: true, length: {maximum: 50}
	validates :email, uniqueness: {case_sensitive: false}, :email => true
	validates :password, length: {minimum: 6}
end
