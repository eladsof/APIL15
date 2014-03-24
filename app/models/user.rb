class User < ActiveRecord::Base
	
	has_one :user_permission
	has_many :sessions, :foreign_key => 'speaker_id'
	has_secure_password
	
	validates :email, :presence => true, :email => true
	validates :password,  length: { minimum: 6}
	after_create :create_permissions
	
	def create_permissions
		user_permission = UserPermission.create!(user: self)
	end
	
	def can_submit_talk?
		self.user_permission.speaker?	
	end
	
end
