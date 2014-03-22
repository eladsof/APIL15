class SessionInReview < Session
	has_and_belongs_to_many :reviewers
	validates :reviewer_id, presence: true
end
