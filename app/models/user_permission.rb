class UserPermission < ActiveRecord::Base
	belongs_to :user
	
	def speaker?
		speaker
	end
	def reviewer?
		reviewer
	end
	def admin?
		admin
	end
end
