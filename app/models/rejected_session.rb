class RejectedSession < Session
	has_one :rejected_by
	validates_associated :rejected_by
end
