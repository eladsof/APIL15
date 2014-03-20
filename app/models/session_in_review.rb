class SessionInReview < Session
	has_many :reviewer
	validates_associated :reviewer
end
