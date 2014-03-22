class Reviewer < User
	has_and_belongs_to_many :SessionInReview
end
